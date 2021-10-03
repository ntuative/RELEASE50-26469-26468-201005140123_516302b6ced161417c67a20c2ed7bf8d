package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_563:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1662:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_563);
         var_1662 = param1;
      }
      
      public function get tag() : String
      {
         return var_1662;
      }
   }
}
