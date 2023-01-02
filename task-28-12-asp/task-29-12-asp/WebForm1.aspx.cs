using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_29_12_asp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Guest g = new Guest();
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            g.Id = int.Parse(TextBox1.Text);
            g.Name = TextBox2.Text;
            g.Age = int.Parse(TextBox3.Text);
            ViewState["GuestInfo"] = g;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             Guest rcvGuest = ViewState["GuestInfo"] as Guest;
            Label1.Text = g.Name = rcvGuest.Id + " Your Name is " + rcvGuest.Name;
        }
    }
}
[Serializable]
class Guest
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int Age { get; set; }
}