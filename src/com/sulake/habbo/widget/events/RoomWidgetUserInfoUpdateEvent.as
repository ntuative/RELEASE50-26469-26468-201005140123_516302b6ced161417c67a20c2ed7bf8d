package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_197:String = "RWUIUE_PEER";
      
      public static const const_222:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1289:String = "BOT";
      
      public static const const_817:int = 2;
      
      public static const const_1360:int = 0;
      
      public static const const_1027:int = 3;
       
      
      private var var_321:String = "";
      
      private var var_1290:String = "";
      
      private var var_2218:Boolean = false;
      
      private var var_1792:int = 0;
      
      private var var_2004:int = 0;
      
      private var var_2210:Boolean = false;
      
      private var var_1289:String = "";
      
      private var var_2211:Boolean = false;
      
      private var var_818:int = 0;
      
      private var var_2217:Boolean = true;
      
      private var var_1002:int = 0;
      
      private var var_2216:Boolean = false;
      
      private var var_1295:Boolean = false;
      
      private var var_2215:Boolean = false;
      
      private var var_2005:int = 0;
      
      private var var_2214:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_265:Array;
      
      private var var_1296:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1793:int = 0;
      
      private var var_2213:Boolean = false;
      
      private var var_2212:int = 0;
      
      private var var_2006:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_265 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2004;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2004 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2218;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2217;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2217 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2211 = param1;
      }
      
      public function get motto() : String
      {
         return var_1290;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2216 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1295;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1290 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2213;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2006;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1295 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2214;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2005 = param1;
      }
      
      public function get badges() : Array
      {
         return var_265;
      }
      
      public function get amIController() : Boolean
      {
         return var_2210;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2210 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2213 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2212 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2006 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1289 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2211;
      }
      
      public function set figure(param1:String) : void
      {
         var_321 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2005;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1296;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2216;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_818 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2212;
      }
      
      public function get realName() : String
      {
         return var_1289;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function set webID(param1:int) : void
      {
         var_1793 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_265 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2215 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2214 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_818;
      }
      
      public function get webID() : int
      {
         return var_1793;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1002 = param1;
      }
      
      public function get xp() : int
      {
         return var_1792;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2218 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1002;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2215;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1296 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1792 = param1;
      }
   }
}
