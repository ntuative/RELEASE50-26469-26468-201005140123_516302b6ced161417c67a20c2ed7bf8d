package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var include:int;
      
      private var var_1158:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         include = param1;
         var_1158 = param2;
      }
      
      public function get itemType() : int
      {
         return include;
      }
      
      public function get itemName() : String
      {
         return var_1158;
      }
   }
}
