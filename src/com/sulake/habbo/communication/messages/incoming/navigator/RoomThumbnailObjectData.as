package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1407:int;
      
      private var var_1406:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1407;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1407 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1407 = this.var_1407;
         _loc1_.var_1406 = this.var_1406;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1406 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1406;
      }
   }
}
