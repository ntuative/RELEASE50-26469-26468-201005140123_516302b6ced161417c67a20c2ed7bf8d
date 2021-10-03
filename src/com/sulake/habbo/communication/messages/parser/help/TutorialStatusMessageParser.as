package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_975:Boolean;
      
      private var var_974:Boolean;
      
      private var var_973:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_975;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_974;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_973 = param1.readBoolean();
         var_974 = param1.readBoolean();
         var_975 = param1.readBoolean();
         return true;
      }
      
      public function get method_6() : Boolean
      {
         return var_973;
      }
      
      public function flush() : Boolean
      {
         var_973 = false;
         var_974 = false;
         var_975 = false;
         return true;
      }
   }
}
