package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1540:Array;
      
      private var var_1630:int;
      
      private var var_1730:int;
      
      private var var_1733:int;
      
      private var var_1731:int;
      
      private var _dayOffsets:Array;
      
      private var var_1732:int;
      
      private var var_1541:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1540;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1540 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1730;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1541 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1630 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1733;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1731;
      }
      
      public function get offerCount() : int
      {
         return var_1732;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1732 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1541;
      }
      
      public function get averagePrice() : int
      {
         return var_1630;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1731 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1733 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1730 = param1;
      }
   }
}
