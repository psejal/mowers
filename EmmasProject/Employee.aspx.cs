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
    public partial class Employee : System.Web.UI.Page
    {
        static ProjectLibrary.EmployeeDataSet dsEmmas;
        private static DataRow[] rows;

        static Employee()
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
			ProjectLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter daEmployee = new ProjectLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter();

			dsEmmas.employee.AcceptChanges();
			dsEmmas.employee.Clear();
			daEmployee.Fill(dsEmmas.employee);

			txtEmpFirst.Visible = false;
			txtID.Visible = false;
			txtEmpLast.Visible = false;
			ddlPostn.Visible = false;
			lblEmpFirst.Visible = false;
			lblEmpLast.Visible = false;
			lblEmpPosition.Visible = false;
			lblEmpID.Visible = false;
			btnUpdate.Visible = false;
			btnDelete.Visible = false;
			

			if (User.Identity.IsAuthenticated)
                pnlContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");


            if (this.IsPostBack) return;

            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("First Name");
            dt.Columns.Add("Last Name");
           
            dt.Columns.Add("Position");
          

            foreach (DataRow r in dsEmmas.employee)
            {
                DataRow nr = dt.NewRow();
                nr[0] = r.ItemArray[0].ToString();
                nr[1] = r.ItemArray[1].ToString();
                nr[2] = r.ItemArray[2].ToString();
                nr[3] = r.ItemArray[3].ToString();
               
                dt.Rows.Add(nr);
            }
            gvEmployee.DataSource = dt;
            gvEmployee.DataBind();

        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void gvEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {
            id = Convert.ToInt32(gvEmployee.SelectedRow.Cells[1].Text);
            DataRow emp = dsEmmas.employee.FindByid(id);


			if (emp != null)
			{


				Session["ID"] = gvEmployee.SelectedRow.Cells[1].Text.ToString();
				Session["Last"] = gvEmployee.SelectedRow.Cells[3].Text.ToString();
				Session["Position"] = gvEmployee.SelectedRow.Cells[4].Text.ToString();


				Response.Redirect("EmployeeEdit.aspx?First= " + gvEmployee.SelectedRow.Cells[2].Text.ToString());


				//if (emp != null)
				//{
				//    this.txtID.Text = gvEmployee.SelectedRow.Cells[1].Text;
				//    this.txtEmpFirst.Text = gvEmployee.SelectedRow.Cells[2].Text;
				//    this.txtEmpLast.Text = gvEmployee.SelectedRow.Cells[3].Text;
				//    int id = Convert.ToInt32(gvEmployee.SelectedRow.Cells[4].Text);
				//    this.ddlPostn.SelectedValue = id.ToString();



				//}
			}

			}

			protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow r = dsEmmas.employee.NewRow();
                r[1] = this.txtfname.Text;
                r[2] = this.txtlname.Text;
                r[3] = this.ddlpos.SelectedValue;
               

                dsEmmas.employee.Rows.Add(r);

                this.Save();
                this.Clear();
            }
            catch
            {
                lblSave.Text = "Unable to create customer";
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

        private void Clear()
        {
            //this.txtEmpFirst.Text = "";
            //this.txtEmpLast.Text = "";
            //this.ddlPostn.Text = "";
           
            //id = -1;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //if (id != -1)
            //{
            //    try
            //    {
                    
            //        dsEmmas.employee.FindByid(id).empFirst = this.txtEmpFirst.Text;
            //        dsEmmas.employee.FindByid(id).empLast = this.txtEmpLast.Text;
            //        dsEmmas.employee.FindByid(id).posID = Convert.ToInt32(this.ddlPostn.SelectedValue);

            //        this.Save();
            //        this.Clear();
            //    }


            //    catch
            //    {
            //        this.lblSave.Text = "Unable to Update - Invalid Input";
            //    }
            //}
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //DataRow emp = dsEmmas.employee.FindByid(id);
            //if (emp != null)
            //{
            //    emp.Delete();
            //    this.Save();
            //    this.Clear();

            //}
        }

        protected void btnSearchEmployee_Click(object sender, EventArgs e)
        {
            this.gvEmployee.Columns.Clear();
            if (dsEmmas.employee.Count > 0)
            {
                string criteria = GetEmployeeCriteria();
                rows = (criteria.Length > 0) ? dsEmmas.employee.Select(criteria) : dsEmmas.employee.Select();
                DisplayEmployee();
            }
            else
            {
                this.lblSave.Text = "No Customer Records";
            }
        }
        private string GetEmployeeCriteria()
        {
            string criteria = "";
            criteria = (this.txtEmployeeSearch.Text.Length > 0) ? "empFirst Like '" + this.txtEmployeeSearch.Text + "*'" : "";
            criteria += (this.ddlPositionSearch.Text != "None" && criteria.Length > 0) ? "And posID = " + this.ddlPositionSearch.SelectedValue.ToString()
                 : (this.ddlPositionSearch.Text != "None") ? "posID = " + this.ddlPositionSearch.SelectedValue.ToString() : "";

            return criteria;
        }

        private static bool refresh = true;



        private void DisplayEmployee()
        {
            // if (this.IsPostBack) return;
            refresh = true;
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("First Name");
            dt.Columns.Add("Last Name");
            dt.Columns.Add("Position");


            foreach (DataRow r in rows)
            {
                DataRow nr = dt.NewRow();
                nr[0] = r.ItemArray[0].ToString();
                nr[1] = r.ItemArray[1].ToString();
                nr[2] = r.ItemArray[2].ToString();
                nr[3] = r.ItemArray[3].ToString();

                dt.Rows.Add(nr);
            }
            gvEmployee.DataSource = dt;
            gvEmployee.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }
    }
}