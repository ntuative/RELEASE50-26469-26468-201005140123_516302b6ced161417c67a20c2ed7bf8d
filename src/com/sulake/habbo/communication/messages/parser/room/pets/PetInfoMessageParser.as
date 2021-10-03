package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1915:int;
      
      private var var_321:String;
      
      private var var_1912:int;
      
      private var var_1861:int;
      
      private var var_1911:int;
      
      private var var_2200:int;
      
      private var _nutrition:int;
      
      private var var_1346:int;
      
      private var var_2203:int;
      
      private var var_2201:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1910:int;
      
      private var var_2202:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1912;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2200;
      }
      
      public function flush() : Boolean
      {
         var_1346 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2203;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2201;
      }
      
      public function get maxNutrition() : int
      {
         return var_2202;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1861;
      }
      
      public function get petId() : int
      {
         return var_1346;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1346 = param1.readInteger();
         _name = param1.readString();
         var_1912 = param1.readInteger();
         var_2203 = param1.readInteger();
         var_1911 = param1.readInteger();
         var_2201 = param1.readInteger();
         _energy = param1.readInteger();
         var_2200 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2202 = param1.readInteger();
         var_321 = param1.readString();
         var_1861 = param1.readInteger();
         var_1910 = param1.readInteger();
         var_1915 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1911;
      }
      
      public function get ownerId() : int
      {
         return var_1910;
      }
      
      public function get age() : int
      {
         return var_1915;
      }
   }
}
