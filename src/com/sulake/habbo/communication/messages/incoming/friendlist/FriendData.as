package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_321:String;
      
      private var var_1291:String;
      
      private var var_1290:String;
      
      private var var_1156:int;
      
      private var var_610:int;
      
      private var var_1289:String;
      
      private var _name:String;
      
      private var var_1154:Boolean;
      
      private var var_767:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_610 = param1.readInteger();
         this.var_767 = param1.readBoolean();
         this.var_1154 = param1.readBoolean();
         this.var_321 = param1.readString();
         this.var_1156 = param1.readInteger();
         this.var_1290 = param1.readString();
         this.var_1291 = param1.readString();
         this.var_1289 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_610;
      }
      
      public function get realName() : String
      {
         return var_1289;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1290;
      }
      
      public function get categoryId() : int
      {
         return var_1156;
      }
      
      public function get online() : Boolean
      {
         return var_767;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1154;
      }
      
      public function get lastAccess() : String
      {
         return var_1291;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_321;
      }
   }
}
