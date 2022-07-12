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
                <asp:RadioButtonList ID="ThinRadioButtonList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ThinRadioButtonList_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Thin Crust</asp:ListItem>
                    <asp:ListItem>Thick Crust (+$2.00)</asp:ListItem>
                </asp:RadioButtonList>
            </p>
            <p>
                Toppings: (+$1.50 for each item) <asp:CheckBoxList ID="ToppingCheckBoxList" runat="server">
                    <asp:ListItem>Pepperoni</asp:ListItem>
                    <asp:ListItem>Onions</asp:ListItem>
                    <asp:ListItem>Green Pepper</asp:ListItem>
                    <asp:ListItem>Mushrooms</asp:ListItem>
                    <asp:ListItem>Olives</asp:ListItem>
                    <asp:ListItem>Sausage</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p>
                Special Deal: Save $2.00 if you order pepperoni, mushrooms, and green pepper <strong>or</strong> onions, olives, and sausage on your pizza.</p>
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
