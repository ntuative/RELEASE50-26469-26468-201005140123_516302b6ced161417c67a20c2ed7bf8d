package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1007:String = "RWOCM_CLUB_MAIN";
      
      public static const const_580:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2182:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_580);
         var_2182 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2182;
      }
   }
}
