package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1861:int;
      
      private var var_1221:PetData;
      
      private var var_1860:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1861;
      }
      
      public function get petData() : PetData
      {
         return var_1221;
      }
      
      public function flush() : Boolean
      {
         var_1221 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1860;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1861 = param1.readInteger();
         var_1860 = param1.readInteger();
         var_1221 = new PetData(param1);
         return true;
      }
   }
}
