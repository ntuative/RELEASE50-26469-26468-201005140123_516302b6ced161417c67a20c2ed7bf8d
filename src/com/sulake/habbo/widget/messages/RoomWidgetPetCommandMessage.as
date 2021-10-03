package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_541:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_606:String = "RWPCM_PET_COMMAND";
       
      
      private var var_171:String;
      
      private var var_1346:int = 0;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         var_1346 = param2;
         var_171 = param3;
      }
      
      public function get value() : String
      {
         return var_171;
      }
      
      public function get petId() : int
      {
         return var_1346;
      }
   }
}
