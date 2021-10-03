package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_114:String = "RWPUE_VOTE_RESULT";
      
      public static const const_123:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1337:int;
      
      private var var_1043:String;
      
      private var var_730:Array;
      
      private var var_969:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1043 = param2;
         var_969 = param3;
         var_730 = param4;
         if(var_730 == null)
         {
            var_730 = [];
         }
         var_1337 = param5;
      }
      
      public function get votes() : Array
      {
         return var_730.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1337;
      }
      
      public function get question() : String
      {
         return var_1043;
      }
      
      public function get choices() : Array
      {
         return var_969.slice();
      }
   }
}
