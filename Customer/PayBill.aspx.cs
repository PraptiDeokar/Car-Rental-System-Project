using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;
using System.Web.Security;

public partial class Customer_PayBill : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["amt"].ToString();
        Label2.Text = Session["amt"].ToString();
        Label3.Text = Session["vid"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        db.Execute("Insert into OrderTable (UserName,amount,creditCard,ODate) values('" + Membership.GetUser().UserName + "','" + Label2.Text + "','" + CNoTextBox.Text + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt") + "')");
        String email = Membership.GetUser().Email;
        SmtpClient sc = new SmtpClient();
        sc.DeliveryMethod = SmtpDeliveryMethod.SpecifiedPickupDirectory;
        sc.PickupDirectoryLocation = "d:\\mail";
        sc.Send(new MailMessage("admin@gmail.com", email, "Payment Confirmation", "Congratulation!!! Your Booking is successfully done."));
    
        
        Response.Redirect("Thanks.aspx");  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}