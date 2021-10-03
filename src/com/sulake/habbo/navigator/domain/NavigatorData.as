package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1430:int = 10;
       
      
      private var var_1535:NavigatorSettingsMessageParser;
      
      private var var_1279:int;
      
      private var var_2044:int;
      
      private var var_2046:Boolean;
      
      private var var_1045:Array;
      
      private var var_884:Dictionary;
      
      private var var_1044:Array;
      
      private var var_2337:int;
      
      private var var_2041:int;
      
      private var var_1707:int;
      
      private var var_2045:int;
      
      private var var_602:PublicRoomShortData;
      
      private var var_431:RoomEventData;
      
      private var var_131:MsgWithRequestId;
      
      private var var_2042:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2043:Boolean;
      
      private var var_200:GuestRoomData;
      
      private var var_719:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1045 = new Array();
         var_1044 = new Array();
         var_884 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2044;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2043;
      }
      
      public function startLoading() : void
      {
         this.var_719 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2043 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_431 != null)
         {
            var_431.dispose();
         }
         var_431 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_131 != null && var_131 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_131 != null && var_131 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_131 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_200;
      }
      
      public function get allCategories() : Array
      {
         return var_1045;
      }
      
      public function onRoomExit() : void
      {
         if(var_431 != null)
         {
            var_431.dispose();
            var_431 = null;
         }
         if(var_602 != null)
         {
            var_602.dispose();
            var_602 = null;
         }
         if(var_200 != null)
         {
            var_200.dispose();
            var_200 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_131 = param1;
         var_719 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1535;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_131 = param1;
         var_719 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_602 = null;
         var_200 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_602 = param1.publicSpace;
            var_431 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2337 = param1.limit;
         this.var_1279 = param1.favouriteRoomIds.length;
         this.var_884 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_884[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_131 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_602;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2046;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_131 = param1;
         var_719 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1707 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_200 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_719;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1044;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1045 = param1;
         var_1044 = new Array();
         for each(_loc2_ in var_1045)
         {
            if(_loc2_.visible)
            {
               var_1044.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2041;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2045;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1535 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_131 == null)
         {
            return;
         }
         var_131.dispose();
         var_131 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_431;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_884[param1] = !!param2 ? "yes" : null;
         var_1279 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_131 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1707;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_131 != null && var_131 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2046 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2041 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2042 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_200 != null)
         {
            var_200.dispose();
         }
         var_200 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_200 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1535.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1279 >= var_2337;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2045 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2042;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_200 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2044 = param1;
      }
   }
}
