package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1076:int = 0;
      
      private var var_1261:int = 0;
      
      private var var_1970:String = "";
      
      private var var_1077:int = 0;
      
      private var var_1973:String = "";
      
      private var var_1972:int = 0;
      
      private var var_1574:String = "";
      
      private var var_1968:int = 0;
      
      private var var_1969:int = 0;
      
      private var var_1971:String = "";
      
      private var var_1974:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1968 = param1;
         var_1971 = param2;
         var_1574 = param3;
         var_1970 = param4;
         var_1973 = param5;
         if(param6)
         {
            var_1261 = 1;
         }
         else
         {
            var_1261 = 0;
         }
         var_1972 = param7;
         var_1969 = param8;
         var_1077 = param9;
         var_1974 = param10;
         var_1076 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1968,var_1971,var_1574,var_1970,var_1973,var_1261,var_1972,var_1969,var_1077,var_1974,var_1076];
      }
      
      public function dispose() : void
      {
      }
   }
}
