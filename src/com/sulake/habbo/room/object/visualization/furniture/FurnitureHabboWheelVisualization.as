package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1045:int = 31;
      
      private static const const_1046:int = 32;
      
      private static const const_752:int = 10;
      
      private static const const_499:int = 20;
       
      
      private var var_578:Boolean = false;
      
      private var var_231:Array;
      
      public function FurnitureHabboWheelVisualization()
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
            var_231.push(const_1045);
            var_231.push(const_1046);
            return;
         }
         if(param1 > 0 && param1 <= const_752)
         {
            if(var_578)
            {
               var_578 = false;
               var_231 = new Array();
               var_231.push(const_752 + param1);
               var_231.push(const_499 + param1);
               var_231.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
