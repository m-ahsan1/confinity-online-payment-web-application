using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.DAL;
using System.Data;

namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid(); // fill the grid every time page loads
        }

        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid1.DataSource = objMyDal.PayBill();//seting data source for this Grid
            ItemGrid1.DataBind(); //bind the data source to this grid
        }
        protected void payBillButtonClick(object sender, EventArgs e)
        {
           
            int found;
            String bID = txtBillID.Text;
           
            bool checkInput = string.IsNullOrEmpty(bID);
            int billID = Int16.Parse(bID);
           
            if (!checkInput)
            {
                DataTable DT = new DataTable();

                myDAL objMyDal = new myDAL();



                found = objMyDal.payBillUpdate(billID, ref DT);
                if (found > 0)
                {

                   //bill paid msg
                }
                else
                {
                    
                }


            }
            else
            {
               
            }
        }
    }
}