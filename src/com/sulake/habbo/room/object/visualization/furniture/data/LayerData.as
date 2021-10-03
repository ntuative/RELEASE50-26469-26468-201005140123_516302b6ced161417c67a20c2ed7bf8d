package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_399:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_489:int = 0;
      
      public static const const_863:int = 2;
      
      public static const const_875:int = 1;
      
      public static const const_608:Boolean = false;
      
      public static const const_680:String = "";
      
      public static const const_422:int = 0;
      
      public static const const_385:int = 0;
      
      public static const const_380:int = 0;
       
      
      private var var_1679:int = 0;
      
      private var var_1662:String = "";
      
      private var var_1598:int = 0;
      
      private var var_1682:int = 0;
      
      private var var_1678:Number = 0;
      
      private var var_1681:int = 255;
      
      private var var_1680:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1679;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1598 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1678;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1682 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1679 = param1;
      }
      
      public function get tag() : String
      {
         return var_1662;
      }
      
      public function get alpha() : int
      {
         return var_1681;
      }
      
      public function get ink() : int
      {
         return var_1598;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1678 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1682;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1680 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1680;
      }
      
      public function set tag(param1:String) : void
      {
         var_1662 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1681 = param1;
      }
   }
}
