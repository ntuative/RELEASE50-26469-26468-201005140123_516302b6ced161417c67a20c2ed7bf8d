package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2177:Date;
      
      private var var_1343:Boolean = false;
      
      private var _type:int;
      
      private var var_383:BitmapData;
      
      private var var_264:Boolean = false;
      
      private var var_1250:int;
      
      private var var_625:int = 1;
      
      private var var_1088:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_383;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_625;
         if(var_625 < 0)
         {
            var_625 = 0;
         }
         var_1088 = var_1250;
         var_264 = false;
         var_1343 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1088 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_264;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_383 = param1;
      }
      
      public function get duration() : int
      {
         return var_1250;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1343;
      }
      
      public function get effectsInInventory() : int
      {
         return var_625;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_383;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_264)
         {
            var_2177 = new Date();
         }
         var_264 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_625 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_264)
         {
            _loc1_ = var_1088 - (new Date().valueOf() - var_2177.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1088;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1343 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1250 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
