package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var include:String;
      
      private var var_1683:int;
      
      private var var_2035:int;
      
      private var var_1532:int;
      
      private var var_2030:int;
      
      private var _category:int;
      
      private var var_2392:int;
      
      private var var_2032:int;
      
      private var var_2033:int;
      
      private var var_2036:int;
      
      private var var_2031:int;
      
      private var var_2034:Boolean;
      
      private var var_1397:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1683 = param1;
         include = param2;
         var_2035 = param3;
         var_2036 = param4;
         _category = param5;
         var_1397 = param6;
         var_1532 = param7;
         var_2033 = param8;
         var_2032 = param9;
         var_2031 = param10;
         var_2030 = param11;
         var_2034 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2036;
      }
      
      public function get extra() : int
      {
         return var_1532;
      }
      
      public function get stuffData() : String
      {
         return var_1397;
      }
      
      public function get groupable() : Boolean
      {
         return var_2034;
      }
      
      public function get creationMonth() : int
      {
         return var_2031;
      }
      
      public function get roomItemID() : int
      {
         return var_2035;
      }
      
      public function get itemType() : String
      {
         return include;
      }
      
      public function get itemID() : int
      {
         return var_1683;
      }
      
      public function get songID() : int
      {
         return var_1532;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2033;
      }
      
      public function get creationYear() : int
      {
         return var_2030;
      }
      
      public function get creationDay() : int
      {
         return var_2032;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
