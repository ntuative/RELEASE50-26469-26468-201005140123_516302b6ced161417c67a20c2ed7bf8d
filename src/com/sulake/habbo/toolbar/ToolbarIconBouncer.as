package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1979:Number;
      
      private var var_598:Number = 0;
      
      private var var_1978:Number;
      
      private var var_597:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1979 = param1;
         var_1978 = param2;
      }
      
      public function update() : void
      {
         var_597 += var_1978;
         var_598 += var_597;
         if(var_598 > 0)
         {
            var_598 = 0;
            var_597 = var_1979 * -1 * var_597;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_597 = param1;
         var_598 = 0;
      }
      
      public function get location() : Number
      {
         return var_598;
      }
   }
}
