package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1599:int = 0;
      
      public static const const_1487:int = 1;
      
      public static const const_1334:int = 2;
      
      public static const const_1764:int = 3;
      
      public static const const_1632:int = 4;
      
      public static const const_1665:int = 5;
      
      public static const const_1417:int = 10;
      
      public static const const_1737:int = 11;
      
      public static const const_1698:int = 12;
      
      public static const const_1803:int = 13;
      
      public static const const_1796:int = 16;
      
      public static const const_1793:int = 17;
      
      public static const const_1637:int = 18;
      
      public static const const_1767:int = 19;
      
      public static const const_1776:int = 20;
      
      public static const const_1587:int = 22;
      
      public static const const_1778:int = 23;
      
      public static const const_1692:int = 24;
      
      public static const const_1633:int = 25;
      
      public static const const_1783:int = 26;
      
      public static const const_1682:int = 27;
      
      public static const const_1641:int = 28;
      
      public static const const_1713:int = 29;
      
      public static const const_1712:int = 100;
      
      public static const const_1784:int = 101;
      
      public static const const_1657:int = 102;
      
      public static const const_1654:int = 103;
      
      public static const const_1586:int = 104;
      
      public static const const_1786:int = 105;
      
      public static const const_1725:int = 106;
      
      public static const const_1694:int = 107;
      
      public static const const_1679:int = 108;
      
      public static const const_1621:int = 109;
      
      public static const const_1733:int = 110;
      
      public static const const_1768:int = 111;
      
      public static const const_1620:int = 112;
      
      public static const const_1749:int = 113;
      
      public static const const_1583:int = 114;
      
      public static const const_1638:int = 115;
      
      public static const const_1717:int = 116;
      
      public static const const_1788:int = 117;
      
      public static const const_1595:int = 118;
      
      public static const const_1589:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1487:
            case const_1417:
               return "banned";
            case const_1334:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
