using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_28_12_asp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string comment = TextBox1.Text;

            string q = $"insert into Comments (comment ) values ('{comment}')";
            SqlConnection con = new SqlConnection("data source = DESKTOP-J9PIM9O\\SQLEXPRESS ; database=FINAL ; integrated security= sspi");
            SqlCommand comand = new SqlCommand(q, con);
            con.Open();
            comand.ExecuteNonQuery();

            if (comment == "")
            {
                return;
            }
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                "swal('Thank You!', 'Your Comment Added Seccessfully ')", true);

        }
    }
}