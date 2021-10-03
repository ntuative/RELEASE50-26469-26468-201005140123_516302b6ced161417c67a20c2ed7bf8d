package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1716:String;
      
      private var var_396:int;
      
      private var var_2123:String;
      
      private var var_2121:String;
      
      private var var_2124:int;
      
      private var var_2120:String;
      
      private var var_2122:int;
      
      private var var_648:Array;
      
      private var var_1103:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_648 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1103 = false;
            return;
         }
         this.var_1103 = true;
         var_2124 = int(_loc2_);
         var_2123 = param1.readString();
         var_396 = int(param1.readString());
         var_2122 = param1.readInteger();
         var_1716 = param1.readString();
         var_2121 = param1.readString();
         var_2120 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_648.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2122;
      }
      
      public function get eventName() : String
      {
         return var_1716;
      }
      
      public function get eventDescription() : String
      {
         return var_2121;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2123;
      }
      
      public function get tags() : Array
      {
         return var_648;
      }
      
      public function get creationTime() : String
      {
         return var_2120;
      }
      
      public function get exists() : Boolean
      {
         return var_1103;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2124;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_648 = null;
      }
      
      public function get flatId() : int
      {
         return var_396;
      }
   }
}
