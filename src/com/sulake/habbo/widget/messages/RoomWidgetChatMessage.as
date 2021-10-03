package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_121:int = 0;
      
      public static const const_124:int = 1;
      
      public static const const_103:int = 2;
      
      public static const const_708:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1339:int = 0;
      
      private var var_1748:String = "";
      
      private var var_189:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_189 = param2;
         var_1339 = param3;
         var_1748 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1748;
      }
      
      public function get chatType() : int
      {
         return var_1339;
      }
      
      public function get text() : String
      {
         return var_189;
      }
   }
}
