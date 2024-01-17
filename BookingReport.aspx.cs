using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class BookingReport : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {

       
        SqlDataAdapter da = new SqlDataAdapter("select * from BookCarView", db.cn);


        DataSet2 cd = new DataSet2();

        da.Fill(cd, "BookCarView");
        CrystalReportSource1.ReportDocument.SetDataSource(cd);
   
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}