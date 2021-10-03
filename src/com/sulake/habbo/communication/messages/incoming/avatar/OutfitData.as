package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1670:String;
      
      private var var_610:String;
      
      private var var_1554:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1554 = param1.readInteger();
         var_1670 = param1.readString();
         var_610 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_610;
      }
      
      public function get figureString() : String
      {
         return var_1670;
      }
      
      public function get slotId() : int
      {
         return var_1554;
      }
   }
}
