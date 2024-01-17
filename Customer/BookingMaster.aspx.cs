using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Customer_BookingMaster : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Membership.GetUser().UserName;
    }
}