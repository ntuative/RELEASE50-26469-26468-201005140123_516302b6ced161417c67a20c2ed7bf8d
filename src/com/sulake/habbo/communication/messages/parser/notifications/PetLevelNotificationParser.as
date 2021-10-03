package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_321:String;
      
      private var var_1912:int;
      
      private var var_2199:String;
      
      private var var_1065:int;
      
      private var var_1346:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1346;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1346 = param1.readInteger();
         var_2199 = param1.readString();
         var_1912 = param1.readInteger();
         var_321 = param1.readString();
         var_1065 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2199;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function get petType() : int
      {
         return var_1065;
      }
      
      public function get level() : int
      {
         return var_1912;
      }
   }
}
