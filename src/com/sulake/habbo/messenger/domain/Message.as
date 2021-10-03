package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_669:int = 2;
      
      public static const const_1010:int = 6;
      
      public static const const_624:int = 1;
      
      public static const const_584:int = 3;
      
      public static const const_1004:int = 4;
      
      public static const const_561:int = 5;
       
      
      private var var_2276:String;
      
      private var var_1085:int;
      
      private var var_1961:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1085 = param2;
         var_1961 = param3;
         var_2276 = param4;
      }
      
      public function get time() : String
      {
         return var_2276;
      }
      
      public function get senderId() : int
      {
         return var_1085;
      }
      
      public function get messageText() : String
      {
         return var_1961;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
