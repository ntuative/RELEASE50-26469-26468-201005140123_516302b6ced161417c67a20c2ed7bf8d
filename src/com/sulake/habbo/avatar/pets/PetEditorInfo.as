package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1815:Boolean;
      
      private var var_1626:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1815 = Boolean(parseInt(param1.@club));
         var_1626 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1815;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1626;
      }
   }
}
