package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_227:int = 0;
      
      private var var_1952:int = 0;
      
      private var var_1949:Number = 0;
      
      private var var_1947:Number = 0;
      
      private var var_1951:Number = 0;
      
      private var var_1950:Number = 0;
      
      private var var_1948:Boolean = false;
      
      private var var_87:Number = 0;
      
      private var _id:int = 0;
      
      private var var_207:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_207 = [];
         super();
         _id = param1;
         var_87 = param2;
         _y = param3;
         var_86 = param4;
         var_1950 = param5;
         var_227 = param6;
         var_1952 = param7;
         var_1949 = param8;
         var_1947 = param9;
         var_1951 = param10;
         var_1948 = param11;
         var_207 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function get localZ() : Number
      {
         return var_1950;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1948;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1952;
      }
      
      public function get targetX() : Number
      {
         return var_1949;
      }
      
      public function get targetY() : Number
      {
         return var_1947;
      }
      
      public function get targetZ() : Number
      {
         return var_1951;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get actions() : Array
      {
         return var_207.slice();
      }
   }
}
