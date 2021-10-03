using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace thinkbridge
{
    public partial class Login : System.Web.UI.Page
    {

        String uid = "ADMIN";
        String sid = "admin";
        String pwd = "ADMIN";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Text = "";
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            try
            {


                if ((txtusername.Text == uid) || (txtusername.Text == sid))
                {


                    if (txtpwd.Text == pwd)
                    {

                        //Server.Transfer("AddProduct.aspx");
                        Response.Redirect("AddProduct.aspx");
                    }

                    else
                    {
                        lblmsg.Visible = true;
                        lblmsg.Text = " Password Is not correct Try again..!!";

                    }
                }
                else
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = " Username Is not correct Try again..!!";
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtusername.Text = " ";
            txtpwd.Text = " ";
        }
    }

}
