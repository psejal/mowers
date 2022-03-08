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
	public partial class EmployeeEdit : System.Web.UI.Page
	{
		static ProjectLibrary.EmployeeDataSet dsEmmas;
		private static DataRow[] rows;

		static EmployeeEdit()
		{
			dsEmmas = new EmployeeDataSet();
			ProjectLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter daEmployee = new ProjectLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter();

			try
			{
				daEmployee.Fill(dsEmmas.employee);
			}
			catch { }
		}

		private static int id = -1;
		protected void Page_Load(object sender, EventArgs e)
		{
			this.txtEmpFirst.Text = (Request.QueryString["First"]);
			this.txtID.Text = Session["ID"].ToString();
			this.txtEmpLast.Text = Session["Last"].ToString();
			this.ddlPostn.Text = Session["Position"].ToString();
			

		}

		protected void btnUpdate_Click(object sender, EventArgs e)
		{
			id = Convert.ToInt32(this.txtID.Text);
			if (id != -1)
			{
				try
				{
					dsEmmas.employee.FindByid(id).empFirst = this.txtEmpFirst.Text;
					dsEmmas.employee.FindByid(id).empLast = this.txtEmpLast.Text;
					dsEmmas.employee.FindByid(id).posID = Convert.ToInt32(this.ddlPostn.SelectedValue);
					Save();
				}
				catch (Exception)
				{
					//this.lblSave.Text = "Unable to Update - Invalid Input";
				}
			}
			else { }
		}

		protected void btnDelete_Click(object sender, EventArgs e)
		{
			int id = Convert.ToInt32(this.txtID.Text);
			DataRow r = dsEmmas.employee.FindByid(id);
			if (r != null)
			{
				r.Delete();
				this.Save();


			}
		}
		private void Save()
		{
			ProjectLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter daEmployee = new ProjectLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter();

			try
			{
				daEmployee.Update(dsEmmas.employee);
				dsEmmas.AcceptChanges();
				dsEmmas.employee.Clear();
				daEmployee.Fill(dsEmmas.employee);

			}
			catch
			{
				dsEmmas.RejectChanges();


			}

			Response.Redirect("Employee.aspx");
		}

	}
}