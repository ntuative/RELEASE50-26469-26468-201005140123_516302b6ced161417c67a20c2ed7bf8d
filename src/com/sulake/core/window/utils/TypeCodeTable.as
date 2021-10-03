package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_556;
         param1["bitmap"] = const_605;
         param1["border"] = const_579;
         param1["border_notify"] = const_1222;
         param1["button"] = const_458;
         param1["button_thick"] = const_629;
         param1["button_icon"] = const_1402;
         param1["button_group_left"] = const_662;
         param1["button_group_center"] = const_677;
         param1["button_group_right"] = const_588;
         param1["canvas"] = const_636;
         param1["checkbox"] = const_713;
         param1["closebutton"] = const_865;
         param1["container"] = const_331;
         param1["container_button"] = const_532;
         param1["display_object_wrapper"] = const_530;
         param1["dropmenu"] = const_439;
         param1["dropmenu_item"] = const_490;
         param1["frame"] = const_311;
         param1["frame_notify"] = const_1314;
         param1["header"] = const_539;
         param1["icon"] = const_877;
         param1["itemgrid"] = const_838;
         param1["itemgrid_horizontal"] = const_480;
         param1["itemgrid_vertical"] = const_660;
         param1["itemlist"] = const_962;
         param1["itemlist_horizontal"] = const_327;
         param1["itemlist_vertical"] = const_336;
         param1["maximizebox"] = const_1377;
         param1["menu"] = const_1246;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_915;
         param1["minimizebox"] = const_1350;
         param1["notify"] = const_1404;
         param1["null"] = const_519;
         param1["password"] = const_511;
         param1["radiobutton"] = const_564;
         param1["region"] = const_483;
         param1["restorebox"] = const_1325;
         param1["scaler"] = const_582;
         param1["scaler_horizontal"] = const_1150;
         param1["scaler_vertical"] = const_1406;
         param1["scrollbar_horizontal"] = const_397;
         param1["scrollbar_vertical"] = const_575;
         param1["scrollbar_slider_button_up"] = const_846;
         param1["scrollbar_slider_button_down"] = const_874;
         param1["scrollbar_slider_button_left"] = const_857;
         param1["scrollbar_slider_button_right"] = const_862;
         param1["scrollbar_slider_bar_horizontal"] = const_1009;
         param1["scrollbar_slider_bar_vertical"] = const_900;
         param1["scrollbar_slider_track_horizontal"] = const_1003;
         param1["scrollbar_slider_track_vertical"] = const_927;
         param1["scrollable_itemlist"] = const_1373;
         param1["scrollable_itemlist_vertical"] = const_410;
         param1["scrollable_itemlist_horizontal"] = const_860;
         param1["selector"] = const_538;
         param1["selector_list"] = const_600;
         param1["submenu"] = const_915;
         param1["tab_button"] = const_664;
         param1["tab_container_button"] = const_853;
         param1["tab_context"] = const_481;
         param1["tab_content"] = const_942;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_671;
         param1["input"] = const_631;
         param1["toolbar"] = const_1229;
         param1["tooltip"] = const_294;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
