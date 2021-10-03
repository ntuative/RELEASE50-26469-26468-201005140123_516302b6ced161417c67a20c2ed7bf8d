package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1540:Array;
      
      private var var_1630:int;
      
      private var var_1730:int;
      
      private var var_1731:int;
      
      private var var_1733:int;
      
      private var _dayOffsets:Array;
      
      private var var_1732:int;
      
      private var var_1541:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1730;
      }
      
      public function get historyLength() : int
      {
         return var_1733;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1731;
      }
      
      public function get offerCount() : int
      {
         return var_1732;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1541;
      }
      
      public function get averagePrice() : int
      {
         return var_1630;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1630 = param1.readInteger();
         var_1732 = param1.readInteger();
         var_1733 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1540 = [];
         var_1541 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1540.push(param1.readInteger());
            var_1541.push(param1.readInteger());
            _loc3_++;
         }
         var_1731 = param1.readInteger();
         var_1730 = param1.readInteger();
         return true;
      }
   }
}
