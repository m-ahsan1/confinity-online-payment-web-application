using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.DAL;

namespace WebApplication6
{
    public partial class requestLoan : System.Web.UI.Page
    {
        int found;
        protected void SaveLoanRequestcs(object sender, EventArgs e)
        {
            int accNum = 10534;
            
            String loanType = txtLoanType.Text;
            String loanAmt = txtLoanAmount.Text;
            bool checkInput = string.IsNullOrEmpty(loanType);
            int type = Int16.Parse(loanType);
            int amt = Int16.Parse(loanAmt);
            if (!checkInput)
            {
                DataTable DT = new DataTable();

                myDAL objMyDal = new myDAL();

                

                found = objMyDal.SaveLoanRequest(accNum, type, amt, ref DT);
                if (found > 0)
                {

                    buttonReq.Text = "Loan request submitted successfully";
                }
                else
                {
                    buttonReq.Text = "Unable to request loan";
                }


            }
            else
            {
                buttonReq.Text = "Please enter the loan details!";
            }
            
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
           
        }
    }
}