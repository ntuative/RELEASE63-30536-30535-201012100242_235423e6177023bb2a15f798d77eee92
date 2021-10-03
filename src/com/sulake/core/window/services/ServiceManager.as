package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2644:uint;
      
      private var var_132:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_231:IWindowContext;
      
      private var var_1118:IMouseDraggingService;
      
      private var var_1123:IMouseScalingService;
      
      private var var_1121:IMouseListenerService;
      
      private var var_1120:IFocusManagerService;
      
      private var var_1119:IToolTipAgentService;
      
      private var var_1122:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2644 = 0;
         this.var_132 = param2;
         this.var_231 = param1;
         this.var_1118 = new WindowMouseDragger(param2);
         this.var_1123 = new WindowMouseScaler(param2);
         this.var_1121 = new WindowMouseListener(param2);
         this.var_1120 = new FocusManager(param2);
         this.var_1119 = new WindowToolTipAgent(param2);
         this.var_1122 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1118 != null)
         {
            this.var_1118.dispose();
            this.var_1118 = null;
         }
         if(this.var_1123 != null)
         {
            this.var_1123.dispose();
            this.var_1123 = null;
         }
         if(this.var_1121 != null)
         {
            this.var_1121.dispose();
            this.var_1121 = null;
         }
         if(this.var_1120 != null)
         {
            this.var_1120.dispose();
            this.var_1120 = null;
         }
         if(this.var_1119 != null)
         {
            this.var_1119.dispose();
            this.var_1119 = null;
         }
         if(this.var_1122 != null)
         {
            this.var_1122.dispose();
            this.var_1122 = null;
         }
         this.var_132 = null;
         this.var_231 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1118;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1123;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1121;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1120;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1119;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1122;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
