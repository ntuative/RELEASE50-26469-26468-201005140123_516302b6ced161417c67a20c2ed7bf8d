package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_375:Boolean;
      
      private var var_189:String;
      
      private var var_1264:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_189 = param1;
         var_1264 = param2;
         var_375 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1264;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_375 = param1;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get visible() : Boolean
      {
         return var_375;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1264 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_189 = param1;
      }
   }
}
