using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasProject
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			gvDetail.Visible = true;
			gvOrderDetail.Visible = false;
		}

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void btnNewOrder_Click(object sender, EventArgs e)
        {
          
        }

		protected void odsDate_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
		{

		}

		protected void btnOrder_Click(object sender, EventArgs e)
		{
			gvDetail.Visible = false;
			gvOrderDetail.Visible = true;
		}
	}
}