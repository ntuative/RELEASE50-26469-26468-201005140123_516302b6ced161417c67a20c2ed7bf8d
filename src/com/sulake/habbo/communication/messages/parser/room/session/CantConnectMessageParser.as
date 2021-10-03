package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1541:int = 2;
      
      public static const const_1160:int = 4;
      
      public static const const_1209:int = 1;
      
      public static const const_1178:int = 3;
       
      
      private var var_1019:int = 0;
      
      private var var_852:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1019;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1019 = param1.readInteger();
         if(var_1019 == 3)
         {
            var_852 = param1.readString();
         }
         else
         {
            var_852 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1019 = 0;
         var_852 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_852;
      }
   }
}
