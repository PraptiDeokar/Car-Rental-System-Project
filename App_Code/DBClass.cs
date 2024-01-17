using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBClass
/// </summary>
public class DBClass
{
	
		public SqlConnection cn;
	public DBClass()
	{
        cn = new SqlConnection();
        cn.ConnectionString = "server=.\\sqlexp;AttachDBFileName=|DataDirectory|ASPNETDB.mdf;Integrated Security=true;User Instance=true";
        cn.Open();
    
	}
    void Connect()
    {
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }
    }
    void Close()
    {
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();
        }
    }
    public int Execute(String sql)
    {
        Connect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = cn;
        int i = cmd.ExecuteNonQuery();
        Close();
        return i;
    }
    public DataTable GetTable(String sql)
    {
        Connect();
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Close();
        return dt;
    }
	}
