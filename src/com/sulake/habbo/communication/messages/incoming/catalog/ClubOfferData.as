package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2104:int;
      
      private var var_1134:int;
      
      private var var_2106:int;
      
      private var _offerId:int;
      
      private var var_2107:int;
      
      private var var_2100:int;
      
      private var var_2103:Boolean;
      
      private var var_2102:int;
      
      private var var_2105:Boolean;
      
      private var var_1351:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1351 = param1.readString();
         var_1134 = param1.readInteger();
         var_2105 = param1.readBoolean();
         var_2103 = param1.readBoolean();
         var_2106 = param1.readInteger();
         var_2102 = param1.readInteger();
         var_2107 = param1.readInteger();
         var_2104 = param1.readInteger();
         var_2100 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2107;
      }
      
      public function get month() : int
      {
         return var_2104;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2106;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2102;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2105;
      }
      
      public function get day() : int
      {
         return var_2100;
      }
      
      public function get vip() : Boolean
      {
         return var_2103;
      }
      
      public function get productCode() : String
      {
         return var_1351;
      }
   }
}
