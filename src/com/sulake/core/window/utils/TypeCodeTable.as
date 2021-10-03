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
         param1["background"] = const_781;
         param1["bitmap"] = const_772;
         param1["border"] = const_792;
         param1["border_notify"] = const_1497;
         param1["button"] = const_433;
         param1["button_thick"] = const_585;
         param1["button_icon"] = const_1514;
         param1["button_group_left"] = const_732;
         param1["button_group_center"] = const_664;
         param1["button_group_right"] = const_690;
         param1["canvas"] = const_642;
         param1["checkbox"] = const_779;
         param1["closebutton"] = const_1110;
         param1["container"] = const_380;
         param1["container_button"] = const_762;
         param1["display_object_wrapper"] = const_592;
         param1["dropmenu"] = const_457;
         param1["dropmenu_item"] = const_486;
         param1["frame"] = const_333;
         param1["frame_notify"] = const_1359;
         param1["header"] = const_570;
         param1["icon"] = const_919;
         param1["itemgrid"] = const_1020;
         param1["itemgrid_horizontal"] = const_530;
         param1["itemgrid_vertical"] = const_677;
         param1["itemlist"] = const_936;
         param1["itemlist_horizontal"] = const_352;
         param1["itemlist_vertical"] = const_323;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1353;
         param1["menu_item"] = const_1435;
         param1["submenu"] = const_1069;
         param1["minimizebox"] = const_1346;
         param1["notify"] = const_1286;
         param1["null"] = const_583;
         param1["password"] = const_693;
         param1["radiobutton"] = const_618;
         param1["region"] = const_706;
         param1["restorebox"] = const_1304;
         param1["scaler"] = const_820;
         param1["scaler_horizontal"] = const_1418;
         param1["scaler_vertical"] = const_1512;
         param1["scrollbar_horizontal"] = const_398;
         param1["scrollbar_vertical"] = const_694;
         param1["scrollbar_slider_button_up"] = const_1033;
         param1["scrollbar_slider_button_down"] = const_964;
         param1["scrollbar_slider_button_left"] = const_909;
         param1["scrollbar_slider_button_right"] = const_1046;
         param1["scrollbar_slider_bar_horizontal"] = const_937;
         param1["scrollbar_slider_bar_vertical"] = const_1038;
         param1["scrollbar_slider_track_horizontal"] = const_1089;
         param1["scrollbar_slider_track_vertical"] = const_969;
         param1["scrollable_itemlist"] = const_1357;
         param1["scrollable_itemlist_vertical"] = const_436;
         param1["scrollable_itemlist_horizontal"] = const_999;
         param1["selector"] = const_674;
         param1["selector_list"] = const_567;
         param1["submenu"] = const_1069;
         param1["tab_button"] = const_647;
         param1["tab_container_button"] = const_988;
         param1["tab_context"] = const_376;
         param1["tab_content"] = const_923;
         param1["tab_selector"] = const_700;
         param1["text"] = const_593;
         param1["input"] = const_645;
         param1["toolbar"] = const_1517;
         param1["tooltip"] = const_372;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
