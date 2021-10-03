package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_432:uint = 0;
      
      public static const const_1414:uint = 1;
      
      public static const const_1795:int = 0;
      
      public static const const_1614:int = 1;
      
      public static const const_1697:int = 2;
      
      public static const const_1606:int = 3;
      
      public static const const_1383:int = 4;
      
      public static const const_364:int = 5;
      
      public static var var_1405:IMouseCursor;
      
      public static var var_345:IEventQueue;
      
      private static var var_579:IEventProcessor;
      
      private static var var_1678:uint = const_432;
      
      private static var stage:Stage;
      
      private static var var_133:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2311:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_174:DisplayObjectContainer;
      
      protected var var_2656:Boolean = true;
      
      protected var var_1165:Error;
      
      protected var var_1879:int = -1;
      
      protected var var_1164:IInternalWindowServices;
      
      protected var var_1408:IWindowParser;
      
      protected var var_2607:IWindowFactory;
      
      protected var var_129:IDesktopWindow;
      
      protected var var_1409:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_508:Boolean = false;
      
      private var var_2312:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_133 = param2;
         this._localization = param4;
         this.var_174 = param5;
         this.var_1164 = new ServiceManager(this,param5);
         this.var_2607 = param3;
         this.var_1408 = new WindowParser(this);
         this.var_2311 = param7;
         if(!stage)
         {
            if(this.var_174 is Stage)
            {
               stage = this.var_174 as Stage;
            }
            else if(this.var_174.stage)
            {
               stage = this.var_174.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_129 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_174.addChild(this.var_129.getDisplayObject());
         this.var_174.doubleClickEnabled = true;
         this.var_174.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_133,this.var_129,this.var_129,null,this.var_2311);
         inputMode = const_432;
         this.var_1409 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1678;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_345)
         {
            if(var_345 is IDisposable)
            {
               IDisposable(var_345).dispose();
            }
         }
         if(var_579)
         {
            if(var_579 is IDisposable)
            {
               IDisposable(var_579).dispose();
            }
         }
         switch(value)
         {
            case const_432:
               var_345 = new MouseEventQueue(stage);
               var_579 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1414:
               var_345 = new TabletEventQueue(stage);
               var_579 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_432;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_174.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_174.removeChild(IGraphicContextHost(this.var_129).getGraphicContext(true) as DisplayObject);
            this.var_129.destroy();
            this.var_129 = null;
            this.var_1409.destroy();
            this.var_1409 = null;
            if(this.var_1164 is IDisposable)
            {
               IDisposable(this.var_1164).dispose();
            }
            this.var_1164 = null;
            this.var_1408.dispose();
            this.var_1408 = null;
            var_133 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1165;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1879;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1165 = param2;
         this.var_1879 = param1;
         if(this.var_2656)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1165 = null;
         this.var_1879 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1164;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1408;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2607;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_129;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1405 == null)
         {
            var_1405 = new MouseCursorControl(this.var_174);
         }
         return var_1405;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_129.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = Classes.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            this.handleError(WindowContext.const_1383,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1409;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_129,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_129)
         {
            this.var_129 = null;
         }
         if(param1.state != WindowState.const_431)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_133.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_508 = true;
         if(this.var_1165)
         {
            throw this.var_1165;
         }
         var_579.process(this._eventProcessorState,var_345);
         this.var_508 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2312 = true;
         var_133.update(param1);
         this.var_2312 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_129 != null && !this.var_129.disposed)
         {
            if(this.var_174 is Stage)
            {
               this.var_129.width = Stage(this.var_174).stageWidth;
               this.var_129.height = Stage(this.var_174).stageHeight;
            }
            else
            {
               this.var_129.width = this.var_174.width;
               this.var_129.height = this.var_174.height;
            }
         }
      }
   }
}
