package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1132:int = 1;
      
      private static const const_1046:int = 3;
      
      private static const const_1131:int = 2;
      
      private static const const_1133:int = 15;
       
      
      private var var_924:int;
      
      private var var_231:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_231 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1131)
         {
            var_231 = new Array();
            var_231.push(const_1132);
            var_924 = const_1133;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_924 > 0)
         {
            --var_924;
         }
         if(var_924 == 0)
         {
            if(false)
            {
               super.setAnimation(var_231.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
