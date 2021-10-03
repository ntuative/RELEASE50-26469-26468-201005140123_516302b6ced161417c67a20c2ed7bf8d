package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_131;
         param1["bound_to_parent_rect"] = const_93;
         param1["child_window"] = const_930;
         param1["embedded_controller"] = const_320;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_640;
         param1["mouse_dragging_target"] = const_237;
         param1["mouse_dragging_trigger"] = const_344;
         param1["mouse_scaling_target"] = const_277;
         param1["mouse_scaling_trigger"] = const_376;
         param1["horizontal_mouse_scaling_trigger"] = const_198;
         param1["vertical_mouse_scaling_trigger"] = const_233;
         param1["observe_parent_input_events"] = const_867;
         param1["optimize_region_to_layout_size"] = const_395;
         param1["parent_window"] = const_829;
         param1["relative_horizontal_scale_center"] = const_165;
         param1["relative_horizontal_scale_fixed"] = const_120;
         param1["relative_horizontal_scale_move"] = const_325;
         param1["relative_horizontal_scale_strech"] = const_269;
         param1["relative_scale_center"] = const_848;
         param1["relative_scale_fixed"] = const_696;
         param1["relative_scale_move"] = const_883;
         param1["relative_scale_strech"] = const_918;
         param1["relative_vertical_scale_center"] = const_175;
         param1["relative_vertical_scale_fixed"] = const_127;
         param1["relative_vertical_scale_move"] = const_340;
         param1["relative_vertical_scale_strech"] = const_246;
         param1["on_resize_align_left"] = const_633;
         param1["on_resize_align_right"] = const_476;
         param1["on_resize_align_center"] = const_360;
         param1["on_resize_align_top"] = const_558;
         param1["on_resize_align_bottom"] = const_460;
         param1["on_resize_align_middle"] = const_461;
         param1["on_accommodate_align_left"] = const_976;
         param1["on_accommodate_align_right"] = const_390;
         param1["on_accommodate_align_center"] = const_517;
         param1["on_accommodate_align_top"] = const_808;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_642;
         param1["route_input_events_to_parent"] = const_409;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_1023;
         param1["scalable_with_mouse"] = const_919;
         param1["reflect_horizontal_resize_to_parent"] = const_416;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_265;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
