package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomThumbnailUpdateResultMessageParser implements IMessageParser
   {
       
      
      private var var_396:int;
      
      private var var_1131:int;
      
      public function RoomThumbnailUpdateResultMessageParser()
      {
         super();
      }
      
      public function get resultCode() : int
      {
         return var_1131;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_396 = param1.readInteger();
         this.var_1131 = param1.readInteger();
         return true;
      }
      
      public function get flatId() : int
      {
         return var_396;
      }
   }
}
