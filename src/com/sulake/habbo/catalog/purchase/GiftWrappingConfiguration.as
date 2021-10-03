package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_560:Array;
      
      private var var_1134:int;
      
      private var var_1410:Array;
      
      private var var_559:Array;
      
      private var var_1301:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1301 = _loc2_.isWrappingEnabled;
         var_1134 = _loc2_.wrappingPrice;
         var_1410 = _loc2_.stuffTypes;
         var_559 = _loc2_.boxTypes;
         var_560 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_560;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1410;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function get boxTypes() : Array
      {
         return var_559;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1301;
      }
   }
}
