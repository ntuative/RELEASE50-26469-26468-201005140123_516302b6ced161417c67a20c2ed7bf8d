package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_466:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_365:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_83:String = "RWPDUE_CONTENTS";
      
      public static const const_442:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_402:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_64:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_189:String;
      
      private var var_1902:BitmapData;
      
      private var var_150:int = -1;
      
      private var var_28:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_150 = param2;
         var_189 = param3;
         var_28 = param4;
         var_1902 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1902;
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
