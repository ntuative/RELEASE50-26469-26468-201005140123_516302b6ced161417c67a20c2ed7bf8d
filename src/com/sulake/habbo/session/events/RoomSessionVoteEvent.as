package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_114:String = "RSPE_VOTE_RESULT";
      
      public static const const_123:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1337:int = 0;
      
      private var var_1043:String = "";
      
      private var var_730:Array;
      
      private var var_969:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_969 = [];
         var_730 = [];
         super(param1,param2,param7,param8);
         var_1043 = param3;
         var_969 = param4;
         var_730 = param5;
         if(var_730 == null)
         {
            var_730 = [];
         }
         var_1337 = param6;
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
