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
    public partial class Customer : System.Web.UI.Page
    {
        static ProjectLibrary.EmmasDataSet dsEmmas;
        private static DataRow[] rows;

        static Customer()
        {
            dsEmmas = new EmmasDataSet();
            ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter daCustomer = new ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter();
	
			try
            {
                daCustomer.Fill(dsEmmas.customer);
            }
            catch { }
        }

		private static bool refresh = true;
		private static int id = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
			ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter daCustomer = new ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter();

			//txtadd.Visible = false;
			//txtID.Visible = false;
			//txtct.Visible = false;
			//txtcustID.Visible = false;
			//txtlname.Visible = false;
			//txtphn.Visible = false;
			//txtpost.Visible = false;
			//txtfname.Visible = false;
			//txteml.Visible = false;
			//lblfname.Visible = false;
			//lbllname.Visible = false;
			//lblphn.Visible = false;
			//lblpost.Visible = false;
			//lblct.Visible = false;
			//lbleml.Visible = false;
			//lbladd.Visible = false;
			//btnUpdate.Visible = false;
			//btnDelete.Visible = false;
			//pnlTab.Visible = false;

			dsEmmas.customer.AcceptChanges();
			dsEmmas.customer.Clear();
			daCustomer.Fill(dsEmmas.customer);
			if (User.Identity.IsAuthenticated)
                pnlContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");

            if (this.IsPostBack) return;

            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("First Name");
            dt.Columns.Add("Last Name");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Address");
            dt.Columns.Add("City");
            dt.Columns.Add("Postal Code");
            dt.Columns.Add("Email");

            foreach (DataRow r in dsEmmas.customer)
            {
                DataRow nr = dt.NewRow();
                nr[0] = r.ItemArray[0].ToString();
                nr[1] = r.ItemArray[1].ToString();
                nr[2] = r.ItemArray[2].ToString();
                nr[3] = r.ItemArray[3].ToString();
                nr[4] = r.ItemArray[4].ToString();
                nr[5] = r.ItemArray[5].ToString();
                nr[6] = r.ItemArray[6].ToString();
                nr[7] = r.ItemArray[7].ToString();
                dt.Rows.Add(nr);
            }
            gvCustomer.DataSource = dt;
            gvCustomer.DataBind();
        }

       

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void gvCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {
			
			id = Convert.ToInt32(gvCustomer.SelectedRow.Cells[1].Text);
			DataRow cust = dsEmmas.customer.FindByid(id);

			if (cust != null)
			{


				Session["ID"] = gvCustomer.SelectedRow.Cells[1].Text.ToString();
				Session["Last"] = gvCustomer.SelectedRow.Cells[3].Text.ToString();
				Session["Phone"] = gvCustomer.SelectedRow.Cells[4].Text.ToString();
				Session["Address"] = gvCustomer.SelectedRow.Cells[5].Text.ToString();
				Session["City"] = gvCustomer.SelectedRow.Cells[6].Text.ToString();
				Session["Postal"] = gvCustomer.SelectedRow.Cells[7].Text.ToString();
				Session["Email"] = gvCustomer.SelectedRow.Cells[8].Text.ToString();

				Response.Redirect("CustomerUpdate.aspx?First= " + gvCustomer.SelectedRow.Cells[2].Text.ToString());

			}

			//txtadd.Visible = true;
			//txtID.Visible = true;
			//txtct.Visible = true;
			//txtcustID.Visible = true;
			//txtlname.Visible = true;
			//txtphn.Visible = true;
			//txtpost.Visible = true;
			//txtfname.Visible = true;
			//txteml.Visible = true;
			//lblfname.Visible = true;
			//lbllname.Visible = true;
			//lblphn.Visible = true;
			//lblpost.Visible = true;
			//lblct.Visible = true;
			//lbleml.Visible = true;
			//lbladd.Visible = true;
			//btnUpdate.Visible = true;
			//btnDelete.Visible = true;
			//pnlTab.Visible = true;

			//gvCustomer.Visible = false;
			//pnlContent.Visible = false;
			//lblCustomer.Visible = false;
			//lblCity.Visible = false;
			//txtCustomerSearch.Visible = false;
			//txtCitySerach.Visible = false;
			//btnSearch.Visible = false;
			//btnClear.Visible = false;

		}

        protected void btnUpdate_Click(object sender,EventArgs e)
        {
			//if (id != -1)
			//{
			//	try
			//	{
			//		dsEmmas.customer.FindByid(id).custFirst = (Request.QueryString["First"]);
			//		dsEmmas.customer.FindByid(id).id = Convert.ToInt32(Session["ID"].ToString());
			//		dsEmmas.customer.FindByid(id).custLast = Session["Last"].ToString();
			//		dsEmmas.customer.FindByid(id).custPhone = Session["Phone"].ToString();
			//		dsEmmas.customer.FindByid(id).custAddress = Session["Address"].ToString();
			//		dsEmmas.customer.FindByid(id).custCity = Session["City"].ToString();
			//		dsEmmas.customer.FindByid(id).custPostal = Session["Postal"].ToString();
			//		dsEmmas.customer.FindByid(id).custEmail = Session["Email"].ToString();
			//		this.Save();
			////        dsEmmas.customer.FindByid(id).custFirst = this.txtfname.Text;
			///

			//        dsEmmas.customer.FindByid(id).custLast = this.txtlname.Text;
			//        dsEmmas.customer.FindByid(id).custPhone = this.txtphn.Text;
			//        dsEmmas.customer.FindByid(id).custAddress = this.txtadd.Text;
			//        dsEmmas.customer.FindByid(id).custCity = this.txtct.Text;
			//        dsEmmas.customer.FindByid(id).custPostal = this.txtpost.Text;
			//        dsEmmas.customer.FindByid(id).custEmail = this.txteml.Text;

					//        this.Save();
					//        this.Clear();
					   // }
				
				//catch
				//{
				//	//this.lblSave.Text = "Unable to Update - Invalid Input";
				//}
			//}

		}

        protected void btnDelete_Click(object sender, EventArgs e)
        {
        
            //DataRow cust = dsEmmas.customer.FindByid(id);
            //if (cust != null)
            //{
            //    cust.Delete();
            //    this.Save();
            //    this.Clear();

            //}
        }

        protected void btnCreateCustomer_Click(object sender, EventArgs e)
        {
            try
            {
               DataRow r = dsEmmas.customer.NewRow();
               r[1] = this.txtFirst.Text;
               r[2]= this.txtLast.Text;
                r[3] = this.txtPhone.Text;
                r[4] = this.txtAddress.Text;
                r[5] = this.txtCty.Text;
               r[6] = this.txtPosta.Text;
                r[7] = this.txtEmail.Text;

                dsEmmas.customer.Rows.Add(r);

                this.Save();
                this.Clear();
            }
            catch
            {
               // lblSave.Text = "Unable to create customer";
            }
           
        }

        private void Save()
        {
		
		ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter daCustomer = new ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter();

            try
            {
		
				daCustomer.Update(dsEmmas.customer);
                dsEmmas.AcceptChanges();
                dsEmmas.customer.Clear();
                daCustomer.Fill(dsEmmas.customer);
               
            }
            catch
            {
                dsEmmas.RejectChanges();
             

            }
            Response.Redirect("Customer.aspx");
        }

        private void Clear()
        {
            //this.txtadd.Text = "";
            //this.txtct.Text = "";
            //this.txteml.Text = "";
            //this.txtfname.Text = "";
            //this.txtphn.Text = "";
            //this.txtpost.Text = "";
            //this.txtcustID.Text = "";
            //this.txtlname.Text = "";
            //id = -1;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            this.gvCustomer.Columns.Clear();
            if (dsEmmas.customer.Count > 0)
            {
                string criteria = GetCustomerCriteria();
                rows = (criteria.Length > 0) ? dsEmmas.customer.Select(criteria) : dsEmmas.customer.Select();
                DisplayCustomer();
            }
            else
            {
               // this.lblSave.Text = "No Customer Records";
            }
        }
        private string GetCustomerCriteria()
        {
            string criteria = "";
            criteria = (this.txtCustomerSearch.Text.Length > 0) ? "custFirst Like '" + this.txtCustomerSearch.Text + "*'" : "";
            criteria += (this.txtCitySerach.Text.Length > 0 && criteria.Length > 0) ? "And CustCity Like '" + this.txtCitySerach.Text + "*'"
         : (this.txtCitySerach.Text.Length > 0) ? "CustCity Like '" + this.txtCitySerach.Text + "*'" : "";

            return criteria;
        }

       
        private void DisplayCustomer()
        {
            // if (this.IsPostBack) return;
            refresh = true;
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("First Name");
            dt.Columns.Add("Last Name");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Address");
            dt.Columns.Add("City");
            dt.Columns.Add("Postal Code");
            dt.Columns.Add("Email");
          

         
                foreach (DataRow r in rows)
            {
                DataRow nr = dt.NewRow();
                nr[0] = r.ItemArray[0].ToString();
                nr[1] = r.ItemArray[1].ToString();
                nr[2] = r.ItemArray[2].ToString();
                nr[3] = r.ItemArray[3].ToString();
                nr[4] = r.ItemArray[4].ToString();
                nr[5] = r.ItemArray[5].ToString();
                nr[6] = r.ItemArray[6].ToString();
                nr[7] = r.ItemArray[7].ToString();
                dt.Rows.Add(nr);
            }
            gvCustomer.DataSource = dt;
            gvCustomer.DataBind();
        }

    }
}