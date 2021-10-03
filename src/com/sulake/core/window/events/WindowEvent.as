package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_260:String = "WE_CHILD_RESIZED";
      
      public static const const_1304:String = "WE_CLOSE";
      
      public static const const_1269:String = "WE_DESTROY";
      
      public static const const_135:String = "WE_CHANGE";
      
      public static const const_1258:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1635:String = "WE_PARENT_RESIZE";
      
      public static const const_101:String = "WE_UPDATE";
      
      public static const const_1213:String = "WE_MAXIMIZE";
      
      public static const const_379:String = "WE_DESTROYED";
      
      public static const const_856:String = "WE_UNSELECT";
      
      public static const const_1224:String = "WE_MAXIMIZED";
      
      public static const const_1489:String = "WE_UNLOCKED";
      
      public static const const_468:String = "WE_CHILD_REMOVED";
      
      public static const const_182:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1371:String = "WE_ACTIVATE";
      
      public static const const_264:String = "WE_ENABLED";
      
      public static const const_392:String = "WE_CHILD_RELOCATED";
      
      public static const const_1175:String = "WE_CREATE";
      
      public static const const_725:String = "WE_SELECT";
      
      public static const const_170:String = "";
      
      public static const const_1568:String = "WE_LOCKED";
      
      public static const const_1471:String = "WE_PARENT_RELOCATE";
      
      public static const const_1475:String = "WE_CHILD_REMOVE";
      
      public static const const_1546:String = "WE_CHILD_RELOCATE";
      
      public static const const_1482:String = "WE_LOCK";
      
      public static const const_220:String = "WE_FOCUSED";
      
      public static const const_729:String = "WE_UNSELECTED";
      
      public static const const_935:String = "WE_DEACTIVATED";
      
      public static const const_1157:String = "WE_MINIMIZED";
      
      public static const const_1487:String = "WE_ARRANGED";
      
      public static const const_1566:String = "WE_UNLOCK";
      
      public static const const_1521:String = "WE_ATTACH";
      
      public static const const_1341:String = "WE_OPEN";
      
      public static const const_1148:String = "WE_RESTORE";
      
      public static const const_1474:String = "WE_PARENT_RELOCATED";
      
      public static const const_1236:String = "WE_RELOCATE";
      
      public static const const_1514:String = "WE_CHILD_RESIZE";
      
      public static const const_1457:String = "WE_ARRANGE";
      
      public static const const_1318:String = "WE_OPENED";
      
      public static const const_1307:String = "WE_CLOSED";
      
      public static const const_1492:String = "WE_DETACHED";
      
      public static const const_1507:String = "WE_UPDATED";
      
      public static const const_1198:String = "WE_UNFOCUSED";
      
      public static const const_426:String = "WE_RELOCATED";
      
      public static const const_1147:String = "WE_DEACTIVATE";
      
      public static const const_231:String = "WE_DISABLED";
      
      public static const const_704:String = "WE_CANCEL";
      
      public static const const_596:String = "WE_ENABLE";
      
      public static const const_1171:String = "WE_ACTIVATED";
      
      public static const const_1370:String = "WE_FOCUS";
      
      public static const const_1622:String = "WE_DETACH";
      
      public static const const_1312:String = "WE_RESTORED";
      
      public static const const_1330:String = "WE_UNFOCUS";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_1143:String = "WE_PARENT_RESIZED";
      
      public static const const_1247:String = "WE_CREATED";
      
      public static const const_1494:String = "WE_ATTACHED";
      
      public static const const_1302:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1620:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1400:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1620 = param3;
         var_1400 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1400;
      }
      
      public function get related() : IWindow
      {
         return var_1620;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1400 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
