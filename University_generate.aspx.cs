using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class University_generate : System.Web.UI.Page
{
    dbop ob = new dbop();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string a = "select * from Course";
            DataTable db = ob.ret(a);
            DropDownList1.DataSource = db;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();

            string b = "select * from Batch";
            DataTable db1 = ob.ret(b);
            DropDownList2.DataSource = db1;
            DropDownList2.DataTextField = "BatchName";
            DropDownList2.DataValueField = "Batch_id";
            DropDownList2.DataBind();

            string c = "select * from College";
            DataTable db2 = ob.ret(c);
            DropDownList3.DataSource = db2;
            DropDownList3.DataTextField = "College_Name";
            DropDownList3.DataValueField = "Clg_id";
            DropDownList3.DataBind();





        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string c="select * from student where c_id='"+DropDownList3.SelectedValue+"' and semester='Completed'"; 
         DataTable db = ob.ret(c);
         if (db.Rows.Count > 0)
         {
             foreach (DataRow dr in db.Rows)
             {  string sid = dr[0].ToString();

                 //sem 1

                  DataTable sem1 = new DataTable();
                 sem1.Columns.Add("subid");
                 sem1.Columns.Add("internal");
                 sem1.Columns.Add("external");
               
                 string n = "select * from InternalMark where student_id='"+ sid +"'and sem='1'";
                 DataTable int1 = ob.ret(n);
                
                 if (int1.Rows.Count > 0)
                 {
                     foreach (DataRow drr in int1.Rows)
                     {
                         string subid = drr[2].ToString();
                         string intm=drr[4].ToString();
                         string m = "select * from ExternalMark where student_id='" + sid + "'and sem='1' and sub_id='" + subid + "'";
                         DataTable ex1 = ob.ret(m);
                         DataRow s1 = sem1.NewRow();
                         s1[0] = subid;
                         if (ex1.Rows.Count > 0)
                         {
                             string extm = ex1.Rows[0][4].ToString();
                            
                             s1[1] = intm;
                             s1[2] = extm;
                         }
                         else
                         {
                            
                           
                             s1[0] = subid;
                             s1[1] = intm;
                             s1[2] = "0";
                         }
                         sem1.Rows.Add(s1);
                     }
                 }
                


                 //sem2

                 DataTable sem2 = new DataTable();
                 sem2.Columns.Add("subid");
                 sem2.Columns.Add("internal");
                 sem2.Columns.Add("external");

                 string a = "select * from InternalMark where student_id='" + sid + "'and sem='2'";
                 DataTable int2 = ob.ret(a);

                  if (int2.Rows.Count > 0)
                  {
                       foreach (DataRow drr in int2.Rows)
                       {
                            string subid = drr[2].ToString();
                         string intm=drr[4].ToString();
                         string m = "select * from ExternalMark where student_id='" + sid + "'and sem='2' and sub_id='" + subid + "'";
                         DataTable ex2 = ob.ret(m);
                         DataRow s2 = sem2.NewRow();
                         s2[0] = subid;
                         if (ex2.Rows.Count > 0)
                         {
                             string extm = ex2.Rows[0][4].ToString();
                            
                             s2[1] = intm;
                             s2[2] = extm;
                         }
                       else
                         {
                             
                             s2[0] = subid;
                             s2[1] = intm;
                             s2[2] = "0";
                         }
                         sem2.Rows.Add(s2);
                       }
                  }
                 //sem3
                  DataTable sem3 = new DataTable();
                  sem3.Columns.Add("subid");
                  sem3.Columns.Add("internal");
                  sem3.Columns.Add("external");

                  string b = "select * from InternalMark where student_id='" + sid + "'and sem='3'";
                  DataTable int3 = ob.ret(b);

                  if (int3.Rows.Count > 0)
                  {
                      foreach (DataRow drr in int3.Rows)
                      {
                          string subid = drr[2].ToString();
                          string intm = drr[4].ToString();
                          string m = "select * from ExternalMark where student_id='" + sid + "'and sem='3' and sub_id='" + subid + "'";
                          DataTable ex3 = ob.ret(m);
                          DataRow s3 = sem3.NewRow();
                          s3[0] = subid;
                          if (ex3.Rows.Count > 0)
                          {
                              string extm = ex3.Rows[0][4].ToString();

                              s3[1] = intm;
                              s3[2] = extm;
                          }
                          else
                          {

                              s3[0] = subid;
                              s3[1] = intm;
                              s3[2] = "0";
                          }
                          sem3.Rows.Add(s3);
                      }
                  }
                 //sem4
                  DataTable sem4 = new DataTable();
                  sem4.Columns.Add("subid");
                  sem4.Columns.Add("internal");
                  sem4.Columns.Add("external");

                  string g = "select * from InternalMark where student_id='" + sid + "'and sem='4'";
                  DataTable int4 = ob.ret(g);

                  if (int4.Rows.Count > 0)
                  {
                      foreach (DataRow drr in int4.Rows)
                      {
                          string subid = drr[2].ToString();
                          string intm = drr[4].ToString();
                          string m = "select * from ExternalMark where student_id='" + sid + "'and sem='4' and sub_id='" + subid + "'";
                          DataTable ex4 = ob.ret(m);
                          DataRow s4 = sem4.NewRow();
                          s4[0] = subid;
                          if (ex4.Rows.Count > 0)
                          {
                              string extm = ex4.Rows[0][4].ToString();

                              s4[1] = intm;
                              s4[2] = extm;
                          }
                          else
                          {

                              s4[0] = subid;
                              s4[1] = intm;
                              s4[2] = "0";
                          }
                          sem4.Rows.Add(s4);
                      }
                  }
                 //sem5

                  DataTable sem5 = new DataTable();
                  sem5.Columns.Add("subid");
                  sem5.Columns.Add("internal");
                  sem5.Columns.Add("external");

                  string h = "select * from InternalMark where student_id='" + sid + "'and sem='5'";
                  DataTable int5 = ob.ret(h);

                  if (int5.Rows.Count > 0)
                  {
                      foreach (DataRow drr in int5.Rows)
                      {
                          string subid = drr[2].ToString();
                          string intm = drr[4].ToString();
                          string m = "select * from ExternalMark where student_id='" + sid + "'and sem='5' and sub_id='" + subid + "'";
                          DataTable ex5 = ob.ret(m);
                          DataRow s5 = sem5.NewRow();
                          s5[0] = subid;
                          if (ex5.Rows.Count > 0)
                          {
                              string extm = ex5.Rows[0][4].ToString();

                              s5[1] = intm;
                              s5[2] = extm;
                          }
                          else
                          {

                              s5[0] = subid;
                              s5[1] = intm;
                              s5[2] = "0";
                          }
                          sem5.Rows.Add(s5);
                      }
                  }
                 //sem6

                  DataTable sem6 = new DataTable();
                  sem6.Columns.Add("subid");
                  sem6.Columns.Add("internal");
                  sem6.Columns.Add("external");

                  string p = "select * from InternalMark where student_id='" + sid + "'and sem='6'";
                  DataTable int6 = ob.ret(p);

                  if (int6.Rows.Count > 0)
                  {
                      foreach (DataRow drr in int6.Rows)
                      {
                          string subid = drr[2].ToString();
                          string intm = drr[4].ToString();
                          string m = "select * from ExternalMark where student_id='" + sid + "'and sem='6' and sub_id='" + subid + "'";
                          DataTable ex6 = ob.ret(m);
                          DataRow s6 = sem6.NewRow();
                          s6[0] = subid;
                          if (ex6.Rows.Count > 0)
                          {
                              string extm = ex6.Rows[0][4].ToString();

                              s6[1] = intm;
                              s6[2] = extm;
                          }
                          else
                          {

                              s6[0] = subid;
                              s6[1] = intm;
                              s6[2] = "0";
                          }
                          sem6.Rows.Add(s6);
                      }
                  }



               
                

                 









             }

         }

    }
  
}