package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_68:String = "RWDSUE_DIMMER_STATE";
       
      
      private var var_1048:int;
      
      private var _color:uint;
      
      private var var_1049:int;
      
      private var var_1822:int;
      
      private var var_34:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_68,param6,param7);
         var_34 = param1;
         var_1822 = param2;
         var_1048 = param3;
         _color = param4;
         var_1049 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_1049;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1048;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get presetId() : int
      {
         return var_1822;
      }
   }
}