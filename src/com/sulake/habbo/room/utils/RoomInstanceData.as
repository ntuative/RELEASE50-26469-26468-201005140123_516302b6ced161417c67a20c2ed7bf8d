package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_858:LegacyWallGeometry = null;
      
      private var var_591:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_590:TileHeightMap = null;
      
      private var var_1904:String = null;
      
      private var _roomId:int = 0;
      
      private var var_589:SelectedRoomObjectData = null;
      
      private var var_859:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_858 = new LegacyWallGeometry();
         var_859 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_591 != null)
         {
            var_591.dispose();
         }
         var_591 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_590 != null)
         {
            var_590.dispose();
         }
         var_590 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1904 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_858;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_589;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_859;
      }
      
      public function dispose() : void
      {
         if(var_590 != null)
         {
            var_590.dispose();
            var_590 = null;
         }
         if(var_858 != null)
         {
            var_858.dispose();
            var_858 = null;
         }
         if(var_859 != null)
         {
            var_859.dispose();
            var_859 = null;
         }
         if(var_591 != null)
         {
            var_591.dispose();
            var_591 = null;
         }
         if(var_589 != null)
         {
            var_589.dispose();
            var_589 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_590;
      }
      
      public function get worldType() : String
      {
         return var_1904;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_589 != null)
         {
            var_589.dispose();
         }
         var_589 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_591;
      }
   }
}
