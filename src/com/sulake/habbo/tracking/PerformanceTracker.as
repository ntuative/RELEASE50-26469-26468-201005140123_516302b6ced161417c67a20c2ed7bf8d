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
       
      
      private var var_1575:GarbageMonitor = null;
      
      private var var_1329:int = 0;
      
      private var var_1261:Boolean = false;
      
      private var var_1970:String = "";
      
      private var var_1574:String = "";
      
      private var var_367:Number = 0;
      
      private var var_1330:int = 10;
      
      private var var_2339:Array;
      
      private var var_652:int = 0;
      
      private var var_1332:int = 60;
      
      private var var_1076:int = 0;
      
      private var var_1077:int = 0;
      
      private var var_1973:String = "";
      
      private var var_2146:Number = 0;
      
      private var var_1331:int = 1000;
      
      private var var_2145:Boolean = true;
      
      private var var_2147:Number = 0.15;
      
      private var var_155:IHabboConfigurationManager = null;
      
      private var var_1971:String = "";
      
      private var var_1333:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2339 = [];
         super();
         var_1574 = Capabilities.version;
         var_1970 = Capabilities.os;
         var_1261 = Capabilities.isDebugger;
         var_1971 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1575 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1329 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1575.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1575.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_367;
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
      
      public function set reportInterval(param1:int) : void
      {
         var_1332 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1574;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1077;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1331)
         {
            ++var_1076;
            _loc3_ = true;
         }
         else
         {
            ++var_652;
            if(var_652 <= 1)
            {
               var_367 = param1;
            }
            else
            {
               _loc4_ = Number(var_652);
               var_367 = var_367 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1329 > var_1332 * 1000 && var_1333 < var_1330)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_367);
            _loc5_ = true;
            if(var_2145 && var_1333 > 0)
            {
               _loc6_ = differenceInPercents(var_2146,var_367);
               if(_loc6_ < var_2147)
               {
                  _loc5_ = false;
               }
            }
            var_1329 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2146 = var_367;
               if(sendReport())
               {
                  ++var_1333;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1330 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1331 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1971,var_1574,var_1970,var_1973,var_1261,_loc4_,_loc3_,var_1077,var_367,var_1076);
            _connection.send(_loc1_);
            var_1077 = 0;
            var_367 = 0;
            var_652 = 0;
            var_1076 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_155 = param1;
         var_1332 = int(var_155.getKey("performancetest.interval","60"));
         var_1331 = int(var_155.getKey("performancetest.slowupdatelimit","1000"));
         var_1330 = int(var_155.getKey("performancetest.reportlimit","10"));
         var_2147 = Number(var_155.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2145 = Boolean(int(var_155.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
