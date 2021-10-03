package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1303:int = 2;
      
      public static const const_1452:int = 1;
       
      
      private var var_2243:int;
      
      private var var_2242:int;
      
      private var var_2019:Boolean;
      
      private var var_2240:int;
      
      private var var_1371:String;
      
      private var var_2244:Boolean;
      
      private var var_2017:int;
      
      private var var_2241:int;
      
      private var var_2018:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2242;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2019;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2241;
      }
      
      public function get memberPeriods() : int
      {
         return var_2240;
      }
      
      public function get productName() : String
      {
         return var_1371;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2244;
      }
      
      public function get responseType() : int
      {
         return var_2243;
      }
      
      public function get pastClubDays() : int
      {
         return var_2018;
      }
      
      public function get pastVipDays() : int
      {
         return var_2017;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1371 = param1.readString();
         var_2242 = param1.readInteger();
         var_2240 = param1.readInteger();
         var_2241 = param1.readInteger();
         var_2243 = param1.readInteger();
         var_2244 = param1.readBoolean();
         var_2019 = param1.readBoolean();
         var_2018 = param1.readInteger();
         var_2017 = param1.readInteger();
         return true;
      }
   }
}
