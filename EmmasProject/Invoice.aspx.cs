
using ProjectLibrary;
using ProjectLibrary.EmmasDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasProject
{
    public partial class Invoice : System.Web.UI.Page
    {
        static ProjectLibrary.EmmasDataSet dsEmmas;
        private static DataRow[] rows;

        static Invoice()
        {
            dsEmmas = new EmmasDataSet();
            ProjectLibrary.EmmasDataSetTableAdapters.receiptTableAdapter daReceipt = new ProjectLibrary.EmmasDataSetTableAdapters.receiptTableAdapter();

            try
            {
                daReceipt.Fill(dsEmmas.receipt);
            }
            catch { }
        }

        private static int id = -1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
                pnlContent.Visible = true;
            else
                Response.Redirect("~/Login.aspx");

            if (this.IsPostBack) return;

            DataTable dt = new DataTable();
           // dt.Columns.Add("ID");
            dt.Columns.Add("Invoice No");
            dt.Columns.Add("Invoice Date");
            dt.Columns.Add("Customer");
            dt.Columns.Add("Product");
            dt.Columns.Add("Payment Type");
            dt.Columns.Add("Price");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Amount");
            foreach (DataRow r in dsEmmas.receipt)
            {
                DataRow nr = dt.NewRow();
                nr[0] ="";
                nr[1] = "";
                nr[2] = "";
                nr[3] = "";
                nr[4] = "";
                nr[5] = "";
                nr[6] = "";
                nr[7] = "";

                dt.Rows.Add(nr);
            }

            gvInvoice.DataSource = dt;
            gvInvoice.DataBind();



        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                // dt.Columns.Add("ID");
                dt.Columns.Add("Invoice No");
                dt.Columns.Add("Invoice Date");
                dt.Columns.Add("Customer");
                dt.Columns.Add("Product");
                dt.Columns.Add("Payment Type");
                dt.Columns.Add("Price");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Amount");
               
                    DataRow r = dsEmmas.receipt.NewRow();
                    DataRow nr = dt.NewRow();
                        nr[0] = this.ddlInvoiceNo.SelectedValue;
                        nr[1] = this.txtInvoiceDate.Text;
                        nr[2] = this.ddlCustName.SelectedValue;
                        nr[3] = this.ddlProduct.SelectedValue;
                        nr[4] = this.ddlPaymentType.SelectedValue;
                        nr[5] = this.txtSalePrice.Text;
                        nr[6] = this.txtQty.Text;
                nr[7] = Convert.ToInt32(this.txtSalePrice.Text) * Convert.ToInt32(this.txtQty.Text);


                dt.Rows.Add(nr);
               
                gvInvoice.DataSource = dt;
                gvInvoice.DataBind();
            
                //DataRow r = dsEmmas.receipt.NewRow();
                //r[1] = this.txtInvoiceNo.Text;
                //r[2] = this.txtInvoiceDate.Text;
                //r[3] = this.ddlCustName.SelectedValue;
                //r[4] = this.ddlProduct.SelectedValue;

                //r[5] = this.ddlPaymentType.SelectedValue;
                //r[6] = this.txtSalePrice.Text;
                //r[7] = this.txtQty.Text;
                ////  r[8] = Convert.ToInt32(this.txtSalePrice.Text) * Convert.ToInt32(this.txtQty.Text);


                //dsEmmas.receipt.Rows.Add(r);

                //this.Save();
                //this.Clear();
            }
            catch
            {
                //Label1.Text = "Unable to Add";
            }

        }
        private void Save()
        {
            ProjectLibrary.EmmasDataSetTableAdapters.receiptTableAdapter daReceipt = new ProjectLibrary.EmmasDataSetTableAdapters.receiptTableAdapter();

            try
            {
                daReceipt.Update(dsEmmas.receipt);
                dsEmmas.AcceptChanges();
                dsEmmas.receipt.Clear();
                daReceipt.Fill(dsEmmas.receipt);
             

            }
            catch
            {
                dsEmmas.RejectChanges();
               


            }
           // Response.Redirect("Invoice.aspx");
           
        }

        private void Clear()
        {
            this.ddlInvoiceNo.Text = "";
            this.txtInvoiceDate.Text = "";
            this.ddlCustID.Text = "";
            this.txtPurchasePrice.Text = "";
            this.txtQty.Text = "";
            this.txtSalePrice.Text = "";
            this.ddlCustName.Text = "";
            this.ddlModel.Text = "";
            this.ddlPaymentType.Text = "";
            this.ddlProduct.Text = "";

            id = -1;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblamount.Text = "$";
            lblamount.Text += Convert.ToInt32(this.txtSalePrice.Text) * Convert.ToInt32(this.txtQty.Text);

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            gvInvoice.Columns.Clear();
        }

       

        protected void ddlCustName_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (DataRow r in dsEmmas.customer)
            {
                this.ddlCustID.Text = r.ItemArray[0].ToString();
            }
           
        }
    }
}