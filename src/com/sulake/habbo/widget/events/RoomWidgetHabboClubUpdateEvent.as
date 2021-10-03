package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_214:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1873:Boolean = false;
      
      private var var_1870:int = 0;
      
      private var var_1872:int = 0;
      
      private var var_1625:int;
      
      private var var_1871:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_214,param6,param7);
         var_1871 = param1;
         var_1872 = param2;
         var_1870 = param3;
         var_1873 = param4;
         var_1625 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1625;
      }
      
      public function get pastPeriods() : int
      {
         return var_1870;
      }
      
      public function get periodsLeft() : int
      {
         return var_1872;
      }
      
      public function get daysLeft() : int
      {
         return var_1871;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1873;
      }
   }
}
