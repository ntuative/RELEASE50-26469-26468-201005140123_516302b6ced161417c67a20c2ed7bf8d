package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1781:String = "";
      
      private var var_150:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1781 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_150 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1781;
      }
      
      public function get objectId() : String
      {
         return var_150;
      }
   }
}
