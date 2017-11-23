using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using System.Net;
using EncapsularC;
using DataC;
using UtilitarioC;

namespace LogicaC
{
    public class LMac
    {
        [DllImport("iphlpapi.dll", ExactSpelling = true)]
        public static extern int SendARP(int DestIP, int SrcIP, [Out] byte[] pMacAddr, ref int PhyAddrLen);

        public string GetMAC(ref string IP, ref string HttpContext)
        {
            string MAC = null;

            try
            {
                if (IPAddress.Parse(IP).Equals(IPAddress.Parse("127.0.0.1")))
                {
                    System.Net.IPHostEntry iPHostEntry = Dns.GetHostEntry(HttpContext);//////

                    IP = iPHostEntry.AddressList[1].ToString();
                }

                System.Net.IPAddress ipAddress = IPAddress.Parse(IP);

                byte[] ab = new byte[6];
                int len = ab.Length;

                int r = SendARP((int)ipAddress.Address, 0, ab, ref len);
                MAC = BitConverter.ToString(ab, 0, 6);
            }
            catch (Exception)
            {
                MAC = null;
            }

            return MAC;
        }

    }
}
