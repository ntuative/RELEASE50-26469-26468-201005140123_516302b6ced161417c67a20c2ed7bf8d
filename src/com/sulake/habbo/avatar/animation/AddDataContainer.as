package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1508:String;
      
      private var var_1598:String;
      
      private var var_1078:String;
      
      private var var_452:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1508 = String(param1.@align);
         var_1078 = String(param1.@base);
         var_1598 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_452 = Number(_loc2_);
            if(var_452 > 1)
            {
               var_452 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1508;
      }
      
      public function get ink() : String
      {
         return var_1598;
      }
      
      public function get base() : String
      {
         return var_1078;
      }
      
      public function get isBlended() : Boolean
      {
         return var_452 != 1;
      }
      
      public function get blend() : Number
      {
         return var_452;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
