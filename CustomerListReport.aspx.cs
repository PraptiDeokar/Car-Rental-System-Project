using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CustomerListReport : System.Web.UI.Page
{
    DBClass db = new DBClass();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Customer", db.cn);


        CarDataSet cd = new CarDataSet();

        da.Fill(cd, "Customer");
        CrystalReportSource2.ReportDocument.SetDataSource(cd);
   
    }
}