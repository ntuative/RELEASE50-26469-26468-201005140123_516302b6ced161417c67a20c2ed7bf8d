package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1358:int;
      
      private var var_1357:String;
      
      private var var_1783:String;
      
      private var _index:int;
      
      private var var_1784:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1358 = param1;
         var_1783 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1357;
      }
      
      public function get questionId() : int
      {
         return var_1358;
      }
      
      public function get questionText() : String
      {
         return var_1783;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1357 = param1;
         var_1784 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_1784;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
