package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1918:Number = 1;
      
      private var var_206:Number = 1;
      
      private var var_1904:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1904 = param1;
         var_206 = param2;
         var_1918 = param3;
      }
      
      public function get scale() : Number
      {
         return var_206;
      }
      
      public function get heightScale() : Number
      {
         return var_1918;
      }
   }
}
