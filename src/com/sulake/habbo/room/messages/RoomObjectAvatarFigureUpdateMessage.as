package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2022:String;
      
      private var var_321:String;
      
      private var var_610:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_321 = param1;
         var_610 = param2;
         var_2022 = param3;
      }
      
      public function get race() : String
      {
         return var_2022;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function get gender() : String
      {
         return var_610;
      }
   }
}
