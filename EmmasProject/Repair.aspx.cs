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
    public partial class Repair : System.Web.UI.Page
    {
        static ProjectLibrary.EmmasDataSet dsEmmas;
        private static DataRow[] rows;

        static Repair()
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
			ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter daRepair = new ProjectLibrary.EmmasDataSetTableAdapters.service_orderTableAdapter();
			dsEmmas.service_order.AcceptChanges();
			dsEmmas.service_order.Clear();
			daRepair.Fill(dsEmmas.service_order);

			txtID.Visible = false;
			txtDateIn.Visible = false;
			txtDateOut.Visible = false;
			txtIssue.Visible = false;
			ddlCustomer.Visible = false;
			ddlEmployee.Visible = false;
			ddlEquipment.Visible = false;
			ddlServicePrice.Visible = false;
			lblID.Visible = false;
			lblCustomer.Visible = false;
			lblDateIn.Visible = false;
			lblDateOut.Visible = false;
			lblEmployee.Visible = false;
			lblEquipment.Visible = false;
			lblIssue.Visible = false;
			lblServicePrice.Visible = false;
			lblWarranty.Visible = false;
			cbWarrenty.Visible = false;
			btnDelete.Visible = false;
			btnUpdate.Visible = false;
			if (User.Identity.IsAuthenticated)
                pnlContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");

            if (this.IsPostBack) return;

            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Customer Name");
            dt.Columns.Add("Date In");
            dt.Columns.Add("Date Out");
            dt.Columns.Add("Issue");
            dt.Columns.Add("Warranty");
           
            dt.Columns.Add("Service Price");
            dt.Columns.Add("Equipment");
            dt.Columns.Add("Employee");

            foreach (DataRow r in dsEmmas.service_order)
            {
                DataRow nr = dt.NewRow();
                nr[0] = r.ItemArray[0].ToString();
                nr[1] = r.ItemArray[5].ToString();
                nr[2] = r.ItemArray[1].ToString();
                nr[3] = r.ItemArray[2].ToString();
                nr[4] = r.ItemArray[3].ToString();
                nr[5] = r.ItemArray[4].ToString();
                nr[6] = r.ItemArray[6].ToString();
             
               nr[7] = r.ItemArray[7].ToString();
                nr[8] = r.ItemArray[8].ToString();
                dt.Rows.Add(nr);
            }
            gvRepair.DataSource = dt;
            gvRepair.DataBind();
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

       
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //if (id != -1)
            //{
            //    try
            //    {

            //        dsEmmas.service_order.FindByid(id).receiptID = Convert.ToInt32(this.ddlCustomer.SelectedValue);
            //        dsEmmas.service_order.FindByid(id).serordDateIn = Convert.ToDateTime(this.txtDateIn.Text);
            //        dsEmmas.service_order.FindByid(id).serordDateOut = Convert.ToDateTime(this.txtDateOut.Text);
            //        dsEmmas.service_order.FindByid(id).serordIssue = this.txtIssue.Text;
            //        dsEmmas.service_order.FindByid(id).serordWarranty = Convert.ToBoolean(this.cbWarrenty.Text);
            //        dsEmmas.service_order.FindByid(id).serviceID = Convert.ToInt32(this.ddlServicePrice.SelectedValue);
            //        dsEmmas.service_order.FindByid(id).equipID = Convert.ToInt32(this.ddlEquipment.SelectedValue);
            //        dsEmmas.service_order.FindByid(id).empID = Convert.ToInt32(this.ddlEmployee.SelectedValue);

            //        this.Save();
            //        this.Clear();
            //    }


            //    catch
            //    {
            //       // this.lblSave.Text = "Unable to Update - Invalid Input";
            //    }
            //}
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DataRow r = dsEmmas.service_order.FindByid(id);
            if (r != null)
            {
                r.Delete();
                this.Save();
                this.Clear();

            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow r = dsEmmas.service_order.NewRow();
				r[1] = this.ddlcust.SelectedValue;
				r[2] = this.txtin.Text;
				r[3] = this.txtout.Text;
				r[4] = this.txtIssu.Text;
				r[5] = this.cbWarr.Text;

				r[6] = this.ddlservpric.SelectedValue;
				r[7] = this.ddlEquip.SelectedValue;
				r[8] = this.ddlEmp.SelectedValue;


				dsEmmas.service_order.Rows.Add(r);

                this.Save();
                this.Clear();
            }
            catch
            {
                Label1.Text = "Unable to create repair record";
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

        private void Clear()
        {
            this.txtID.Text = "";
            this.txtDateIn.Text = "";
            this.txtDateOut.Text = "";
            this.txtIssue.Text = "";
            this.ddlCustomer.Text = "";
          
            this.ddlServicePrice.Text = "";
            this.ddlEquipment.Text = "";
            this.ddlEmployee.Text = "";
            this.cbWarrenty.Text = "";

            id = -1;
        }

		protected void gvRepair_SelectedIndexChanged1(object sender, EventArgs e)
		{
			id = Convert.ToInt32(gvRepair.SelectedRow.Cells[1].Text);
			DataRow r = dsEmmas.service_order.FindByid(id);

			if (r != null)
			{


				Session["ID"] = gvRepair.SelectedRow.Cells[1].Text.ToString();
				Session["Customer"] = gvRepair.SelectedRow.Cells[2].Text.ToString();
				Session["DateIn"] = gvRepair.SelectedRow.Cells[3].Text.ToString();
				Session["DateOut"] = gvRepair.SelectedRow.Cells[4].Text.ToString();
				Session["Warranty"] = gvRepair.SelectedRow.Cells[6].Text.ToString();
				Session["Price"] = gvRepair.SelectedRow.Cells[7].Text.ToString();
				Session["Equipment"] = gvRepair.SelectedRow.Cells[8].Text.ToString();
				Session["Employee"] = gvRepair.SelectedRow.Cells[8].Text.ToString();

				Response.Redirect("RepairEdit.aspx?Issue= " + gvRepair.SelectedRow.Cells[5].Text.ToString());

				//if (r != null)
				//{
				//    this.txtID.Text = gvRepair.SelectedRow.Cells[1].Text;

				//    this.ddlCustomer.SelectedValue = (Convert.ToInt32(gvRepair.SelectedRow.Cells[2].Text)).ToString();

				//    this.txtDateIn.Text = gvRepair.SelectedRow.Cells[3].Text;
				//    this.txtDateOut.Text = gvRepair.SelectedRow.Cells[4].Text;
				//    this.txtIssue.Text = gvRepair.SelectedRow.Cells[5].Text;
				//    this.cbWarrenty.Text = Convert.ToBoolean(gvRepair.SelectedRow.Cells[6].Text).ToString();

				//    this.ddlServicePrice.SelectedValue = (Convert.ToInt32(gvRepair.SelectedRow.Cells[7].Text)).ToString();

				//    this.ddlEquipment.SelectedValue = (Convert.ToInt32(gvRepair.SelectedRow.Cells[8].Text)).ToString();

				//    this.ddlEmployee.SelectedValue = (Convert.ToInt32(gvRepair.SelectedRow.Cells[9].Text)).ToString();


				//}
			}
		}
    }
}