package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var include:String;
      
      private var var_1325:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function PresentOpenedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         include = param1.readString();
         var_1325 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         include = "";
         var_1325 = 0;
         return true;
      }
      
      public function get itemType() : String
      {
         return include;
      }
      
      public function get classId() : int
      {
         return var_1325;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
   }
}
