package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1248:String = "WN_CREATED";
      
      public static const const_908:String = "WN_DISABLE";
      
      public static const const_917:String = "WN_DEACTIVATED";
      
      public static const const_1017:String = "WN_OPENED";
      
      public static const const_973:String = "WN_CLOSED";
      
      public static const const_995:String = "WN_DESTROY";
      
      public static const const_1490:String = "WN_ARRANGED";
      
      public static const const_408:String = "WN_PARENT_RESIZED";
      
      public static const const_950:String = "WN_ENABLE";
      
      public static const const_830:String = "WN_RELOCATE";
      
      public static const const_836:String = "WN_FOCUS";
      
      public static const const_961:String = "WN_PARENT_RELOCATED";
      
      public static const const_459:String = "WN_PARAM_UPDATED";
      
      public static const const_694:String = "WN_PARENT_ACTIVATED";
      
      public static const const_163:String = "WN_RESIZED";
      
      public static const const_916:String = "WN_CLOSE";
      
      public static const const_944:String = "WN_PARENT_REMOVED";
      
      public static const const_251:String = "WN_CHILD_RELOCATED";
      
      public static const const_598:String = "WN_ENABLED";
      
      public static const const_249:String = "WN_CHILD_RESIZED";
      
      public static const const_822:String = "WN_MINIMIZED";
      
      public static const const_536:String = "WN_DISABLED";
      
      public static const const_211:String = "WN_CHILD_ACTIVATED";
      
      public static const const_393:String = "WN_STATE_UPDATED";
      
      public static const const_706:String = "WN_UNSELECTED";
      
      public static const const_368:String = "WN_STYLE_UPDATED";
      
      public static const const_1455:String = "WN_UPDATE";
      
      public static const const_446:String = "WN_PARENT_ADDED";
      
      public static const const_628:String = "WN_RESIZE";
      
      public static const const_692:String = "WN_CHILD_REMOVED";
      
      public static const const_1505:String = "";
      
      public static const const_974:String = "WN_RESTORED";
      
      public static const const_307:String = "WN_SELECTED";
      
      public static const const_931:String = "WN_MINIMIZE";
      
      public static const const_954:String = "WN_FOCUSED";
      
      public static const const_1316:String = "WN_LOCK";
      
      public static const const_332:String = "WN_CHILD_ADDED";
      
      public static const const_904:String = "WN_UNFOCUSED";
      
      public static const const_425:String = "WN_RELOCATED";
      
      public static const const_812:String = "WN_DEACTIVATE";
      
      public static const const_1197:String = "WN_CRETAE";
      
      public static const const_858:String = "WN_RESTORE";
      
      public static const const_299:String = "WN_ACTVATED";
      
      public static const const_1221:String = "WN_LOCKED";
      
      public static const const_450:String = "WN_SELECT";
      
      public static const const_899:String = "WN_MAXIMIZE";
      
      public static const const_889:String = "WN_OPEN";
      
      public static const const_557:String = "WN_UNSELECT";
      
      public static const const_1623:String = "WN_ARRANGE";
      
      public static const const_1301:String = "WN_UNLOCKED";
      
      public static const const_1540:String = "WN_UPDATED";
      
      public static const const_970:String = "WN_ACTIVATE";
      
      public static const const_1293:String = "WN_UNLOCK";
      
      public static const const_823:String = "WN_MAXIMIZED";
      
      public static const const_871:String = "WN_DESTROYED";
      
      public static const const_907:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1620,cancelable);
      }
   }
}
