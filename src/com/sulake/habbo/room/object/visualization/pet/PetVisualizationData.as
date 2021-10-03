package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   
   public class PetVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var _avatarRenderer:IAvatarRenderManager = null;
      
      public function PetVisualizationData()
      {
         super();
      }
      
      public function initialize(param1:XML) : Boolean
      {
         return true;
      }
      
      public function getAvatar(param1:String, param2:Number) : IAvatarImage
      {
         var _loc3_:* = null;
         if(_avatarRenderer != null)
         {
            _loc3_ = null;
            if(param2 > 48)
            {
               _loc3_ = _avatarRenderer.createPetImageFromFigure(param1,AvatarScaleType.const_56);
            }
            else
            {
               _loc3_ = _avatarRenderer.createPetImageFromFigure(param1,AvatarScaleType.SMALL);
            }
            return _loc3_;
         }
         return null;
      }
      
      public function getLayerCount(param1:String) : Number
      {
         return 0;
      }
      
      public function getAvatarRendererAsset(param1:String) : IAsset
      {
         if(_avatarRenderer == null)
         {
            return null;
         }
         return _avatarRenderer.assets.getAssetByName(param1);
      }
      
      public function set avatarRenderer(param1:IAvatarRenderManager) : void
      {
         _avatarRenderer = param1;
      }
      
      public function get avatarRenderer() : IAvatarRenderManager
      {
         return _avatarRenderer;
      }
      
      public function dispose() : void
      {
         _avatarRenderer = null;
      }
   }
}
