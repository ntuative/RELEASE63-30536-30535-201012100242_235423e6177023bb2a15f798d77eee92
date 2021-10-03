package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1336:String = "WN_CRETAE";
      
      public static const const_1455:String = "WN_CREATED";
      
      public static const const_976:String = "WN_DESTROY";
      
      public static const const_1072:String = "WN_DESTROYED";
      
      public static const const_1070:String = "WN_OPEN";
      
      public static const const_893:String = "WN_OPENED";
      
      public static const const_1057:String = "WN_CLOSE";
      
      public static const const_1008:String = "WN_CLOSED";
      
      public static const const_1065:String = "WN_FOCUS";
      
      public static const const_933:String = "WN_FOCUSED";
      
      public static const const_963:String = "WN_UNFOCUS";
      
      public static const const_1103:String = "WN_UNFOCUSED";
      
      public static const const_916:String = "WN_ACTIVATE";
      
      public static const const_348:String = "WN_ACTVATED";
      
      public static const const_1040:String = "WN_DEACTIVATE";
      
      public static const const_931:String = "WN_DEACTIVATED";
      
      public static const const_540:String = "WN_SELECT";
      
      public static const const_374:String = "WN_SELECTED";
      
      public static const const_720:String = "WN_UNSELECT";
      
      public static const const_563:String = "WN_UNSELECTED";
      
      public static const const_1099:String = "WN_LOCK";
      
      public static const const_1107:String = "WN_LOCKED";
      
      public static const const_1030:String = "WN_UNLOCK";
      
      public static const const_1034:String = "WN_UNLOCKED";
      
      public static const const_1037:String = "WN_ENABLE";
      
      public static const const_652:String = "WN_ENABLED";
      
      public static const const_953:String = "WN_DISABLE";
      
      public static const const_672:String = "WN_DISABLED";
      
      public static const const_804:String = "WN_RESIZE";
      
      public static const const_165:String = "WN_RESIZED";
      
      public static const const_1004:String = "WN_RELOCATE";
      
      public static const const_424:String = "WN_RELOCATED";
      
      public static const const_1068:String = "WN_MINIMIZE";
      
      public static const const_973:String = "WN_MINIMIZED";
      
      public static const const_1061:String = "WN_MAXIMIZE";
      
      public static const const_938:String = "WN_MAXIMIZED";
      
      public static const const_1081:String = "WN_RESTORE";
      
      public static const const_935:String = "WN_RESTORED";
      
      public static const const_1675:String = "WN_ARRANGE";
      
      public static const const_1754:String = "WN_ARRANGED";
      
      public static const const_1802:String = "WN_UPDATE";
      
      public static const const_1730:String = "WN_UPDATED";
      
      public static const const_332:String = "WN_CHILD_ADDED";
      
      public static const const_811:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_299:String = "WN_CHILD_RELOCATED";
      
      public static const const_217:String = "WN_CHILD_ACTIVATED";
      
      public static const const_423:String = "WN_PARENT_ADDED";
      
      public static const const_1028:String = "WN_PARENT_REMOVED";
      
      public static const const_517:String = "WN_PARENT_RESIZED";
      
      public static const const_1080:String = "WN_PARENT_RELOCATED";
      
      public static const const_625:String = "WN_PARENT_ACTIVATED";
      
      public static const const_539:String = "WN_STATE_UPDATED";
      
      public static const const_506:String = "WN_STYLE_UPDATED";
      
      public static const const_490:String = "WN_PARAM_UPDATED";
      
      public static const const_1604:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1863,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
