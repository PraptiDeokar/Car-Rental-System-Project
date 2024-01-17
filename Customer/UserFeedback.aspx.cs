using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserFeedback : System.Web.UI.Page
{
    DBClass db = new DBClass();
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        db.Execute("insert into FeedbackTable(Name,EmailID,Feedback) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')");
        Label1.Text = "feedback submitted";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox1.Focus();
    }
}