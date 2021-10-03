package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_924:String = "price_type_none";
      
      public static const const_451:String = "pricing_model_multi";
      
      public static const const_290:String = "price_type_credits";
      
      public static const const_369:String = "price_type_credits_and_pixels";
      
      public static const const_412:String = "pricing_model_bundle";
      
      public static const const_378:String = "pricing_model_single";
      
      public static const const_616:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1354:String = "pricing_model_unknown";
      
      public static const const_391:String = "price_type_pixels";
       
      
      private var var_1814:int;
      
      private var var_832:int;
      
      private var _offerId:int;
      
      private var var_833:int;
      
      private var var_399:String;
      
      private var var_574:String;
      
      private var var_441:ICatalogPage;
      
      private var var_398:IProductContainer;
      
      private var var_1208:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1208 = param1.localizationId;
         var_832 = param1.priceInCredits;
         var_833 = param1.priceInPixels;
         var_441 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_399;
      }
      
      public function get page() : ICatalogPage
      {
         return var_441;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1814 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_398;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_833;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1208 = "";
         var_832 = 0;
         var_833 = 0;
         var_441 = null;
         if(var_398 != null)
         {
            var_398.dispose();
            var_398 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1814;
      }
      
      public function get priceInCredits() : int
      {
         return var_832;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_399 = const_378;
            }
            else
            {
               var_399 = const_451;
            }
         }
         else if(param1.length > 1)
         {
            var_399 = const_412;
         }
         else
         {
            var_399 = const_1354;
         }
      }
      
      public function get priceType() : String
      {
         return var_574;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_399)
         {
            case const_378:
               var_398 = new SingleProductContainer(this,param1);
               break;
            case const_451:
               var_398 = new MultiProductContainer(this,param1);
               break;
            case const_412:
               var_398 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_399);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1208;
      }
      
      private function analyzePriceType() : void
      {
         if(var_832 > 0 && var_833 > 0)
         {
            var_574 = const_369;
         }
         else if(var_832 > 0)
         {
            var_574 = const_290;
         }
         else if(var_833 > 0)
         {
            var_574 = const_391;
         }
         else
         {
            var_574 = const_924;
         }
      }
   }
}
