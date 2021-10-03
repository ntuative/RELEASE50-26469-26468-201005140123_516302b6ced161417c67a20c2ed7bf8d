package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1696:int;
      
      private var var_1789:String;
      
      private var var_1697:int;
      
      private var _disposed:Boolean;
      
      private var var_1791:int;
      
      private var var_1790:String;
      
      private var var_1302:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1790 = param1.readString();
         var_1696 = param1.readInteger();
         var_1697 = param1.readInteger();
         var_1789 = param1.readString();
         var_1791 = param1.readInteger();
         var_1302 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1791;
      }
      
      public function get worldId() : int
      {
         return var_1697;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1790;
      }
      
      public function get unitPort() : int
      {
         return var_1696;
      }
      
      public function get castLibs() : String
      {
         return var_1789;
      }
      
      public function get nodeId() : int
      {
         return var_1302;
      }
   }
}
