package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1667:int;
      
      private var var_1668:Boolean;
      
      private var _offerId:int;
      
      private var var_1626:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1668 = param1.readBoolean();
         var_1667 = param1.readInteger();
         var_1626 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1626;
      }
      
      public function get monthsRequired() : int
      {
         return var_1667;
      }
      
      public function get isVip() : Boolean
      {
         return var_1668;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
