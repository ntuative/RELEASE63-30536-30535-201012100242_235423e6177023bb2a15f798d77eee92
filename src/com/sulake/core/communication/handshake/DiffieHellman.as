package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_903:BigInteger;
      
      private var var_2462:BigInteger;
      
      private var var_1776:BigInteger;
      
      private var var_2469:BigInteger;
      
      private var var_1369:BigInteger;
      
      private var var_1777:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1369 = param1;
         this.var_1777 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1369.toString() + ",generator: " + this.var_1777.toString() + ",secret: " + param1);
         this.var_903 = new BigInteger();
         this.var_903.fromRadix(param1,param2);
         this.var_2462 = this.var_1777.modPow(this.var_903,this.var_1369);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1776 = new BigInteger();
         this.var_1776.fromRadix(param1,param2);
         this.var_2469 = this.var_1776.modPow(this.var_903,this.var_1369);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2462.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2469.toRadix(param1);
      }
   }
}
