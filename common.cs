using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace FBLA
{
    public class common
    {
        public static string key = "Dkoppu";
        public static string Encryptword(string Encryptval)
        {
            byte[] SrctArray;
            byte[] EnctArray = UTF8Encoding.UTF8.GetBytes(Encryptval);
            SrctArray = UTF8Encoding.UTF8.GetBytes(key);
            TripleDESCryptoServiceProvider objt = new TripleDESCryptoServiceProvider();
            MD5CryptoServiceProvider objcrpt = new MD5CryptoServiceProvider();
            SrctArray = objcrpt.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            objcrpt.Clear();
            objt.Key = SrctArray;
            objt.Mode = CipherMode.ECB;
            objt.Padding = PaddingMode.PKCS7;
            ICryptoTransform crptotrns = objt.CreateEncryptor();
            byte[] resArray = crptotrns.TransformFinalBlock(EnctArray, 0, EnctArray.Length);
            objt.Clear();
            return Convert.ToBase64String(resArray, 0, resArray.Length);
        }
        public static string Decryptword(string DecryptText)
        {
            byte[] SrctArray;
            byte[] DrctArray = Convert.FromBase64String(DecryptText);
            SrctArray = UTF8Encoding.UTF8.GetBytes(key);
            TripleDESCryptoServiceProvider objt = new TripleDESCryptoServiceProvider();
            MD5CryptoServiceProvider objmdcript = new MD5CryptoServiceProvider();
            SrctArray = objmdcript.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            objmdcript.Clear();
            objt.Key = SrctArray;
            objt.Mode = CipherMode.ECB;
            objt.Padding = PaddingMode.PKCS7;
            ICryptoTransform crptotrns = objt.CreateDecryptor();
            byte[] resArray = crptotrns.TransformFinalBlock(DrctArray, 0, DrctArray.Length);
            objt.Clear();
            return UTF8Encoding.UTF8.GetString(resArray);
        }
        public static CurrentQuarterInfo GetCurrentQurterInfo()
        {
            //ManageQuarter obj = new ManageQuarter();
            CurrentQuarterInfo objCurrentQurter = new CurrentQuarterInfo();
            DateTime Today = DateTime.Now;
            int getMonth = Today.Month;
            if (getMonth > 1 && getMonth <= 3)
            {
                DateTime CurrentMonthEnddateDate = new DateTime(Today.Year, 3, 1).AddMonths(1).AddDays(-1);
                var DaysLEftForThisQurter = (CurrentMonthEnddateDate - Today).TotalDays;
                objCurrentQurter.CurrentQurter = 1;
                objCurrentQurter.DaysLeft = (int)DaysLEftForThisQurter;

            }
            else if (getMonth > 3 && getMonth <= 6)
            {
                DateTime CurrentMonthEnddateDate = new DateTime(Today.Year, 6, 1).AddMonths(1).AddDays(-1);
                var DaysLEftForThisQurter = (CurrentMonthEnddateDate - Today).TotalDays;
                objCurrentQurter.CurrentQurter = 2;
                objCurrentQurter.DaysLeft = (int)DaysLEftForThisQurter;
            }
            else if (getMonth > 6 && getMonth <= 9)
            {
                DateTime CurrentMonthEnddateDate = new DateTime(Today.Year, 9, 1).AddMonths(1).AddDays(-1);
                var DaysLEftForThisQurter = (CurrentMonthEnddateDate - Today).TotalDays;
                objCurrentQurter.CurrentQurter = 3;
                objCurrentQurter.DaysLeft = (int)DaysLEftForThisQurter;
            }
            else if (getMonth > 9 && getMonth <= 12)
            {
                DateTime CurrentMonthEnddateDate = new DateTime(Today.Year, 12, 1).AddMonths(1).AddDays(-1);
                var DaysLEftForThisQurter = (CurrentMonthEnddateDate - Today).TotalDays;
                objCurrentQurter.CurrentQurter = 4;
                objCurrentQurter.DaysLeft = (int)DaysLEftForThisQurter;
            }
            objCurrentQurter.currentYear = DateTime.Now.Year;
            return objCurrentQurter;
        }
    }
    public class CurrentQuarterInfo
    {
        public string TimeLeft { get; set; }
        public int DaysLeft { get; set; }
        public int CurrentQurter { get; set; }
        public int currentYear { get; set; }
    }
}