using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class University : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_Course.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_Home.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_College.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_Subject.aspx");
    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("University_Notification.aspx");


    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_Complaints.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_Callocation.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_Batch.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_InternalUpload.aspx");
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_ExternalView.aspx");
    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        Response.Redirect("University_viewstudent.aspx");
    }
}
