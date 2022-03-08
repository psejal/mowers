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
	public partial class CustomerUpdate : System.Web.UI.Page
	{
		static ProjectLibrary.EmmasDataSet dsEmmas;
		private static DataRow[] rows;

		static CustomerUpdate()
		{
			dsEmmas = new EmmasDataSet();
			ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter daCustomer = new ProjectLibrary.EmmasDataSetTableAdapters.customerTableAdapter();

			try
			{
				daCustomer.Fill(dsEmmas.customer);
			}
			catch { }
		}

		private static int id = -1;


		protected void Page_Load(object sender, EventArgs e)
		{
			this.txtCid.Text = Session["ID"].ToString();
			this.txtformal.Text = (Request.QueryString["First"].ToString());
			
			this.txtSirname.Text = Session["Last"].ToString();
			this.txtcontact.Text = Session["Phone"].ToString();
			this.txtResidence.Text = Session["Address"].ToString();
			this.txtLane.Text = Session["City"].ToString();
			this.txtCode.Text = Session["Postal"].ToString();
			this.txtMail.Text = Session["Email"].ToString();
		

		}
		
		protected void btnUpdate_Click(object sender, EventArgs e)
		{
			
			//Session["ID"] = this.txtID.Text;
			//Session["Last"] = this.txtLName.Text;
			//Session["Phone"] = this.txtPhone.Text;
			//Session["Address"] = this.txtAddress.Text;
			//Session["City"] = this.txtCity.Text;
			//Session["Postal"] = this.txtPostal.Text;
			//Session["Email"] = this.txtEmail.Text;


			id = Convert.ToInt32(this.txtCid.Text);
			if (id != -1)
			{
				try
				{
					dsEmmas.customer.FindByid(id).custFirst = this.txtformal.Text;
					dsEmmas.customer.FindByid(id).custLast = this.txtSirname.Text;
					dsEmmas.customer.FindByid(id).custPhone = this.txtcontact.Text;
					dsEmmas.customer.FindByid(id).custAddress = this.txtResidence.Text;
					dsEmmas.customer.FindByid(id).custCity = this.txtLane.Text;
					dsEmmas.customer.FindByid(id).custPostal = this.txtCode.Text;
					dsEmmas.customer.FindByid(id).custEmail = this.txtMail.Text;
					Save();
				}
				catch (Exception)
				{
					this.lblSave.Text = "Unable to Update - Invalid Input";
				}
			}
			else { }
			
		}
	

		protected void btnDelete_Click(object sender, EventArgs e)
		{
			int id = Convert.ToInt32(this.txtCid.Text);
			DataRow cust = dsEmmas.customer.FindByid(id);
			if (cust != null)
			{
				cust.Delete();
				this.Save();
		

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

		
	}
}