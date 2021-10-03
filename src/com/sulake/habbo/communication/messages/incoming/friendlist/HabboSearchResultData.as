package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2329:Boolean;
      
      private var var_2330:int;
      
      private var var_2331:Boolean;
      
      private var var_1601:String;
      
      private var var_1289:String;
      
      private var var_1707:int;
      
      private var var_2256:String;
      
      private var var_2332:String;
      
      private var var_2255:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1707 = param1.readInteger();
         this.var_1601 = param1.readString();
         this.var_2256 = param1.readString();
         this.var_2329 = param1.readBoolean();
         this.var_2331 = param1.readBoolean();
         param1.readString();
         this.var_2330 = param1.readInteger();
         this.var_2255 = param1.readString();
         this.var_2332 = param1.readString();
         this.var_1289 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1289;
      }
      
      public function get avatarName() : String
      {
         return this.var_1601;
      }
      
      public function get avatarId() : int
      {
         return this.var_1707;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2329;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2332;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2255;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2331;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2256;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2330;
      }
   }
}
