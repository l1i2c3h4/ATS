using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATSEntity
{
    /// <summary>
    /// 招聘人员基本信息
    /// </summary>
    public class BaseInfomation
    {
        public int IDNumber { get; set; }
        public string Name { get; set; }
        public int IDCare { get; set; }
        public string Gender { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Nationality { get; set; }
        public string MaritalStatus { get; set; }
        public string PoliticalStatus { get; set; }
        public string NativePlace { get; set; }
        public string Height { get; set; }
        public string Weight { get; set; }
        public string CommunicableDisease { get; set; }
        public string Achromatopsia { get; set; }
        public string Email { get; set; }
        public int Phone { get; set; }
        public string Address { get; set; }
        public string FirstChoice { get; set; }
        public string SecondChoice { get; set; }
        public string Adjust { get; set; }


    }
}
