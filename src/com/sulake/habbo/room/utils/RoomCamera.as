package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_349:Number = 0.5;
      
      private static const const_748:int = 3;
      
      private static const const_1042:Number = 1;
       
      
      private var var_1650:Boolean = false;
      
      private var var_1647:Boolean = false;
      
      private var var_964:int = 0;
      
      private var var_250:Vector3d = null;
      
      private var var_1641:int = 0;
      
      private var var_1648:int = 0;
      
      private var var_1649:Boolean = false;
      
      private var var_1644:int = -2;
      
      private var var_1646:Boolean = false;
      
      private var var_1642:int = 0;
      
      private var var_1645:int = -1;
      
      private var var_387:Vector3d = null;
      
      private var var_1643:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1641;
      }
      
      public function get targetId() : int
      {
         return var_1645;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1641 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1650 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1645 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1647 = param1;
      }
      
      public function dispose() : void
      {
         var_387 = null;
         var_250 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_387 == null)
         {
            var_387 = new Vector3d();
         }
         var_387.assign(param1);
         var_964 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1644;
      }
      
      public function get screenHt() : int
      {
         return var_1643;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1648 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_250;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1643 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1642;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1650;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1647;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_387 != null && var_250 != null)
         {
            ++var_964;
            _loc2_ = Vector3d.dif(var_387,var_250);
            if(_loc2_.length <= const_349)
            {
               var_250 = var_387;
               var_387 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_349 * (const_748 + 1))
               {
                  _loc2_.mul(const_349);
               }
               else if(var_964 <= const_748)
               {
                  _loc2_.mul(const_349);
               }
               else
               {
                  _loc2_.mul(const_1042);
               }
               var_250 = Vector3d.sum(var_250,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1649 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1648;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1646 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1644 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_250 != null)
         {
            return;
         }
         var_250 = new Vector3d();
         var_250.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1649;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1646;
      }
   }
}
