<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PizzaStore.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>The Pizza Place</h1>
            <p>
                Size:
                <asp:DropDownList ID="SizeDropDownList" runat="server" AutoPostBack="True">
                    <asp:ListItem>Large $20</asp:ListItem>
                    <asp:ListItem>Medium $15</asp:ListItem>
                    <asp:ListItem>Small $10</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="CrustLabel" runat="server" style="font-weight: 700" Text="Crust"></asp:Label>
            </p>
            <p>
                <asp:RadioButton ID="ThinRadioButton" runat="server" Checked="True" EnableTheming="True" GroupName="Crust" Text="Thin Crust" />
            </p>
            <p>
                <asp:RadioButton ID="ThickRadioButton" runat="server" GroupName="Crust" Text="Thick Crust (+$2.00)" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="ToppingsLabel" runat="server" style="font-weight: 700" Text="Toppings: (+$1.50 for each topping)"></asp:Label>
            </p>
            <p>
                <asp:CheckBox ID="PepperoniCheckBox" runat="server" Text="Pepperoni" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="MushroomsCheckBox" runat="server" Text="Mushrooms" />
            </p>
            <p>
                <asp:CheckBox ID="OnionsCheckBox" runat="server" Text="Onions" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="OlivesCheckBox" runat="server" Text="Olives" />
            </p>
            <p>
                <asp:CheckBox ID="GreenPepperCheckBox" runat="server" Text="Green Pepper" />
&nbsp;&nbsp;
                <asp:CheckBox ID="SausageCheckBox" runat="server" Text="Sausage" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <em>Special Deal: Save $3.00 if you order pepperoni, onion, and green pepper </em> <strong><em>or</em></strong><em> mushrooms, olives, and sausage on your pizza.</em></p>
            <p>
                <asp:Button ID="PurchaseButton" runat="server" OnClick="PurchaseButton_Click" Text="Purchase" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                Total: <asp:Label ID="TotalLabel" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
