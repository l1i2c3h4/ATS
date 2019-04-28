using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATS.ATSEntity
{
    /// <summary>
    /// 招聘人员基本信息
    /// </summary>
    public class BaseInformation
    {
        public int IDNumber { get; set; }
        public string Name { get; set; }
        public string IDCare { get; set; }
        public string Gender { get; set; }
        public string DateOfBirth { get; set; }
        public string MaritalStatus { get; set; }
        public string PoliticalStatus { get; set; }
        public string NativePlace { get; set; }
        public string EducationalBackgrounp { get; set; } 
        public string Height { get; set; }
        public string Weight { get; set; }
        public string CommunicableDisease { get; set; }
        public string Achromatopsia { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string FirstChoice { get; set; }
        public string SecondChoice { get; set; }
        public string Adjust { get; set; }
        public string EstimatedTime { get; set; }
        public int ApplyNumber { get; set; }


    }
}

