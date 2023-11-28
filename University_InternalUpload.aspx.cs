using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class University_InternalUpload : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.SetActiveView(View1);
            string s1 = "select * from Course";
            DataTable db1 = ob.ret(s1);
            string s2 = "select * from Batch";
            DataTable db2 = ob.ret(s2);
            string s3 = "select * from College";
            DataTable db3 = ob.ret(s3);

            DropDownList1.DataSource = db1;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();


            DropDownList2.DataSource = db2;
            DropDownList2.DataTextField = "BatchName";
            DropDownList2.DataValueField = "Batch_id";
            DropDownList2.DataBind();

            DropDownList4.DataSource = db3;
            DropDownList4.DataTextField = "College_Name";
            DropDownList4.DataValueField = "Clg_id";
            DropDownList4.DataBind();
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        string t = "SELECT Batch.BatchName, Course.c_name, student.*FROM  Batch INNER JOIN student ON Batch.Batch_id = student.Batch_id INNER JOIN Course ON student.c_id = Course.c_id where student.c_id='" + DropDownList1.SelectedValue + "'and student.Batch_id='" + DropDownList2.Text + "'and student.semester='" + DropDownList3.Text + "'";
        DataTable db5 = ob.ret(t);
        DataGrid1.DataSource = db5;
        DataGrid1.DataBind();

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        string g = "select * from subject where c_id='" + DropDownList1.SelectedValue + "' and Sem='" + DropDownList3.Text + "'";
        DataTable db6 = ob.ret(g);
        DataGrid2.DataSource = db6;
        DataGrid2.DataBind();
        MultiView1.SetActiveView(View2);
         Session["Reg_id"] = e.Item.Cells[1].Text;
            

    }

  // protected void Button2_Click(object sender, EventArgs e)
    //{
       // foreach (DataGridItem dr in DataGrid2.Items)
       // {
            //TextBox b = (TextBox)dr.FindControl("TextBox2");
            //CheckBox ch = (CheckBox)dr.FindControl("CheckBox1");
            //if (ch.Checked == true)
           // {

               // string m = "select max(external_id) from ExternalMark";
               // int sid = ob.maxid(m);

              //  String g = b.Text;
              //  String scode = dr.Cells[0].Text;


               // string s = "insert into ExternalMark values('" + sid + "','" + Session["Reg_id"] + "','" + scode + "','" + DropDownList3.Text + "','" + g + "','pass')";
                //ob.nonreturn(s);

            //}
       // }
         //  Response.Write("<script>alert('Sucess');window.location='University_InternalUpload.aspx'</script>");
           
  // }
   protected void Button2_Click1(object sender, EventArgs e)
   {

       foreach (DataGridItem dr in DataGrid2.Items)
       {
           TextBox b = (TextBox)dr.FindControl("TextBox2");
           CheckBox ch = (CheckBox)dr.FindControl("CheckBox1");
           //if (ch.Checked == true)
           {

               string m = "select max(external_id) from ExternalMark";
               int sid = ob.maxid(m);

               String g = b.Text;
               String scode = dr.Cells[0].Text;
               int scr = Convert.ToInt32(scode);
               string res = "";
               if ((scr>=4) && (scr<=10))
               {
                   res = "p";
               }
               else{
               res="f";
               }
               


               //string s = "insert into ExternalMark values('" + sid + "','" + Session["Reg_id"] + "','" + scode + "','" + DropDownList3.Text + "','" + g + "','pass')";
               //ob.nonreturn(s);

           }
       }
       Response.Write("<script>alert('Sucess');window.location='University_InternalUpload.aspx'</script>");
           

   }
   protected void Button1_Click(object sender, EventArgs e)
   {
       MultiView1.SetActiveView(View1);
   }
}