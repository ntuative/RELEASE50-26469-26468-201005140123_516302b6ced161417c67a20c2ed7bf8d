package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2293:Boolean;
      
      protected var var_1532:Number;
      
      protected var var_2295:Boolean;
      
      protected var _type:int;
      
      protected var var_2296:Boolean;
      
      protected var var_1723:int;
      
      protected var var_2294:Boolean;
      
      protected var var_1397:String;
      
      protected var var_2030:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1554:String;
      
      protected var var_2034:Boolean;
      
      protected var _category:int;
      
      protected var var_2031:int;
      
      protected var var_2302:int;
      
      protected var var_2032:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_2034 = param5;
         var_2294 = param6;
         var_2293 = param7;
         var_2295 = param8;
         var_1397 = param9;
         var_1532 = param10;
         var_2302 = param11;
         var_2032 = param12;
         var_2031 = param13;
         var_2030 = param14;
         var_1554 = param15;
         var_1723 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2296;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1532;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2296 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1723;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2295;
      }
      
      public function get slotId() : String
      {
         return var_1554;
      }
      
      public function get expires() : int
      {
         return var_2302;
      }
      
      public function get creationYear() : int
      {
         return var_2030;
      }
      
      public function get creationDay() : int
      {
         return var_2032;
      }
      
      public function get stuffData() : String
      {
         return var_1397;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2294;
      }
      
      public function get groupable() : Boolean
      {
         return var_2034;
      }
      
      public function get creationMonth() : int
      {
         return var_2031;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2293;
      }
   }
}
