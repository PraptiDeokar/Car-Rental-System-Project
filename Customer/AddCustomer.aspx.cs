using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class Add_Customer : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["vid"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBClass db = new DBClass();
        String fname = "";
        if (FileUpload1.HasFile)
        {
            fname = "~/Images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(fname));
        }
        db.Execute("Insert into Customer(Name,Address,ContactNo,Email,City,Photo,UserName) values('"+NameTextBox.Text+"','"+AddrTextBox.Text+"','"+noTextBox.Text+"','"+emailTextBox.Text+"','"+cityTextBox.Text+"','"+fname+"','"+Membership.GetUser().UserName+"')");
        DataTable dt1=db.GetTable("select max(custid) from Customer");
        DataTable dt=db.GetTable("select * from CarTable where CarId="+Label1.Text);
        double d=double.Parse(dt.Rows[0]["Rent"].ToString());
        int rent=int.Parse(DaysTextBox.Text);

        double amt=d*rent;

        db.Execute("Insert into BookTable (CarId,PDate,ddate,rent,custid) values(" + Session["vid"].ToString() + ",'" + PDateTextBox.Text + "','" + DDateTextBox.Text + "'," + amt + "," + dt1.Rows[0][0].ToString() + ")");
        db.Execute("Update CarTable Set Status='Not Available' where CarID=" + Label1.Text);
        ClientScript.RegisterStartupScript(GetType(), "a1", "alert('Customer Information  and car is booked Successfully...')", true);
        Session["amt"] = amt;
        dt = db.GetTable("select max(bookid) from BookTable");
                     
        Response.Redirect("PayBill.aspx?id="+dt.Rows[0][0].ToString());
    }
    protected void IdTextBox_TextChanged(object sender, EventArgs e)
    {

    }
}