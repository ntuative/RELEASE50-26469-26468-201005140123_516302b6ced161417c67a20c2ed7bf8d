package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_1903:String;
      
      private var var_396:int;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function get flatName() : String
      {
         return var_1903;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_396 = param1.readInteger();
         this.var_1903 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_396 + ", " + this.var_1903);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get flatId() : int
      {
         return var_396;
      }
   }
}
