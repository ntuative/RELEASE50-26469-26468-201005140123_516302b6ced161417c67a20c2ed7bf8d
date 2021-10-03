package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_2104:int;
      
      private var var_2101:Boolean = false;
      
      private var var_2106:int;
      
      private var var_2107:int;
      
      private var var_2102:int;
      
      private var var_1351:String;
      
      private var var_1134:int;
      
      private var _offerId:int;
      
      private var var_2100:int;
      
      private var var_2103:Boolean;
      
      private var var_2105:Boolean;
      
      private var var_441:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1351 = param2;
         var_1134 = param3;
         var_2105 = param4;
         var_2103 = param5;
         var_2106 = param6;
         var_2102 = param7;
         var_2107 = param8;
         var_2104 = param9;
         var_2100 = param10;
      }
      
      public function get month() : int
      {
         return var_2104;
      }
      
      public function get page() : ICatalogPage
      {
         return var_441;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_2103;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_441 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_290;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2105;
      }
      
      public function get localizationId() : String
      {
         return var_1351;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2102;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2101;
      }
      
      public function get day() : int
      {
         return var_2100;
      }
      
      public function get year() : int
      {
         return var_2107;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2101 = param1;
      }
      
      public function get periods() : int
      {
         return var_2106;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1134;
      }
      
      public function get productCode() : String
      {
         return var_1351;
      }
   }
}
