package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_539:ToolbarIconGroup;
      
      private var var_1103:Boolean = false;
      
      private var var_2248:String;
      
      private var var_899:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1104:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_34:String = "-1";
      
      private var var_100:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_764:String;
      
      private var var_2232:int;
      
      private var var_765:Timer;
      
      private var var_1599:Array;
      
      private var var_1105:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2346:Array;
      
      private var var_285:ToolbarBarMenuAnimator;
      
      private var var_451:ToolbarIconAnimator;
      
      private var var_630:Array;
      
      private var var_934:Array;
      
      private var var_933:String = "-1";
      
      private var var_2405:Boolean = true;
      
      private var var_1102:Array;
      
      private var var_1368:Timer;
      
      private var var_2249:int;
      
      private var var_87:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_630 = new Array();
         var_934 = new Array();
         var_2346 = new Array();
         var_1105 = new ToolbarIconBouncer(0.8,1);
         super();
         var_539 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_764 = param4;
         _events = param5;
         var_285 = param6;
         var_1368 = new Timer(40,40);
         var_1368.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_100 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_483,HabboWindowStyle.const_43,HabboWindowParam.const_44,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_100.background = true;
         var_100.mouseTreshold = 0;
         var_100.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_43,HabboWindowParam.const_43,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_100.addChild(_window);
         _window.addEventListener(WindowEvent.const_48,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1599[var_1102.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_2249;
      }
      
      public function get iconId() : String
      {
         return var_764;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_899 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_34 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_100 == null || _window == null)
         {
            return;
         }
         var_100.width = _window.width;
         var_100.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_87 = (0 - 0) / 2;
            _y = var_899 + (0 - 0) / 2;
         }
         else
         {
            var_87 = var_899 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_100.x = var_87;
         var_100.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_100 != null)
         {
            var_100.dispose();
            var_100 = null;
         }
         var_630 = null;
         var_934 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_285 = null;
         var_451 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_630.indexOf(param1) < 0)
         {
            var_630.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_934.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1103)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_285)
               {
                  var_285.method_4(var_764,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_62);
                  _loc4_.iconId = var_764;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1104;
                  }
               }
               break;
            case WindowMouseEvent.const_33:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_933;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_630.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_934[var_630.indexOf(param1)];
         return _loc2_.method_2;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1103 = param1;
         if(var_100 != null)
         {
            var_100.visible = var_1103;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_100 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_100.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_100.toolTipCaption = "${toolbar.icon.tooltip." + var_2248.toLowerCase() + "}";
         }
         var_100.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_285 != null)
         {
            var_285.animateWindowIn(this,param1,param2,var_764,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_451 != null && _window != null)
         {
            var_451.update(_window);
            if(var_451.hasNextState())
            {
               state = var_451.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1599 = new Array();
         var_1102 = new Array();
         var_2248 = param1.@id;
         var_2249 = int(param1.@window_offset_from_icon);
         var_2232 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1104 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_933 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1102.push(_loc5_.id);
               var_1599.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1104 == "-1")
                  {
                     var_1104 = _loc5_.id;
                  }
                  if(var_933 == "-1")
                  {
                     var_933 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_34 = var_933;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_285 != null)
         {
            var_285.hideWindow(param1,param2,var_764,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_285 != null)
         {
            var_285.positionWindow(this,param1,param2,var_764,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_285 != null)
         {
            var_285.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1103;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1105 != null && _window != null)
         {
            var_1105.update();
            _window.y = var_1105.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_765 != null)
         {
            var_765.stop();
            var_765 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1103)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_451 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_87,_y,_bitmapData);
            if(false)
            {
               var_765 = new Timer(_loc1_.timer);
               var_765.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_765.start();
            }
            if(_loc1_.bounce)
            {
               var_1105.reset(-7);
               var_1368.reset();
               var_1368.start();
            }
         }
         else
         {
            var_451 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_2232 + var_539.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_34);
      }
      
      public function get window() : IWindow
      {
         return var_100;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_934[var_630.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_539;
      }
   }
}
