package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_599:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1760:int;
      
      private var var_1758:int;
      
      private var var_2152:Boolean;
      
      private var var_1049:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_599);
         var_1758 = param1;
         var_1760 = param2;
         _color = param3;
         var_1049 = param4;
         var_2152 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1760;
      }
      
      public function get presetNumber() : int
      {
         return var_1758;
      }
      
      public function get brightness() : int
      {
         return var_1049;
      }
      
      public function get apply() : Boolean
      {
         return var_2152;
      }
   }
}
