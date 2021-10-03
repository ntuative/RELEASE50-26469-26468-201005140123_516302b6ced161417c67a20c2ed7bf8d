package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1041:Boolean;
      
      private var _name:String;
      
      private var var_2080:String;
      
      private var var_1040:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2080 = String(param1.@link);
         var_1040 = Boolean(parseInt(param1.@fliph));
         var_1041 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1040;
      }
      
      public function get flipV() : Boolean
      {
         return var_1041;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2080;
      }
   }
}
