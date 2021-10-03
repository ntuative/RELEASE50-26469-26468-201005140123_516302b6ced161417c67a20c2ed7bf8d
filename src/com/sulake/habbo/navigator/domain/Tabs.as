package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_675:int = 6;
      
      public static const const_227:int = 5;
      
      public static const const_552:int = 2;
      
      public static const const_304:int = 9;
      
      public static const const_324:int = 4;
      
      public static const const_241:int = 2;
      
      public static const const_572:int = 4;
      
      public static const const_236:int = 8;
      
      public static const const_682:int = 7;
      
      public static const const_242:int = 3;
      
      public static const const_318:int = 1;
      
      public static const const_199:int = 5;
      
      public static const const_359:int = 12;
      
      public static const const_301:int = 1;
      
      public static const const_625:int = 11;
      
      public static const const_576:int = 3;
      
      public static const const_1609:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_433:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_433 = new Array();
         var_433.push(new Tab(_navigator,const_318,const_359,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_371));
         var_433.push(new Tab(_navigator,const_241,const_301,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_371));
         var_433.push(new Tab(_navigator,const_324,const_625,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_847));
         var_433.push(new Tab(_navigator,const_242,const_227,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_371));
         var_433.push(new Tab(_navigator,const_199,const_236,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_626));
         setSelectedTab(const_318);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_433)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_433)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_433)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_324;
      }
      
      public function get tabs() : Array
      {
         return var_433;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
