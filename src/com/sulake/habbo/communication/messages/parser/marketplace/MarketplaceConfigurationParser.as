package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1813:int;
      
      private var var_1456:int;
      
      private var var_1812:int;
      
      private var var_1810:int;
      
      private var var_1808:int;
      
      private var var_1457:int;
      
      private var var_1809:int;
      
      private var var_1301:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1813;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1456;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1809;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1810;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1808;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1457;
      }
      
      public function get commission() : int
      {
         return var_1812;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1301 = param1.readBoolean();
         var_1812 = param1.readInteger();
         var_1456 = param1.readInteger();
         var_1457 = param1.readInteger();
         var_1810 = param1.readInteger();
         var_1813 = param1.readInteger();
         var_1808 = param1.readInteger();
         var_1809 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1301;
      }
   }
}
