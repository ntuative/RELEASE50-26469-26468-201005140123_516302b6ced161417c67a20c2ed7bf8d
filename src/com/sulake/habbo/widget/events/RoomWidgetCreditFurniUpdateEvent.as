package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_632:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_150:int;
      
      private var var_1962:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_1962 = param3;
         var_150 = param2;
      }
      
      public function get creditValue() : Number
      {
         return var_1962;
      }
      
      public function get objectId() : int
      {
         return var_150;
      }
   }
}
