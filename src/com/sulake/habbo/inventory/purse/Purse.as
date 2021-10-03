package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2087:Boolean = false;
      
      private var var_2086:int = 0;
      
      private var var_1531:int = 0;
      
      private var var_2088:int = 0;
      
      private var var_2019:Boolean = false;
      
      private var var_1481:int = 0;
      
      private var var_1530:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1481 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2086;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2087;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2087 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2019;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2086 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1531 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1481;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2019 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2088 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1531;
      }
      
      public function get pixelBalance() : int
      {
         return var_2088;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1530 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1530;
      }
   }
}
