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

            // Get the crust selection
            if (ThickRadioButton.Checked == true)
            {
                total += 2.00m;
            }

            // Get the toppings
            if (PepperoniCheckBox.Checked == true)
            {
                total += 1.50m;
            }

            if(OnionsCheckBox.Checked == true)
            {
                total += 1.50m;
            }

            if(GreenPepperCheckBox.Checked == true)
            {
                total += 1.50m;
            }

            if(MushroomsCheckBox.Checked == true)
            {
                total += 1.50m;
            }
            if(OlivesCheckBox.Checked == true)
            {
                total += 1.50m;
            }

            if(SausageCheckBox.Checked == true)
            {
                total += 1.50m;
            }

            // Special Savings
            if (PepperoniCheckBox.Checked && OnionsCheckBox.Checked &&
                GreenPepperCheckBox.Checked)
            {
                total -= 3.00m;
            }
            else if (MushroomsCheckBox.Checked && OlivesCheckBox.Checked &&
                SausageCheckBox.Checked)
            {
                total -= 3.00m;
            }
            

            TotalLabel.Text = total.ToString("c");
        }
    }
}