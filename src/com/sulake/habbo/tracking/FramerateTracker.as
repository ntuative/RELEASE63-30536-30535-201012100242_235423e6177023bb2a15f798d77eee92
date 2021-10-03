package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1621:int;
      
      private var var_2581:int;
      
      private var var_1144:int;
      
      private var var_457:Number;
      
      private var var_2579:Boolean;
      
      private var var_2580:int;
      
      private var var_1825:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2581 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2580 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2579 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1144;
         var _loc3_:int = getTimer();
         if(this.var_1144 == 1)
         {
            this.var_457 = param1;
            this.var_1621 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_1144);
            this.var_457 = this.var_457 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2579 && _loc3_ - this.var_1621 >= this.var_2581 && this.var_1825 < this.var_2580)
         {
            _loc5_ = 1000 / this.var_457;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1825;
            this.var_1621 = _loc3_;
            this.var_1144 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
