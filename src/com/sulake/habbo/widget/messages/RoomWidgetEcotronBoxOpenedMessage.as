package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1329:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1325:int;
      
      private var include:String;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         include = param2;
         var_1325 = param3;
      }
      
      public function get classId() : int
      {
         return var_1325;
      }
      
      public function get itemType() : String
      {
         return include;
      }
   }
}
