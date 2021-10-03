package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPresentEvent extends RoomSessionEvent
   {
      
      public static const const_279:String = "RSPE_PRESENT_OPENED";
       
      
      private var var_1325:int = 0;
      
      private var include:String = "";
      
      public function RoomSessionPresentEvent(param1:String, param2:IRoomSession, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param2,param5,param6);
         var_1325 = param3;
         include = param4;
      }
      
      public function get classId() : int
      {
         return var_1325;
      }
      
      public function get itemType() : String
      {
         return include;
      }
   }
}
