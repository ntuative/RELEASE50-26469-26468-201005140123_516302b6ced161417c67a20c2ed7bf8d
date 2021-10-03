package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_610:String;
      
      private var _id:int;
      
      private var var_2237:String = "";
      
      private var var_2236:int;
      
      private var var_2235:String;
      
      private var var_1624:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2236 = parseInt(param1.@pattern);
         var_610 = String(param1.@gender);
         var_1624 = Boolean(parseInt(param1.@colorable));
         var_2237 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2237;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1624;
      }
      
      public function get gender() : String
      {
         return var_610;
      }
      
      public function get patternId() : int
      {
         return var_2236;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2235;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2235 = param1;
      }
   }
}
