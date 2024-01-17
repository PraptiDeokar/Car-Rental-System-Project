using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CarReport : System.Web.UI.Page
{
    DBClass db = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlDataAdapter da = new SqlDataAdapter("select * from CarTable",db.cn);
       

        CarDataSet cd = new CarDataSet();
       
        da.Fill(cd, "CarTable");
        CrystalReportSource1.ReportDocument.SetDataSource(cd);
   
    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}