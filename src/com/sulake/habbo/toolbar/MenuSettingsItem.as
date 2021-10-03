package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1635:Array;
      
      private var var_1634:String;
      
      private var var_1636:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1634 = param1;
         var_1635 = param2;
         var_1636 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1634;
      }
      
      public function get yieldList() : Array
      {
         return var_1635;
      }
      
      public function get method_2() : Boolean
      {
         return var_1636;
      }
   }
}
