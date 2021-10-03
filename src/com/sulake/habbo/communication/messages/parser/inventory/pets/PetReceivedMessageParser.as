package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1038:PetData;
      
      private var var_1521:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1521 = param1.readBoolean();
         var_1038 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1521 + ", " + var_1038.id + ", " + var_1038.name + ", " + pet.figure + ", " + var_1038.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1521;
      }
      
      public function get pet() : PetData
      {
         return var_1038;
      }
   }
}
