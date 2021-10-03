package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1321:String = "WE_CREATE";
      
      public static const const_1451:String = "WE_CREATED";
      
      public static const const_1358:String = "WE_DESTROY";
      
      public static const const_307:String = "WE_DESTROYED";
      
      public static const const_1311:String = "WE_OPEN";
      
      public static const const_1350:String = "WE_OPENED";
      
      public static const const_1308:String = "WE_CLOSE";
      
      public static const const_1515:String = "WE_CLOSED";
      
      public static const const_1494:String = "WE_FOCUS";
      
      public static const const_176:String = "WE_FOCUSED";
      
      public static const const_1396:String = "WE_UNFOCUS";
      
      public static const const_1448:String = "WE_UNFOCUSED";
      
      public static const const_1262:String = "WE_ACTIVATE";
      
      public static const const_1265:String = "WE_ACTIVATED";
      
      public static const const_1491:String = "WE_DEACTIVATE";
      
      public static const const_987:String = "WE_DEACTIVATED";
      
      public static const const_471:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_635:String = "WE_UNSELECT";
      
      public static const const_742:String = "WE_UNSELECTED";
      
      public static const const_1666:String = "WE_ATTACH";
      
      public static const const_1626:String = "WE_ATTACHED";
      
      public static const const_1648:String = "WE_DETACH";
      
      public static const const_1782:String = "WE_DETACHED";
      
      public static const const_1341:String = "WE_LOCK";
      
      public static const const_1302:String = "WE_LOCKED";
      
      public static const const_1294:String = "WE_UNLOCK";
      
      public static const const_1307:String = "WE_UNLOCKED";
      
      public static const const_660:String = "WE_ENABLE";
      
      public static const const_308:String = "WE_ENABLED";
      
      public static const const_626:String = "WE_DISABLE";
      
      public static const const_210:String = "WE_DISABLED";
      
      public static const const_1276:String = "WE_RELOCATE";
      
      public static const const_349:String = "WE_RELOCATED";
      
      public static const const_1261:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1394:String = "WE_MINIMIZE";
      
      public static const const_1279:String = "WE_MINIMIZED";
      
      public static const const_1458:String = "WE_MAXIMIZE";
      
      public static const const_1438:String = "WE_MAXIMIZED";
      
      public static const const_1421:String = "WE_RESTORE";
      
      public static const const_1436:String = "WE_RESTORED";
      
      public static const const_1650:String = "WE_ARRANGE";
      
      public static const const_1646:String = "WE_ARRANGED";
      
      public static const const_99:String = "WE_UPDATE";
      
      public static const const_1700:String = "WE_UPDATED";
      
      public static const const_1785:String = "WE_CHILD_RELOCATE";
      
      public static const const_483:String = "WE_CHILD_RELOCATED";
      
      public static const const_1699:String = "WE_CHILD_RESIZE";
      
      public static const const_294:String = "WE_CHILD_RESIZED";
      
      public static const const_1773:String = "WE_CHILD_REMOVE";
      
      public static const const_487:String = "WE_CHILD_REMOVED";
      
      public static const const_1771:String = "WE_PARENT_RELOCATE";
      
      public static const const_1676:String = "WE_PARENT_RELOCATED";
      
      public static const const_1597:String = "WE_PARENT_RESIZE";
      
      public static const const_1331:String = "WE_PARENT_RESIZED";
      
      public static const const_167:String = "WE_OK";
      
      public static const const_619:String = "WE_CANCEL";
      
      public static const const_103:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_473:String = "WE_SCROLL";
      
      public static const const_156:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1863:IWindow;
      
      protected var var_1862:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1863 = param3;
         this.var_1862 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1863;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1862 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1862;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
