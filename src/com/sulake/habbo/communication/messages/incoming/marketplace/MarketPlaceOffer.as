package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1134:int;
      
      private var var_1628:int = -1;
      
      private var var_165:int;
      
      private var var_1630:int;
      
      private var var_1629:int;
      
      private var _offerId:int;
      
      private var var_1133:int;
      
      private var var_1632:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1632 = param2;
         var_1629 = param3;
         var_1134 = param4;
         var_165 = param5;
         var_1628 = param6;
         var_1630 = param7;
         var_1133 = param8;
      }
      
      public function get status() : int
      {
         return var_165;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1628;
      }
      
      public function get offerCount() : int
      {
         return var_1133;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1629;
      }
      
      public function get averagePrice() : int
      {
         return var_1630;
      }
      
      public function get furniId() : int
      {
         return var_1632;
      }
   }
}
