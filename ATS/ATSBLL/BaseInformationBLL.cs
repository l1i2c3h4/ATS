using ATSEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ATS.ATSDLL;

namespace ATS.ATSBLL
{
    public static class BaseInformationBLL
    {
        public static int AddBaseInformation(BaseInformation b, Family f, Study s, Work w)
        {

            int i = BaseInformationDLL.SearchBase(b.IDCare);

            if (i == 0)
            {
                b.ApplyNumber = 1;
                BaseInformationDLL.AddBaseInformation(b, f, s, w);
            }

            else

            {
                b.ApplyNumber = i + 1;
                BaseInformationDLL.UpdateBase(b, f, s, w);
            }

            int IDNumber = BaseInformationDLL.SearchIDNumber(b.IDCare);

            HandleDLL.AddHandle(IDNumber);

            return IDNumber;
        }
    }
}