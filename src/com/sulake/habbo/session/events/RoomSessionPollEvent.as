package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_137:String = "RSPE_POLL_CONTENT";
      
      public static const const_111:String = "RSPE_POLL_OFFER";
      
      public static const const_66:String = "RSPE_POLL_ERROR";
       
      
      private var var_1031:Array = null;
      
      private var var_1248:String = "";
      
      private var var_1349:String;
      
      private var var_1247:String = "";
      
      private var var_1032:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1031;
      }
      
      public function get startMessage() : String
      {
         return var_1248;
      }
      
      public function get summary() : String
      {
         return var_1349;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1248 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1032 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1349 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1032;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1247 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1247;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1031 = param1;
      }
   }
}
