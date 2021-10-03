package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1220:BigInteger;
      
      private var var_603:BigInteger;
      
      private var var_1478:BigInteger;
      
      private var var_1479:BigInteger;
      
      private var var_1859:BigInteger;
      
      private var var_1858:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1220 = param1;
         var_1478 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1859.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1479 = new BigInteger();
         var_1479.fromRadix(param1,param2);
         var_1859 = var_1479.modPow(var_603,var_1220);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1858.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1220.toString() + ",generator: " + var_1478.toString() + ",secret: " + param1);
         var_603 = new BigInteger();
         var_603.fromRadix(param1,param2);
         var_1858 = var_1478.modPow(var_603,var_1220);
         return true;
      }
   }
}
