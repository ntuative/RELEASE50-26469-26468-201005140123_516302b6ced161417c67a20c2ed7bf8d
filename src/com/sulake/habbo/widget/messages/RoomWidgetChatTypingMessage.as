package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_621:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_527:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_621);
         var_527 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_527;
      }
   }
}
