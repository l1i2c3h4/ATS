using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ATS.ATSDLL;
using ATS.ATSEntity;

namespace ATS.ATSBLL
{
    public static class HandleBLL
    {
        public static Handle SearchAll(string IDCard)
        {
            Handle handle = null;
            int IDNumber = BaseInformationDLL.SearchIDNumber(IDCard);
            handle = HandleDLL.SearchAll(IDNumber);
            return handle;
        }

        public static void UpdataHandle(string IDNumber, string Interview, string Resume)
        {
            HandleDLL.UpdataHandle(IDNumber,Interview,Resume);
        }
    }
}