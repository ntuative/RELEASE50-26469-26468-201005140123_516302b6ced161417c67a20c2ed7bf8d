package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_868:String = "inventory_badges";
      
      public static const const_1167:String = "inventory_clothes";
      
      public static const const_1203:String = "inventory_furniture";
      
      public static const const_659:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_886:String = "inventory_effects";
       
      
      private var var_2150:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_659);
         var_2150 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2150;
      }
   }
}
