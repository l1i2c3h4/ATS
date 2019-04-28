using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ATS.ATSEntity
{
    public class BaseView
    {
        public int IDNumber { get; set; }
        public string IDCard { get; set; }
        public string Name { get; set; }
        public string Resume { get; set; }
        public string Interview { get; set; }
        public string EducationalBackgrounp { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string FirstChoice { get; set; }
        public string SecondChoice { get; set; }
        public string Adjust { get; set; }
    }
}