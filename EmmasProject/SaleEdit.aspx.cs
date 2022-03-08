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
	public partial class SaleEdit : System.Web.UI.Page
	{
		static ProjectLibrary.EmmasDataSet dsEmmas;
		private static DataRow[] rows;

		static SaleEdit()
		{
			dsEmmas = new EmmasDataSet();
			ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter daSale = new ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter();

			try
			{
				daSale.Fill(dsEmmas.order_line);
			}
			catch { }
		}

		private static int id = -1;
		protected void Page_Load(object sender, EventArgs e)
		{
			this.TextBox2.Text = (Request.QueryString["First"]);
			this.TextBox1.Text = Session["ID"].ToString();
			this.DropDownList1.Text = Session["Product"].ToString();
			this.DropDownList2.Text = Session["Customer"].ToString();
			this.TextBox3.Text = Session["Quantity"].ToString();
			this.TextBox4.Text = Session["Price"].ToString();
			

	}

		protected void btnUpdate_Click(object sender, EventArgs e)
		{
			id = Convert.ToInt32(this.TextBox1.Text);
			if (id != -1)
			{
				try
				{
					dsEmmas.order_line.FindByid(id).receiptID = Convert.ToInt32(this.DropDownList2.SelectedValue);
					dsEmmas.order_line.FindByid(id).inventoryID = Convert.ToInt32(this.DropDownList1.SelectedValue);
					dsEmmas.order_line.FindByid(id).orlNote = this.TextBox2.Text;
					dsEmmas.order_line.FindByid(id).orlQuantity = Convert.ToInt32(this.TextBox3.Text);
					dsEmmas.order_line.FindByid(id).orlPrice = Convert.ToDecimal(this.TextBox4.Text);

					this.Save();
					
				}


				catch
				{
					//this.lblSave.Text = "Unable to Update - Invalid Input";
				}
			}
		}
	

		protected void btnDelete_Click(object sender, EventArgs e)
		{
			id = Convert.ToInt32(this.TextBox1.Text);
			DataRow r = dsEmmas.order_line.FindByid(id);
			if (r != null)
			{
				r.Delete();
				this.Save();
			

			}
		}

		private void Save()
		{
			ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter daSale = new ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter();

			try
			{
				daSale.Update(dsEmmas.order_line);
				dsEmmas.AcceptChanges();
				dsEmmas.order_line.Clear();
				daSale.Fill(dsEmmas.order_line);

			}
			catch
			{
				dsEmmas.RejectChanges();


			}
			Response.Redirect("Sale.aspx");
		}

	}
}