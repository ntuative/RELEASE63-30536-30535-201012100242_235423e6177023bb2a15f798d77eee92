package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2676:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_129 = param1.desktop;
         var_77 = param1.var_1148 as WindowController;
         _lastClickTarget = param1.var_1149 as WindowController;
         var_133 = param1.renderer;
         var_752 = param1.var_1150;
         param2.begin();
         param2.end();
         param1.desktop = var_129;
         param1.var_1148 = var_77;
         param1.var_1149 = _lastClickTarget;
         param1.renderer = var_133;
         param1.var_1150 = var_752;
      }
   }
}
