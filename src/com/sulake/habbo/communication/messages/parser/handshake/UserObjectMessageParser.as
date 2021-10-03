package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_321:String;
      
      private var var_2347:String;
      
      private var var_2350:int;
      
      private var var_2351:int;
      
      private var var_626:String;
      
      private var var_1289:String;
      
      private var _name:String;
      
      private var var_475:int;
      
      private var var_818:int;
      
      private var var_2349:int;
      
      private var var_1893:int;
      
      private var var_2348:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2351;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1289;
      }
      
      public function get customData() : String
      {
         return this.var_2347;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_475;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2350;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2348;
      }
      
      public function get figure() : String
      {
         return this.var_321;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1893;
      }
      
      public function get sex() : String
      {
         return this.var_626;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_321 = param1.readString();
         this.var_626 = param1.readString();
         this.var_2347 = param1.readString();
         this.var_1289 = param1.readString();
         this.var_2349 = param1.readInteger();
         this.var_2348 = param1.readString();
         this.var_2350 = param1.readInteger();
         this.var_2351 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this.var_818 = param1.readInteger();
         this.var_475 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2349;
      }
      
      public function get respectLeft() : int
      {
         return this.var_818;
      }
   }
}
