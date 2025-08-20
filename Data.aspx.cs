using Microsoft.Data.SqlClient;
using Microsoft.Data.Sql;
using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft;
using Microsoft.Data;





namespace FUBAR1
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Microsoft.Data.SqlClient.SqlConnectionStringBuilder builder = new Microsoft.Data.SqlClient.SqlConnectionStringBuilder();
            builder.DataSource = "ged-gva-ent-sqlmi.33d7efe7c027.database.usgovcloudapi.net,1433";
            builder.InitialCatalog = "RCHCathode_Dev";
            builder.Authentication = SqlAuthenticationMethod.ActiveDirectoryDefault;
            
            //builder.TrustServerCertificate = true;

            string newConnectionString = builder.ConnectionString; // "Data Source=anotherServer;Initial Catalog=anotherDatabase;Integrated Security=True"

     
            SqlDataSource1.ConnectionString = newConnectionString;



        }
    }
}