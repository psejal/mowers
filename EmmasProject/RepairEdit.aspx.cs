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
	public partial class RepairEdit : System.Web.UI.Page
	{
		static ProjectLibrary.EmmasDataSet dsEmmas;
		private static DataRow[] rows;

		static RepairEdit()
		{
			dsEmmas = new EmmasDataSet();
			ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter daRepair = new ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter();

			try
			{
				daRepair.Fill(dsEmmas.service_order);
			}
			catch { }
		}

		private static int id = -1;
		protected void Page_Load(object sender, EventArgs e)
		{
			this.TextBox4.Text = (Request.QueryString["Issue"]);
			this.DropDownList1.Text = Session["Customer"].ToString();
			this.TextBox1.Text = Session["ID"].ToString();
			this.TextBox2.Text = Session["DateIn"].ToString();
			this.TextBox3.Text = Session["DateOut"].ToString();
			this.CheckBox1.Text = Session["Warranty"].ToString();
			this.DropDownList2.Text = Session["Price"].ToString();
			this.DropDownList3.Text = Session["Equipment"].ToString();
			this.DropDownList4.Text = Session["Employee"].ToString();

		}

		protected void btnUpdate_Click(object sender, EventArgs e)
		{
			id = Convert.ToInt32(this.TextBox1.Text);
			if (id != -1)
			{
				try
				{

					dsEmmas.service_order.FindByid(id).receiptID = Convert.ToInt32(this.DropDownList1.SelectedValue);
					dsEmmas.service_order.FindByid(id).serordDateIn = Convert.ToDateTime(this.TextBox2.Text);
					dsEmmas.service_order.FindByid(id).serordDateOut = Convert.ToDateTime(this.TextBox3.Text);
					dsEmmas.service_order.FindByid(id).serordIssue = this.TextBox4.Text;
					dsEmmas.service_order.FindByid(id).serordWarranty = Convert.ToBoolean(this.CheckBox1.Text);
					dsEmmas.service_order.FindByid(id).serviceID = Convert.ToInt32(this.DropDownList2.SelectedValue);
					dsEmmas.service_order.FindByid(id).equipID = Convert.ToInt32(this.DropDownList3.SelectedValue);
					dsEmmas.service_order.FindByid(id).empID = Convert.ToInt32(this.DropDownList4.SelectedValue);

					this.Save();
					
				}


				catch
				{
					// this.lblSave.Text = "Unable to Update - Invalid Input";
				}
			}
		}
			
		

		protected void btnDelete_Click(object sender, EventArgs e)
		{
			id = Convert.ToInt32(this.TextBox1.Text);
			DataRow r = dsEmmas.service_order.FindByid(id);
			if (r != null)
			{
				r.Delete();
				this.Save();
			

			}
		}
		private void Save()
		{
			ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter daRepair = new ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter();

			try
			{
				daRepair.Update(dsEmmas.service_order);
				dsEmmas.AcceptChanges();
				dsEmmas.service_order.Clear();
				daRepair.Fill(dsEmmas.service_order);


			}
			catch
			{
				dsEmmas.RejectChanges();

			}
			Response.Redirect("Repair.aspx");
		}

	}
}