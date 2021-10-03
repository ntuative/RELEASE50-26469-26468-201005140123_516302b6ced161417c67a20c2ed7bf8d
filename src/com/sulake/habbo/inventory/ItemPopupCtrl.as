package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1062:int = 100;
      
      private static const const_1061:int = 200;
      
      private static const const_1060:int = 180;
      
      public static const const_913:int = 1;
      
      public static const const_384:int = 2;
      
      private static const const_1059:int = 250;
      
      private static const const_767:int = 5;
       
      
      private var var_580:BitmapData;
      
      private var var_309:Timer;
      
      private var var_9:IWindowContainer;
      
      private var var_697:BitmapData;
      
      private var var_308:Timer;
      
      private var var_70:IWindowContainer;
      
      private var var_1476:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_308 = new Timer(const_1059,1);
         var_309 = new Timer(const_1062,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_70 = param1;
         var_70.visible = false;
         _assets = param2;
         var_308.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_309.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_697 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_580 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_70.visible = false;
         var_309.reset();
         var_308.reset();
         if(var_9 != null)
         {
            var_9.removeChild(var_70);
         }
      }
      
      public function hideDelayed() : void
      {
         var_309.reset();
         var_308.reset();
         var_309.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_308 != null)
         {
            var_308.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_308.stop();
            var_308 = null;
         }
         if(var_309 != null)
         {
            var_309.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_309.stop();
            var_309 = null;
         }
         _assets = null;
         var_70 = null;
         var_9 = null;
         var_580 = null;
         var_697 = null;
      }
      
      public function showDelayed() : void
      {
         var_309.reset();
         var_308.reset();
         var_308.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_70 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_9 != null)
         {
            var_9.removeChild(var_70);
         }
         var_9 = param1;
         var_1476 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_70.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_70.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1060,param3.width),Math.min(const_1061,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_70.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_70 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_70.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_913:
               _loc2_.bitmap = var_697.clone();
               _loc2_.width = var_697.width;
               _loc2_.height = var_697.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_384:
               _loc2_.bitmap = var_580.clone();
               _loc2_.width = var_580.width;
               _loc2_.height = var_580.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_309.reset();
         var_308.reset();
         if(var_9 == null)
         {
            return;
         }
         var_70.visible = true;
         var_9.addChild(var_70);
         refreshArrow(var_1476);
         switch(var_1476)
         {
            case const_913:
               var_70.x = 0 - const_767;
               break;
            case const_384:
               var_70.x = var_9.width + const_767;
         }
         var_70.y = (0 - 0) / 2;
      }
   }
}
