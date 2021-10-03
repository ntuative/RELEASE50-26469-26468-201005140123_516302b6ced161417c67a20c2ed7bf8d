package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1919:Class;
      
      private var var_1921:Class;
      
      private var var_1920:String;
      
      private var var_1241:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1920 = param1;
         var_1921 = param2;
         var_1919 = param3;
         if(rest == null)
         {
            var_1241 = new Array();
         }
         else
         {
            var_1241 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1919;
      }
      
      public function get assetClass() : Class
      {
         return var_1921;
      }
      
      public function get mimeType() : String
      {
         return var_1920;
      }
      
      public function get fileTypes() : Array
      {
         return var_1241;
      }
   }
}
