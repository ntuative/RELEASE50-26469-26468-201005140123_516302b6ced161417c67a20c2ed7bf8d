package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1581:String;
      
      private var var_2011:int;
      
      private var var_2014:int;
      
      private var var_2013:int;
      
      private var var_2012:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2011 = param1.readInteger();
         var_2013 = param1.readInteger();
         var_2014 = param1.readInteger();
         var_2012 = param1.readString();
         var_1581 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1581;
      }
      
      public function get hour() : int
      {
         return var_2011;
      }
      
      public function get minute() : int
      {
         return var_2013;
      }
      
      public function get chatterName() : String
      {
         return var_2012;
      }
      
      public function get chatterId() : int
      {
         return var_2014;
      }
   }
}
