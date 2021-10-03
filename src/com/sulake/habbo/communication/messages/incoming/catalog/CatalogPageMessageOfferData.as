package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_846:Array;
      
      private var var_832:int;
      
      private var var_1208:String;
      
      private var _offerId:int;
      
      private var var_833:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1208 = param1.readString();
         var_832 = param1.readInteger();
         var_833 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_846 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_846.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_846;
      }
      
      public function get priceInCredits() : int
      {
         return var_832;
      }
      
      public function get localizationId() : String
      {
         return var_1208;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_833;
      }
   }
}
