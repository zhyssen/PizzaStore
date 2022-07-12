using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaStore
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PurchaseButton_Click(object sender, EventArgs e)
        {
            decimal total = 0m;
            
            // Get the pizza size
            if (SizeDropDownList.Text == "Large $20")
            {
                total = 20.00m;
            }
            else if (SizeDropDownList.Text == "Medium $15")
            {
                total = 15.00m;
            }
            else if (SizeDropDownList.Text == "Small $10")
            {
                total = 10.00m;
            }

            // Get the pizza size
            if ()

            TotalLabel.Text = total.ToString("c");
        }
    }
}