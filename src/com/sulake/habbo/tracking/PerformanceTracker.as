package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_154:IHabboConfigurationManager = null;
      
      private var var_511:int = 0;
      
      private var var_457:Number = 0;
      
      private var var_2634:Array;
      
      private var var_1287:String = "";
      
      private var var_1622:String = "";
      
      private var var_1975:String = "";
      
      private var var_1974:String = "";
      
      private var var_1459:Boolean = false;
      
      private var var_1620:GarbageMonitor = null;
      
      private var var_1288:int = 0;
      
      private var var_1618:int = 1000;
      
      private var var_1289:int = 0;
      
      private var var_1623:int = 60;
      
      private var var_1621:int = 0;
      
      private var var_1619:int = 10;
      
      private var var_1286:int = 0;
      
      private var var_2226:Number = 0.15;
      
      private var var_2227:Boolean = true;
      
      private var var_2228:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2634 = [];
         super();
         this.var_1622 = Capabilities.version;
         this.var_1975 = Capabilities.os;
         this.var_1459 = Capabilities.isDebugger;
         this.var_1287 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1287 == null)
         {
            this.var_1287 = "unknown";
         }
         this.var_1620 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1621 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1622;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_457;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1618 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1623 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1619 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_154 = param1;
         this.var_1623 = int(this.var_154.getKey("performancetest.interval","60"));
         this.var_1618 = int(this.var_154.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1619 = int(this.var_154.getKey("performancetest.reportlimit","10"));
         this.var_2226 = Number(this.var_154.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2227 = Boolean(int(this.var_154.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1620.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1620.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1288;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1618)
         {
            ++this.var_1289;
            _loc3_ = true;
         }
         else
         {
            ++this.var_511;
            if(this.var_511 <= 1)
            {
               this.var_457 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_511);
               this.var_457 = this.var_457 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1621 > this.var_1623 * 1000 && this.var_1286 < this.var_1619)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_457);
            _loc5_ = true;
            if(this.var_2227 && this.var_1286 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_2228,this.var_457);
               if(_loc6_ < this.var_2226)
               {
                  _loc5_ = false;
               }
            }
            this.var_1621 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_2228 = this.var_457;
               if(this.sendReport())
               {
                  ++this.var_1286;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1287,this.var_1622,this.var_1975,this.var_1974,this.var_1459,_loc4_,_loc3_,this.var_1288,this.var_457,this.var_1289);
            this._connection.send(_loc1_);
            this.var_1288 = 0;
            this.var_457 = 0;
            this.var_511 = 0;
            this.var_1289 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
