using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.DAL;

namespace WebApplication6
{
    public partial class checkTransactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid(); // fill the grid every time page loads
        }

        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.SelectItem();//seting data source for this Grid
            ItemGrid.DataBind(); //bind the data source to this grid
        }
    }
}