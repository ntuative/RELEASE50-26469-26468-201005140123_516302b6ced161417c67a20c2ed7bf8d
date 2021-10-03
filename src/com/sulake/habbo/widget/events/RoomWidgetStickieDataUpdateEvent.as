package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_649:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_189:String;
      
      private var var_720:String;
      
      private var var_1536:String;
      
      private var var_150:int = -1;
      
      private var var_28:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_150 = param2;
         var_1536 = param3;
         var_189 = param4;
         var_720 = param5;
         var_28 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1536;
      }
      
      public function get colorHex() : String
      {
         return var_720;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get objectId() : int
      {
         return var_150;
      }
      
      public function get controller() : Boolean
      {
         return var_28;
      }
   }
}
