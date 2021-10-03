package com.sulake.habbo.toolbar
{
   import com.sulake.core.window.IWindowContainer;
   import flash.geom.Point;
   
   public class MenuAnimatorItem
   {
       
      
      private var var_1634:String;
      
      private var var_1635:Array;
      
      private var _window:IWindowContainer;
      
      private var var_764:String;
      
      private var _icon:ToolbarIcon;
      
      private var _active:Boolean;
      
      private var var_1633:Point;
      
      private var _target:Point;
      
      private var var_375:Boolean;
      
      private var var_1636:Boolean;
      
      public function MenuAnimatorItem(param1:String, param2:ToolbarIcon)
      {
         super();
         var_1634 = param1;
         _icon = param2;
      }
      
      public function get visible() : Boolean
      {
         return var_375;
      }
      
      public function get method_2() : Boolean
      {
         return var_1636;
      }
      
      public function get offsetLoc() : Point
      {
         return var_1633;
      }
      
      public function get windowOffsetFromIcon() : int
      {
         return _icon.windowOffsetFromIcon;
      }
      
      public function get yieldList() : Array
      {
         return var_1635;
      }
      
      public function get active() : Boolean
      {
         return _active;
      }
      
      public function get target() : Point
      {
         return _target;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         var_1636 = param1;
      }
      
      public function get menuId() : String
      {
         return var_1634;
      }
      
      public function set active(param1:Boolean) : void
      {
         _active = param1;
      }
      
      public function set yieldList(param1:Array) : void
      {
         var_1635 = param1;
      }
      
      public function set offsetLoc(param1:Point) : void
      {
         var_1633 = param1;
      }
      
      public function set target(param1:Point) : void
      {
         _target = param1;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_375 = param1;
      }
      
      public function set window(param1:IWindowContainer) : void
      {
         _window = param1;
      }
      
      public function set iconId(param1:String) : void
      {
         var_764 = param1;
      }
      
      public function get iconId() : String
      {
         return var_764;
      }
      
      public function get margin() : int
      {
         return _icon.windowMargin;
      }
      
      public function get bottomMargin() : int
      {
         return _icon.group.windowBottomMargin;
      }
      
      public function get window() : IWindowContainer
      {
         return _window;
      }
   }
}
