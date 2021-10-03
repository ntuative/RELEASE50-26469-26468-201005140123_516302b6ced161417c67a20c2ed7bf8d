package com.sulake.core.communication.connection
{
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.encryption.IEncryption;
   import com.sulake.core.communication.messages.IMessageClassManager;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.communication.messages.MessageClassManager;
   import com.sulake.core.communication.messages.MessageDataWrapper;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.ErrorReportStorage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.Socket;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class SocketConnection extends EventDispatcher implements IConnection, IDisposable
   {
      
      public static const const_1189:int = 10000;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1348:Boolean = false;
      
      private var var_72:Socket;
      
      private var var_917:IEncryption;
      
      private var var_754:int;
      
      private var var_372:ByteArray;
      
      private var _id:String;
      
      private var var_300:ICoreCommunicationManager;
      
      private var var_371:Timer;
      
      private var var_373:IConnectionStateListener;
      
      private var var_627:IProtocol;
      
      private var var_918:IMessageClassManager;
      
      public function SocketConnection(param1:String, param2:ICoreCommunicationManager, param3:IConnectionStateListener)
      {
         super();
         _id = param1;
         var_300 = param2;
         var_372 = new ByteArray();
         var_918 = new MessageClassManager();
         var_72 = new Socket();
         var_371 = new Timer(const_1189,1);
         var_371.addEventListener(TimerEvent.TIMER,onTimeOutTimer);
         var_72.addEventListener(Event.CONNECT,onConnect);
         var_72.addEventListener(Event.COMPLETE,onComplete);
         var_72.addEventListener(Event.CLOSE,onClose);
         var_72.addEventListener(ProgressEvent.SOCKET_DATA,onRead);
         var_72.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         var_72.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_373 = param3;
      }
      
      private function onTimeOutTimer(param1:TimerEvent) : void
      {
         var_371.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","TimeOut in " + (getTimer() - var_754));
         var _loc2_:IOErrorEvent = new IOErrorEvent(IOErrorEvent.IO_ERROR);
         _loc2_.text = "Socket Timeout (undefined ms). Possible Firewall.";
         dispatchEvent(_loc2_);
      }
      
      public function setEncryption(param1:IEncryption) : void
      {
         var_917 = param1;
      }
      
      public function get connected() : Boolean
      {
         return var_72.connected;
      }
      
      private function onConnect(param1:Event) : void
      {
         var_371.stop();
         var_1348 = true;
         ErrorReportStorage.addDebugData("ConnectionTimer","Connected in " + (getTimer() - var_754));
         dispatchEvent(param1);
      }
      
      public function send(param1:IMessageComposer, param2:int = -1) : Boolean
      {
         if(this.disposed)
         {
            return false;
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:int = this.var_918.getMessageComposerID(param1);
         if(_loc4_ < 0)
         {
            return false;
         }
         var _loc5_:ByteArray = var_627.encoder.encode(_loc4_,param1.getMessageArray(),param2);
         if(var_373)
         {
            var_373.messageSent(String(_loc4_),_loc5_.toString());
         }
         if(var_917 != null)
         {
            _loc3_ = var_917.encipher(_loc5_);
         }
         else
         {
            _loc3_ = _loc5_;
         }
         if(false)
         {
            var_72.writeBytes(_loc3_);
            var_72.flush();
            return true;
         }
         return false;
      }
      
      public function init(param1:String, param2:uint = 0) : Boolean
      {
         if(var_373)
         {
            var_373.connectionInit(param1,param2);
         }
         Security.loadPolicyFile("xmlsocket://" + param1 + ":" + param2);
         var_371.start();
         var_754 = getTimer();
         var_72.connect(param1,param2);
         return true;
      }
      
      private function onRead(param1:ProgressEvent) : void
      {
         if(!var_72)
         {
            return;
         }
         while(false)
         {
            var_372.writeByte(var_72.readUnsignedByte());
         }
      }
      
      public function get protocol() : IProtocol
      {
         return var_627;
      }
      
      public function addMessageEvent(param1:IMessageEvent) : void
      {
         var_300.addConnectionMessageEvent(_id,param1);
      }
      
      public function dispose() : void
      {
         _disposed = true;
         if(var_72)
         {
            var_72.removeEventListener(Event.CONNECT,onConnect);
            var_72.removeEventListener(Event.COMPLETE,onComplete);
            var_72.removeEventListener(Event.CLOSE,onClose);
            var_72.removeEventListener(ProgressEvent.SOCKET_DATA,onRead);
            var_72.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            var_72.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            if(var_1348)
            {
               var_72.close();
            }
         }
         var_72 = null;
         var_372 = null;
         var_373 = null;
         var_917 = null;
         var_627 = null;
         _id = null;
         var_918 = null;
         var_300 = null;
         var_373 = null;
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var_371.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","SecurityError in " + (getTimer() - var_754));
         dispatchEvent(param1);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerMessageClasses(param1:IMessageConfiguration) : void
      {
         var_918.registerMessages(param1);
      }
      
      public function set protocol(param1:IProtocol) : void
      {
         var_627 = param1;
      }
      
      private function onComplete(param1:Event) : void
      {
         var_371.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","Completed in " + (getTimer() - var_754));
         dispatchEvent(param1);
      }
      
      public function processReceivedData() : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:Boolean = false;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         if(disposed)
         {
            return;
         }
         var _loc1_:Array = new Array();
         var _loc2_:uint = var_627.getMessages(var_372,_loc1_);
         var _loc3_:Number = new Date().getTime();
         for each(_loc4_ in _loc1_)
         {
            _loc5_ = _loc4_[0] as int;
            _loc6_ = _loc4_[1] as ByteArray;
            if(var_373)
            {
               var_373.messageReceived(String(_loc5_),_loc6_.toString());
            }
            _loc7_ = var_918.getMessageEventClasses(_loc5_);
            _loc8_ = new Array();
            for each(_loc9_ in _loc7_)
            {
               _loc13_ = var_300.getMessageEvents(this,_loc9_);
               _loc8_ = _loc8_.concat(_loc13_);
            }
            if(_loc8_.length == 0)
            {
            }
            _loc10_ = null;
            _loc11_ = null;
            for each(_loc12_ in _loc8_)
            {
               _loc14_ = _loc12_.parserClass;
               if(_loc14_ != null)
               {
                  _loc15_ = false;
                  if(_loc14_ != _loc11_)
                  {
                     _loc16_ = new ByteArray();
                     _loc16_.writeBytes(_loc6_);
                     _loc16_.position = _loc6_.position;
                     _loc17_ = new MessageDataWrapper(_loc16_,protocol.decoder);
                     _loc10_ = var_300.getMessageParser(_loc14_);
                     if(_loc10_.flush())
                     {
                        if(_loc10_.parse(_loc17_))
                        {
                           _loc11_ = _loc14_;
                           _loc15_ = true;
                        }
                     }
                  }
                  else
                  {
                     _loc15_ = true;
                  }
                  if(_loc15_)
                  {
                     _loc12_.connection = this;
                     _loc12_.parser = _loc10_;
                     _loc12_.callback.call(null,_loc12_);
                  }
                  else
                  {
                     _loc11_ = null;
                     _loc10_ = null;
                  }
               }
            }
         }
         if(_loc2_ == var_372.length)
         {
            var_372 = new ByteArray();
         }
         else if(_loc2_ > 0)
         {
            _loc18_ = new ByteArray();
            _loc18_.writeBytes(var_372,_loc2_);
            var_372 = _loc18_;
         }
      }
      
      public function set timeout(param1:int) : void
      {
         var_371.delay = param1;
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var_371.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","IOError in " + (getTimer() - var_754));
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         dispatchEvent(param1);
      }
      
      private function onClose(param1:Event) : void
      {
         var_371.stop();
         var_1348 = false;
         ErrorReportStorage.addDebugData("ConnectionTimer","Closed in " + (getTimer() - var_754));
         dispatchEvent(param1);
      }
      
      override public function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ += "Socket Connection: \n";
         _loc1_ += "Protocol Encoder: undefined\n";
         _loc1_ += "Protocol Decoder: undefined\n";
         return _loc1_ + ("Encryption: " + var_917 + "\n");
      }
   }
}
