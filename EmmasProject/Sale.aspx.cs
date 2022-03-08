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
    public partial class Sale : System.Web.UI.Page
    {
        static ProjectLibrary.EmmasDataSet dsEmmas;
        private static DataRow[] rows;

        static Sale()
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
			ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter daSale = new ProjectLibrary.EmmasDataSetTableAdapters.order_lineTableAdapter();
			dsEmmas.order_line.AcceptChanges();
			dsEmmas.order_line.Clear();
			daSale.Fill(dsEmmas.order_line);


			txtID.Visible = false;
			txtProductDescription.Visible = false;
			txtPrice.Visible = false;
			txtQuantity.Visible = false;
			ddlCustomer.Visible = false;
			ddlProduct.Visible = false;
			lblCustomer.Visible = false;
			lblID.Visible = false;
			lblPrice.Visible = false;
			lblProduct.Visible = false;
			lblQuantity.Visible = false;
			lblProductPrice.Visible = false;
			btnUpdate.Visible = false;
			btnDelete.Visible = false;
			

			if (User.Identity.IsAuthenticated)
                pnlContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");

            if (this.IsPostBack) return;

            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Customer");
            dt.Columns.Add("Product");
            dt.Columns.Add("Product Description");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Price");
            
			
            foreach (DataRow r in dsEmmas.order_line)
            {
                DataRow nr = dt.NewRow();
                nr[0] = r.ItemArray[5].ToString();
                nr[1] = r.ItemArray[3].ToString();
                nr[2] = r.ItemArray[2].ToString();
                nr[3] = r.ItemArray[4].ToString();
                nr[4] = r.ItemArray[1].ToString();
                nr[5] = r.ItemArray[0].ToString();

                dt.Rows.Add(nr);
            }
            gvSale.DataSource = dt;
            gvSale.DataBind();

        
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
            //        dsEmmas.order_line.FindByid(id).receiptID = Convert.ToInt32(this.ddlCustomer.SelectedValue);
            //        dsEmmas.order_line.FindByid(id).inventoryID = Convert.ToInt32(this.ddlProduct.SelectedValue);
            //        dsEmmas.order_line.FindByid(id).orlNote = this.txtProductDescription.Text;
            //        dsEmmas.order_line.FindByid(id).orlQuantity = Convert.ToInt32(this.txtQuantity.Text);
            //        dsEmmas.order_line.FindByid(id).orlPrice = Convert.ToDecimal(this.txtPrice.Text);
                   
            //        this.Save();
            //        this.Clear();
            //    }


            //    catch
            //    {
            //        this.lblSave.Text = "Unable to Update - Invalid Input";
            //    }
           // }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //DataRow r = dsEmmas.order_line.FindByid(id);
            //if (r != null)
            //{
            //    r.Delete();
            //    this.Save();
            //    this.Clear();

            //}
        }
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow r = dsEmmas.order_line.NewRow();
                r[1] = this.ddlcust.SelectedValue;
                r[2] = this.ddlprod.SelectedValue;
                //r[3] = this.txtprodDesc.Text;
                r[4] = this.txtqty.Text;
               // r[5] = this.txtpric.Text;



                dsEmmas.order_line.Rows.Add(r);

                this.Save();
               // this.Clear();
            }
            catch
            {
                lblSave.Text = "Unable to create sale";
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

        private void Clear()
        {
            this.txtID.Text = "";
            this.txtPrice.Text = "";
            this.txtProductDescription.Text = "";
            this.txtQuantity.Text = "";
            this.ddlCustomer.Text = "";
            this.ddlProduct.Text = "";

            id = -1;
        }

        protected void gvSale_SelectedIndexChanged1(object sender, EventArgs e)
        {
            id = Convert.ToInt32(gvSale.SelectedRow.Cells[1].Text);
            DataRow sale = dsEmmas.order_line.FindByid(id);

			if (sale != null)
			{


				Session["ID"] = gvSale.SelectedRow.Cells[1].Text.ToString();
				Session["Customer"] = gvSale.SelectedRow.Cells[2].Text.ToString();
				Session["Product"] = gvSale.SelectedRow.Cells[3].Text.ToString();
				Session["Quantity"] = gvSale.SelectedRow.Cells[5].Text.ToString();
				Session["Price"] = gvSale.SelectedRow.Cells[6].Text.ToString();
				
				Response.Redirect("SaleEdit.aspx?First= " + gvSale.SelectedRow.Cells[4].Text.ToString());

			}


			//if (sale != null)
			//{
			//    this.txtID.Text = gvSale.SelectedRow.Cells[1].Text;
			//    this.ddlCustomer.SelectedValue = Convert.ToInt32(gvSale.SelectedRow.Cells[2].Text).ToString();
			//    this.ddlProduct.SelectedValue = Convert.ToInt32(gvSale.SelectedRow.Cells[3].Text).ToString();
			//    this.txtProductDescription.Text = gvSale.SelectedRow.Cells[4].Text;
			//    this.txtQuantity.Text = gvSale.SelectedRow.Cells[5].Text;
			//    this.txtPrice.Text = gvSale.SelectedRow.Cells[6].Text;

			//}
		}

		protected void btnNew_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/Invoice.aspx");
		}
	}
}