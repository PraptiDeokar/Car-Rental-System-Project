using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_CarAvailable : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int vid = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex]);
        Session["vid"] = vid;

        Response.Redirect("~/Customer/AddCustomer.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}