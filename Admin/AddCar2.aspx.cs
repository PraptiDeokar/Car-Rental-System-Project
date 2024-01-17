using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddCar2 : System.Web.UI.Page
{

    DBClass db=new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (SaveButton.Text == "Save")
        {
            String fname = "";
            if (FileUpload1.HasFile)
            {
                fname = "~/CarImages/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(fname));
            }
            db.Execute("Insert into CarTable (CarNo,Model,Capacity,Rent,CarImage,Status) values('" + NoTextBox.Text + "','" + ModelTextBox.Text + "','" + CapacityTextBox.Text + "','" + RentTextBox.Text + "','" + fname + "','Available')");
            ClientScript.RegisterStartupScript(GetType(), "a1", "alert('car Information is Saved Successfullys...')", true);
        }
        else
        {
            String fname = Image1.ImageUrl;
            if (FileUpload1.HasFile)
            {
                fname = "~/CarImages/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(fname));
            }
            db.Execute("Update CarTable set CarNo='"+NoTextBox.Text+"',Model='"+ModelTextBox.Text+"',Capacity="+CapacityTextBox.Text+",Rent="+RentTextBox.Text+",CarImage='"+fname+"' where CarId="+IdTextBox.Text);
            ClientScript.RegisterStartupScript(GetType(), "a1", "alert('car Information is Updated Successfullys...')", true);
         
        }
        Reset();
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Reset();

    }
    void Reset()
    {
        IdTextBox.Text = "(Auto)";
        NoTextBox.Text = "";
        ModelTextBox.Text = "";
        CapacityTextBox.Text = "";
        RentTextBox.Text = "";
        Image1.ImageUrl = "";
        SaveButton.Text = "Save";
        NoTextBox.Focus();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lb=e.Row.Cells[0].Controls[0] as LinkButton;
            lb.OnClientClick = "return confirm('Delete Card Record entry....')";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        IdTextBox.Text = GridView1.SelectedRow.Cells[1].Text;
        NoTextBox.Text = GridView1.SelectedRow.Cells[2].Text;
        ModelTextBox.Text = GridView1.SelectedRow.Cells[3].Text;
        CapacityTextBox.Text = GridView1.SelectedRow.Cells[4].Text;
        RentTextBox.Text = GridView1.SelectedRow.Cells[5].Text;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[6].Text;
        SaveButton.Text = "Update";
        NoTextBox.Focus();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        String id = GridView1.Rows[index].Cells[1].Text;
         
        if (e.CommandName == "Make")
        {
            db.Execute("Update CarTable set Status='Available' where CarId=" + id);
            GridView1.DataBind();


        }
    }
}