using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_27_12_asp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Session["count"] = 1;
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label2.Text=DateTime.Now.ToString();
            
        }
    }
}