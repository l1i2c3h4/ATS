using ATS.ATSEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ATS.ATSDLL;
using System.Data;


namespace ATS.ATSBLL
{
    public static class BaseInformationBLL
    {
        public static int AddBaseInformation(BaseInformation b, Family f, Study s, Work w)
        {

            int i = BaseInformationDLL.SearchBase(b.IDCare);
            int IDNumber = 0;
            if (i == 0)
            {
                b.ApplyNumber = 1;
                BaseInformationDLL.AddBaseInformation(b, f, s, w);
                IDNumber = BaseInformationDLL.SearchIDNumber(b.IDCare);
                HandleDLL.AddHandle(IDNumber);
            }

            else

            {
                b.ApplyNumber = i + 1;
                BaseInformationDLL.UpdateBase(b, f, s, w);
                IDNumber = BaseInformationDLL.SearchIDNumber(b.IDCare);
            }


            return IDNumber;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="IDCard"></param>
        /// <returns></returns>
        public static BaseInformationALL SearchAll(string IDCard)
        {
            return BaseInformationDLL.SearchALL(IDCard);
        }

        public static DataTable SearchView(string beginTime, string endTime,string sortField, string des)
        {
            return BaseInformationDLL.SearchView(beginTime, endTime, sortField, des);
        }

        public static void deletBaseInformation(string IDNumber)
        {
            HandleDLL.Delethandle(IDNumber);
            BaseInformationDLL.DeletBaseInformation(IDNumber);
        }
    }
}