using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;
namespace thinkbridge
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection("server=LAVANYA;uid=sa;pwd=lalilali;database=thinkbridge;");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //Binddata();
            }
            lblupdate.Text = "";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            try
            {
                DataSet ds = new DataSet();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from Products";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                gvProducts.DataSource = ds;
                gvProducts.DataBind();
            }
            catch (Exception ex)
            {

                this.LogError(ex);
            }

        }

        private void LogError(Exception ex)
        {
            string message = string.Format("Time: {0}", DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss tt"));
            message += Environment.NewLine;
            message += "-----------------------------------------------------------";
            message += Environment.NewLine;
            message += string.Format("Message: {0}", ex.Message);
            message += Environment.NewLine;
            message += string.Format("StackTrace: {0}", ex.StackTrace);
            message += Environment.NewLine;
            message += string.Format("Source: {0}", ex.Source);
            message += Environment.NewLine;
            message += string.Format("TargetSite: {0}", ex.TargetSite.ToString());
            message += Environment.NewLine;
            message += "-----------------------------------------------------------";
            message += Environment.NewLine;
            string path = Server.MapPath("~/ErrorLog.txt");
            using (StreamWriter writer = new StreamWriter(path, true))
            {
                writer.WriteLine(message);
                writer.Close();
            }
        }
        public void Binddata()
        {
            try
            {
                DataSet ds = new DataSet();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from Products";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                gvProducts.DataSource = ds;
                gvProducts.DataBind();
            }
            catch (Exception ex)
            {

                this.LogError(ex);
            }
        }

        protected void gvProducts_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            gvProducts.EditIndex = e.NewEditIndex;

            Binddata();
        }
        protected void gvProducts_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            try
            {

                string i = (gvProducts.Rows[e.RowIndex].FindControl("gvlblProductid") as Label).Text;


                int ide = Convert.ToInt32(i);


                string name = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtproductname") as TextBox).Text;
                string cat = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtcat") as TextBox).Text;

                string brand = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtbrand") as TextBox).Text;
                string size = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtsize") as TextBox).Text;
                string p = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtprice") as TextBox).Text;


                decimal price = Convert.ToDecimal(p);
                string desc = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtdesc") as TextBox).Text;
                string clr = (gvProducts.Rows[e.RowIndex].FindControl("gvtxtclr") as TextBox).Text;

                string image = (gvProducts.Rows[e.RowIndex].FindControl("gvimgedit") as Image).ImageUrl;

                string updatequery = "Update Products set ProductName='" + name + "',Category='" + cat + "',Brand='" + brand + "',Size='" + size + "',Price='" + price + "',Description='" + desc + "',Color='" + clr + "',Image='" + image + "' where ProductId='" + ide + "'";

                SqlCommand cmd = new SqlCommand(updatequery);

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();



                Binddata();
                lblupdate.Visible = true;
                lblupdate.Text = "Product details updated successfully";

            }
            catch (Exception ex)
            {

                this.LogError(ex);
            }
        }
        protected void gvProducts_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            gvProducts.EditIndex = -1;
            Binddata();
        }

        protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string i2 = (gvProducts.Rows[e.RowIndex].FindControl("gvlblProductid") as Label).Text;

                int ide2 = Convert.ToInt32(i2);

                con.Open();
                SqlCommand cmd = new SqlCommand("delete FROM Products where Productid='" + Convert.ToInt32(ide2) + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();


                Binddata();
                lblupdate.Visible = true;
                lblupdate.Text = "Product details deleted successfully";

            }
            catch (Exception ex)
            {

                this.LogError(ex);
            }
        }
        protected void gvProducts_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {

            gvProducts.PageIndex = e.NewPageIndex;
            Binddata();
        }

        protected void btnaddproduct2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void btnviewproduct2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");
        }

        protected void btnhome2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void btnlogout2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}