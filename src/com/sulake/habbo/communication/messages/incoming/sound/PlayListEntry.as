package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1723:int;
      
      private var var_1887:int = 0;
      
      private var var_1888:String;
      
      private var var_1890:int;
      
      private var var_1889:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1723 = param1;
         var_1890 = param2;
         var_1889 = param3;
         var_1888 = param4;
      }
      
      public function get length() : int
      {
         return var_1890;
      }
      
      public function get name() : String
      {
         return var_1889;
      }
      
      public function get creator() : String
      {
         return var_1888;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1887;
      }
      
      public function get id() : int
      {
         return var_1723;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1887 = param1;
      }
   }
}
