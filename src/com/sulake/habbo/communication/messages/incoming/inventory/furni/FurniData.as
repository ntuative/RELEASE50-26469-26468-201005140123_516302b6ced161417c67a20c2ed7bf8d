package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1397:String;
      
      private var include:String;
      
      private var var_1823:Boolean;
      
      private var var_1532:int;
      
      private var var_1721:int;
      
      private var var_1824:Boolean;
      
      private var var_1554:String = "";
      
      private var var_1719:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1325:int;
      
      private var var_1720:Boolean;
      
      private var var_1723:int = -1;
      
      private var var_1659:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1721 = param1;
         include = param2;
         _objId = param3;
         var_1325 = param4;
         _category = param5;
         var_1397 = param6;
         var_1823 = param7;
         var_1719 = param8;
         var_1720 = param9;
         var_1824 = param10;
         var_1659 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1554;
      }
      
      public function get extra() : int
      {
         return var_1532;
      }
      
      public function get classId() : int
      {
         return var_1325;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1824;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1823;
      }
      
      public function get stripId() : int
      {
         return var_1721;
      }
      
      public function get stuffData() : String
      {
         return var_1397;
      }
      
      public function get songId() : int
      {
         return var_1723;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1554 = param1;
         var_1532 = param2;
      }
      
      public function get itemType() : String
      {
         return include;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1659;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1720;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1719;
      }
   }
}
