package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2067:Number = 0;
      
      private var var_2066:Number = 0;
      
      private var var_2065:Number = 0;
      
      private var var_2064:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2066 = param1;
         var_2065 = param2;
         var_2067 = param3;
         var_2064 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2066;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2067;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2065;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2064;
      }
   }
}
