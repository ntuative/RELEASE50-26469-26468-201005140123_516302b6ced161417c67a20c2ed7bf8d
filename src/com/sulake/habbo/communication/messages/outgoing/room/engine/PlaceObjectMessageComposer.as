package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_150:int;
      
      private var var_227:int = 0;
      
      private var _roomId:int;
      
      private var var_87:int = 0;
      
      private var _y:int = 0;
      
      private var var_2113:int;
      
      private var var_2114:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_150 = param1;
         var_2113 = param2;
         var_2114 = param3;
         var_87 = param4;
         _y = param5;
         var_227 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_2113)
         {
            case RoomObjectCategoryEnum.const_34:
               return [var_150 + " " + var_87 + " " + _y + " " + var_227];
            case RoomObjectCategoryEnum.const_32:
               return [var_150 + " " + var_2114];
            default:
               return [];
         }
      }
   }
}
