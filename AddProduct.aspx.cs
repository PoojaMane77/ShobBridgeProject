using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
namespace thinkbridge
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection("server=LAVANYA;uid=sa;pwd=lalilali;database=thinkbridge;");
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg2.Text = "";
            lblmsg3.Text = "";
            if (!IsPostBack)
            {
                fillcategories();
                fillbrands();
                fillsizes();
            }
        }
        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void btnaddproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void btnviewproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProduct.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btncancel2_Click(object sender, EventArgs e)
        {
            txtProductName.Text = "";
            ddbrand.SelectedIndex = 0;
            txtProductPrice.Text = "";
            txtDescription.Text = "";

            txtProductcolor.Text = "";

        }
        public void fillcategories()
        {
            try
            {
                DataTable dt = new DataTable();
                string query = "Select * from Categories";

                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.Fill(dt);

                ddcat.DataValueField = "CategoryId";
                ddcat.DataTextField = "CategoryName";


                ddcat.DataSource = dt;
                ddcat.DataBind();

                ddcat.Items.Insert(0, "Select");
            }
            catch (Exception ex)
            {
                //ex.Message.ToString();
                this.LogError(ex);
            }
        }
        public void fillbrands()
        {
            try
            {

                DataTable dt = new DataTable();
                string query = "Select * from Brands ";

                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.Fill(dt);

                ddbrand.DataValueField = "BrandId";
                ddbrand.DataTextField = "BrandName";


                ddbrand.DataSource = dt;
                ddbrand.DataBind();

                ddbrand.Items.Insert(0, "Select");
            }
            catch (Exception ex)
            {
             
                this.LogError(ex);
            }
        }


        public void fillsizes()
        {
            try
            {
                DataTable dt = new DataTable();
                string query = "Select * from Sizes";

                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.Fill(dt);

                ddsize.DataValueField = "SizeId";
                ddsize.DataTextField = "Size";


                ddsize.DataSource = dt;
                ddsize.DataBind();

                ddsize.Items.Insert(0, "Select");
            }
            catch (Exception ex)
            {
              
                this.LogError(ex);

            }
        }


        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {

                string insertquery = "Insert Into Products(ProductName,Category,Brand,Size,Price,Description,Color,Image ) values ('" + txtProductName.Text + "','" + ddcat.SelectedItem.Text + "','" + ddbrand.SelectedItem.Text + "','" + ddsize.SelectedItem.Text + "','" + txtProductPrice.Text + "','" + txtDescription.Text + "','" + txtProductcolor.Text + "','" + img.ImageUrl + "')";
                con.Open();
                SqlCommand comm = new SqlCommand(insertquery);
                comm.Connection = con;
                comm.ExecuteNonQuery();
                con.Close();
                txtProductName.Text = "";
                ddcat.SelectedIndex = 0;
                ddbrand.SelectedIndex = 0;
                ddsize.SelectedIndex = 0;
                txtProductPrice.Text = "";
                txtDescription.Text = "";

                txtProductcolor.Text = "";
                img.ImageUrl = "";

                lblmsg2.Visible = true;
                lblmsg2.Text = "Product Added successfully";
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
        protected void imgupload_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                string folderpath = Server.MapPath("~/Images/");
                if (!Directory.Exists(folderpath))
                {

                    Directory.CreateDirectory(folderpath);
                }
                FileUpload.SaveAs(folderpath + Path.GetFileName(FileUpload.FileName));
                img.ImageUrl = "~/Images/" + Path.GetFileName(FileUpload.FileName);
                lblmsg3.Visible = true;
                lblmsg3.Text = "Image uploaded";
            }
        }

        protected void imgcancel_Click(object sender, EventArgs e)
        {
            img.ImageUrl = "";
        }


        //protected void UploadFile(object sender, EventArgs e)
        //{
        //    string folderPath = Server.MapPath("~/Images/");

        //    //Check whether Directory (Folder) exists.
        //    if (!Directory.Exists(folderPath))
        //    {
        //        //If Directory (Folder) does not exists Create it.
        //        Directory.CreateDirectory(folderPath);
        //    }

        //    //Save the File to the Directory (Folder).
        //    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //    //Display the Picture in Image control.
        //    Image1.ImageUrl = "~/Images/" + Path.GetFileName(FileUpload1.FileName);
        //    //lblmsg3.Visible = true;
        //    //lblmsg3.Text="Image uploaded Successfully";
        //}
    
    }
}


