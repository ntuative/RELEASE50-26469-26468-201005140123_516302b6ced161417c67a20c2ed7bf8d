package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_676:IWindowContainer;
      
      private var var_986:ITextWindow;
      
      private var var_190:RoomSettingsCtrl;
      
      private var var_1171:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1168:ITextWindow;
      
      private var var_341:IWindowContainer;
      
      private var var_1718:IWindowContainer;
      
      private var var_1717:ITextWindow;
      
      private var var_810:IWindowContainer;
      
      private var var_1425:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_699:ITextWindow;
      
      private var var_1427:IWindowContainer;
      
      private var var_1167:IWindowContainer;
      
      private var var_811:ITextWindow;
      
      private var var_987:ITextFieldWindow;
      
      private var var_296:IWindowContainer;
      
      private var var_809:ITextWindow;
      
      private var var_1428:IButtonWindow;
      
      private var var_988:ITextWindow;
      
      private var var_2314:int;
      
      private var var_1166:IContainerButtonWindow;
      
      private var var_808:IWindowContainer;
      
      private var var_1170:ITextWindow;
      
      private var var_1169:IContainerButtonWindow;
      
      private var var_1426:ITextWindow;
      
      private var var_1429:IButtonWindow;
      
      private var var_828:TagRenderer;
      
      private var var_1716:ITextWindow;
      
      private var var_342:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_677:ITextWindow;
      
      private var var_252:RoomThumbnailCtrl;
      
      private var var_1165:IContainerButtonWindow;
      
      private var var_1715:IWindowContainer;
      
      private var var_253:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_342 = new RoomEventViewCtrl(_navigator);
         var_190 = new RoomSettingsCtrl(_navigator,this,true);
         var_252 = new RoomThumbnailCtrl(_navigator);
         var_828 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_190);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_190.active = true;
         this.var_342.active = false;
         this.var_252.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1425.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1429.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1427.visible = Util.hasVisibleChildren(var_1427);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_699.text = param1.roomName;
         var_699.height = NaN;
         _ownerName.text = param1.ownerName;
         var_811.text = param1.description;
         var_828.refreshTags(var_341,param1.tags);
         var_811.visible = false;
         if(param1.description != "")
         {
            var_811.height = NaN;
            var_811.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_341,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_341,"thumb_down",_loc3_,onThumbDown,0);
         var_1717.visible = _loc3_;
         var_809.visible = !_loc3_;
         var_1426.visible = !_loc3_;
         var_1426.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_341,"home",param2,null,0);
         _navigator.refreshButton(var_341,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_341,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_699.y,0);
         var_341.visible = true;
         var_341.height = Util.getLowestPoint(var_341);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_462,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1428.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1171.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1165.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1166.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1169.visible = _navigator.data.canEditRoomSettings && param1;
         var_1167.visible = Util.hasVisibleChildren(var_1167);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_342.active = false;
         this.var_190.active = false;
         this.var_252.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_342.active = false;
         this.var_190.active = false;
         this.var_252.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_462,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_296);
         var_296.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_190.refresh(var_296);
         this.var_252.refresh(var_296);
         Util.moveChildrenToColumn(var_296,["room_details","room_buttons"],0,2);
         var_296.height = Util.getLowestPoint(var_296);
         var_296.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_987.setSelection(0,var_987.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_253);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_342.refresh(var_253);
         if(Util.hasVisibleChildren(var_253) && !this.var_252.active)
         {
            Util.moveChildrenToColumn(var_253,["event_details","event_buttons"],0,2);
            var_253.height = Util.getLowestPoint(var_253);
            var_253.visible = true;
         }
         else
         {
            var_253.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_342.active = true;
         this.var_190.active = false;
         this.var_252.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_986.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_986.height = NaN;
         var_1168.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1168.height = NaN;
         Util.moveChildrenToColumn(var_676,["public_space_name","public_space_desc"],var_986.y,0);
         var_676.visible = true;
         var_676.height = Math.max(86,Util.getLowestPoint(var_676));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_808.visible = true;
            var_987.text = this.getEmbedData();
         }
         else
         {
            var_808.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_190.load(param1);
         this.var_190.active = true;
         this.var_342.active = false;
         this.var_252.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_190.active = false;
         this.var_342.active = false;
         this.var_252.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_73,false);
         _window.setParamFlag(HabboWindowParam.const_1271,true);
         _window.visible = false;
         var_296 = IWindowContainer(find("room_info"));
         var_341 = IWindowContainer(find("room_details"));
         var_676 = IWindowContainer(find("public_space_details"));
         var_1715 = IWindowContainer(find("owner_name_cont"));
         var_1718 = IWindowContainer(find("rating_cont"));
         var_1167 = IWindowContainer(find("room_buttons"));
         var_699 = ITextWindow(find("room_name"));
         var_986 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_811 = ITextWindow(find("room_desc"));
         var_1168 = ITextWindow(find("public_space_desc"));
         var_988 = ITextWindow(find("owner_caption"));
         var_809 = ITextWindow(find("rating_caption"));
         var_1717 = ITextWindow(find("rate_caption"));
         var_1426 = ITextWindow(find("rating_txt"));
         var_253 = IWindowContainer(find("event_info"));
         var_810 = IWindowContainer(find("event_details"));
         var_1427 = IWindowContainer(find("event_buttons"));
         var_1716 = ITextWindow(find("event_name"));
         var_677 = ITextWindow(find("event_desc"));
         var_1171 = IContainerButtonWindow(find("add_favourite_button"));
         var_1165 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1166 = IContainerButtonWindow(find("make_home_button"));
         var_1169 = IContainerButtonWindow(find("unmake_home_button"));
         var_1428 = IButtonWindow(find("room_settings_button"));
         var_1425 = IButtonWindow(find("create_event_button"));
         var_1429 = IButtonWindow(find("edit_event_button"));
         var_808 = IWindowContainer(find("embed_info"));
         var_1170 = ITextWindow(find("embed_info_txt"));
         var_987 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1171,onAddFavouriteClick);
         Util.setProcDirectly(var_1165,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1428,onRoomSettingsClick);
         Util.setProcDirectly(var_1166,onMakeHomeClick);
         Util.setProcDirectly(var_1169,onUnmakeHomeClick);
         Util.setProcDirectly(var_1425,onEventSettingsClick);
         Util.setProcDirectly(var_1429,onEventSettingsClick);
         Util.setProcDirectly(var_987,onEmbedSrcClick);
         _navigator.refreshButton(var_1171,"favourite",true,null,0);
         _navigator.refreshButton(var_1165,"favourite",true,null,0);
         _navigator.refreshButton(var_1166,"home",true,null,0);
         _navigator.refreshButton(var_1169,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_296,onHover);
         Util.setProcDirectly(var_253,onHover);
         var_988.width = var_988.textWidth;
         Util.moveChildrenToRow(var_1715,["owner_caption","owner_name"],var_988.x,var_988.y,3);
         var_809.width = var_809.textWidth;
         Util.moveChildrenToRow(var_1718,["rating_caption","rating_txt"],var_809.x,var_809.y,3);
         var_1170.height = NaN;
         Util.moveChildrenToColumn(var_808,["embed_info_txt","embed_src_txt"],var_1170.y,2);
         var_808.height = Util.getLowestPoint(var_808) + 5;
         var_2314 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1716.text = param1.eventName;
         var_677.text = param1.eventDescription;
         var_828.refreshTags(var_810,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_677.visible = false;
         if(param1.eventDescription != "")
         {
            var_677.height = NaN;
            var_677.y = Util.getLowestPoint(var_810) + 2;
            var_677.visible = true;
         }
         var_810.visible = true;
         var_810.height = Util.getLowestPoint(var_810);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_953,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
