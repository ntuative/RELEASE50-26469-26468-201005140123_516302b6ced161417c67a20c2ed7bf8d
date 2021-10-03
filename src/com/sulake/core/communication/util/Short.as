package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_712:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_712 = new ByteArray();
         var_712.writeShort(param1);
         var_712.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_712.position = 0;
         if(false)
         {
            _loc1_ = var_712.readShort();
            var_712.position = 0;
         }
         return _loc1_;
      }
   }
}
