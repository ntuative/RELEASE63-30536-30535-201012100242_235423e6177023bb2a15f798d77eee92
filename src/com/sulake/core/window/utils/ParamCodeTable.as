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
         param1["null"] = const_177;
         param1["bound_to_parent_rect"] = const_89;
         param1["child_window"] = const_992;
         param1["embedded_controller"] = const_1049;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_682;
         param1["mouse_dragging_target"] = const_234;
         param1["mouse_dragging_trigger"] = const_353;
         param1["mouse_scaling_target"] = const_282;
         param1["mouse_scaling_trigger"] = const_513;
         param1["horizontal_mouse_scaling_trigger"] = const_209;
         param1["vertical_mouse_scaling_trigger"] = const_224;
         param1["observe_parent_input_events"] = const_1024;
         param1["optimize_region_to_layout_size"] = const_529;
         param1["parent_window"] = const_957;
         param1["relative_horizontal_scale_center"] = const_185;
         param1["relative_horizontal_scale_fixed"] = const_128;
         param1["relative_horizontal_scale_move"] = const_329;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_961;
         param1["relative_scale_fixed"] = const_588;
         param1["relative_scale_move"] = const_978;
         param1["relative_scale_strech"] = const_1104;
         param1["relative_vertical_scale_center"] = const_169;
         param1["relative_vertical_scale_fixed"] = const_123;
         param1["relative_vertical_scale_move"] = const_346;
         param1["relative_vertical_scale_strech"] = const_377;
         param1["on_resize_align_left"] = const_683;
         param1["on_resize_align_right"] = const_441;
         param1["on_resize_align_center"] = const_501;
         param1["on_resize_align_top"] = const_594;
         param1["on_resize_align_bottom"] = const_518;
         param1["on_resize_align_middle"] = const_480;
         param1["on_accommodate_align_left"] = const_1022;
         param1["on_accommodate_align_right"] = const_494;
         param1["on_accommodate_align_center"] = const_731;
         param1["on_accommodate_align_top"] = const_897;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_758;
         param1["route_input_events_to_parent"] = const_516;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_894;
         param1["scalable_with_mouse"] = const_898;
         param1["reflect_horizontal_resize_to_parent"] = const_488;
         param1["reflect_vertical_resize_to_parent"] = const_448;
         param1["reflect_resize_to_parent"] = const_301;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
