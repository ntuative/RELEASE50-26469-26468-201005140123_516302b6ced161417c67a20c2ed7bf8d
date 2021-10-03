package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2020:int = 0;
      
      private var var_1531:int = 0;
      
      private var var_2019:Boolean = false;
      
      private var var_2021:int = 0;
      
      private var var_2017:int = 0;
      
      private var var_1530:int = 0;
      
      private var var_2018:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1531;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1531 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2019 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2018 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1531 > 0 || var_1530 > 0;
      }
      
      public function get credits() : int
      {
         return var_2021;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2017 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1530;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2019;
      }
      
      public function get pastClubDays() : int
      {
         return var_2018;
      }
      
      public function get pastVipDays() : int
      {
         return var_2017;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2020 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2020;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1530 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2021 = param1;
      }
   }
}
