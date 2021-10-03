package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_1627:int;
      
      private var var_1132:String = "";
      
      private var var_963:int;
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1132 = param1;
      }
      
      public function get topicIndex() : int
      {
         return var_1627;
      }
      
      public function set topicIndex(param1:int) : void
      {
         var_1627 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1132;
      }
      
      public function flush() : void
      {
         var_963 = 0;
         var_1132 = "";
      }
      
      public function get userSelected() : Boolean
      {
         return var_963 > 0;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_963 = param1;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function get reportedUserId() : int
      {
         return var_963;
      }
   }
}
