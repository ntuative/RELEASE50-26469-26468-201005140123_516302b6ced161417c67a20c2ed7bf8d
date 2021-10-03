package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_610:String;
      
      private var var_321:String;
      
      private var _view:OutfitView;
      
      private var var_28:HabboAvatarEditor;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_28 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_86:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.const_88:
            case "f":
            case "F":
               param3 = "null";
         }
         var_321 = param2;
         var_610 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_610;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = var_28.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_610);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_40,int(FigureData.const_697));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_40,true);
            if(_view)
            {
               _view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function dispose() : void
      {
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         var_321 = null;
         var_610 = null;
      }
   }
}
