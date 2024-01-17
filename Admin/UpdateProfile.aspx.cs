using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_UpdateProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            NameTextBox.Text = Profile.Name;
            AddressTextBox.Text = Profile.Address;
            BDateTextBox.Text = Profile.BDate.ToString();
            RadioButtonList1.SelectedValue = Profile.Gender;
            QualTextBox.Text = Profile.Qualification;
            IncomeTextBox.Text = Profile.Income.ToString();
            Image1.ImageUrl = Profile.Photo;
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.Name = NameTextBox.Text;
        Profile.Address = AddressTextBox.Text;
        Profile.BDate = DateTime.Parse(BDateTextBox.Text);
        Profile.Gender = RadioButtonList1.SelectedValue;
        Profile.Qualification = QualTextBox.Text;
        Profile.Income = Double.Parse(IncomeTextBox.Text);
        if (FileUpload1.HasFile)
        {
            Profile.Photo = "~/Photos/" + FileUpload1.FileName;
            String fullpath = MapPath(Profile.Photo); //returns actual path
            FileUpload1.SaveAs(fullpath);
        }
        Profile.Save();
        Label1.Text = "Profile is Updated.....";
    }
}