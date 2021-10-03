package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_235:String = "e";
      
      public static const const_82:String = "i";
      
      public static const const_80:String = "s";
       
      
      private var var_1005:String;
      
      private var var_1196:String;
      
      private var var_1195:int;
      
      private var var_2141:int;
      
      private var var_1004:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1196 = param1.readString();
         var_2141 = param1.readInteger();
         var_1005 = param1.readString();
         var_1004 = param1.readInteger();
         var_1195 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1004;
      }
      
      public function get productType() : String
      {
         return var_1196;
      }
      
      public function get expiration() : int
      {
         return var_1195;
      }
      
      public function get furniClassId() : int
      {
         return var_2141;
      }
      
      public function get extraParam() : String
      {
         return var_1005;
      }
   }
}
