using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    dbop ob = new dbop();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string n =" Select* from Login where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
        DataTable db1 = ob.ret(n);
        if (db1.Rows.Count > 0)
        {
            string type = db1.Rows[0][2].ToString();
            if (type == "admin")
            {
                Response.Redirect("Uhome.aspx");
            }
            else {
                string ss = "SELECT Clg_id FROM College WHERE (e_id = '"+TextBox1.Text+"')";
                DataTable db2 = ob.ret(ss);
                if (db2.Rows.Count > 0)
                {
                    Session["clgid"] = db2.Rows[0][0].ToString();
                    Response.Redirect("Chome.aspx");
                }
                else
                {

                    Response.Write("<script>alert('Invalid username or password');window.location='Login.aspx'</script>");
        
                
                }
                }

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        
    }
   
} 