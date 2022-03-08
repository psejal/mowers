using ProjectLibrary;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasProject
{
    public partial class Inventory : System.Web.UI.Page
    {

            protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
                pnlContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");

			gvFull.Visible = true;
			gvInv.Visible = false;
			gvDate.Visible = false;

		}

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

       

	
		protected void btnInv_Click(object sender, EventArgs e)
		{
			
			gvFull.Visible = false;
			gvInv.Visible = true;
			gvDate.Visible = false;
		}

		protected void ddlProductOrderDate_SelectedIndexChanged(object sender, EventArgs e)
		{
			gvFull.Visible = false;
			gvDate.Visible = true;
			gvInv.Visible = false;
		}
	}
}