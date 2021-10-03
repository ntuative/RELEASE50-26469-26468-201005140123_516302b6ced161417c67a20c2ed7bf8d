package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_266:String = "RWFAM_MOVE";
      
      public static const const_583:String = "RWFUAM_ROTATE";
      
      public static const const_676:String = "RWFAM_PICKUP";
       
      
      private var var_1632:int = 0;
      
      private var var_2096:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1632 = param2;
         var_2096 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1632;
      }
      
      public function get furniCategory() : int
      {
         return var_2096;
      }
   }
}
