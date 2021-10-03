package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1046:int = -1;
      
      private static const const_752:int = 20;
      
      private static const const_499:int = 9;
       
      
      private var var_578:Boolean = false;
      
      private var var_231:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_231 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_578 = true;
            var_231 = new Array();
            var_231.push(const_1046);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_578)
            {
               var_578 = false;
               var_231 = new Array();
               var_231.push(const_752);
               var_231.push(const_499 + param1);
               var_231.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
