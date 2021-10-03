package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1063:int = 80;
       
      
      private var var_484:Map;
      
      private var var_699:String = "";
      
      private var var_1227:Array;
      
      public function UserRegistry()
      {
         var_484 = new Map();
         var_1227 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_484.getValue(var_1227.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_699;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_484.getValue(param1) != null)
         {
            var_484.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_699);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_699 == "")
         {
            var_1227.push(param1);
         }
         var_484.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_484;
      }
      
      public function unregisterRoom() : void
      {
         var_699 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_484.length > const_1063)
         {
            _loc1_ = var_484.getKey(0);
            var_484.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_699 = param1;
         if(var_699 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
