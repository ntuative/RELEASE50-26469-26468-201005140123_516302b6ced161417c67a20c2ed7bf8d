package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_412:FloorRasterizer;
      
      private var var_835:Boolean = false;
      
      private var var_586:PlaneMaskManager;
      
      private var var_410:WallRasterizer;
      
      private var var_585:WallAdRasterizer;
      
      private var var_411:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_410 = new WallRasterizer();
         var_412 = new FloorRasterizer();
         var_585 = new WallAdRasterizer();
         var_411 = new LandscapeRasterizer();
         var_586 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_410;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_585;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_412;
      }
      
      public function get initialized() : Boolean
      {
         return var_835;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_586;
      }
      
      public function dispose() : void
      {
         if(var_410 != null)
         {
            var_410.dispose();
            var_410 = null;
         }
         if(var_412 != null)
         {
            var_412.dispose();
            var_412 = null;
         }
         if(var_585 != null)
         {
            var_585.dispose();
            var_585 = null;
         }
         if(var_411 != null)
         {
            var_411.dispose();
            var_411 = null;
         }
         if(var_586 != null)
         {
            var_586.dispose();
            var_586 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_410.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_412.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_585.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_411.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_586.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_410 != null)
         {
            var_410.clearCache();
         }
         if(var_412 != null)
         {
            var_412.clearCache();
         }
         if(var_411 != null)
         {
            var_411.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_411;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_835)
         {
            return;
         }
         var_410.initializeAssetCollection(param1);
         var_412.initializeAssetCollection(param1);
         var_585.initializeAssetCollection(param1);
         var_411.initializeAssetCollection(param1);
         var_586.initializeAssetCollection(param1);
         var_835 = true;
      }
   }
}
