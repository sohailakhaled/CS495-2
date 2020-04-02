<%@ Page Language="C#"  %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<script runat="server">
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|data directory| Database.mdf;Integrated Security=True";


        string strInsert = "INSERT INTO Table "
                             + " VALUES('" + firstname1.Text + "', '"
                             + id2.Text + "', '"
                             + gender3.SelectedVaule + "', '"
                             + email.Text + "', '"
                             + phonenumber.Text + "', '"
                             + address.Text + "', '"
                             + nationalty.SelectedValue + "', '"
                             + faculty.SelectedValue + "')";
                            
     
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        conn.Open();

        cmdInsert.ExecuteNonQuery();

        conn.Close();



        lblMsg.Text = "Welcome " + firstname1.Text + "Your Account Has Been Successfully Created!!";
          
        
    
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
            width: 129px;
        }
        .auto-style5 {
            width: 129px;
        }
        .auto-style6 {
            height: 31px;
            width: 112px;
        }
        .auto-style7 {
            width: 112px;
        }
    </style>
</head>
<body id="lblMsg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="5">
                    <asp:Label ID="Label1" runat="server" BorderColor="#0066FF" Font-Size="Large" Text="Newstudent"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" id="firstname">
                    <asp:Label ID="firstname" runat="server" Text="firstname"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="firstname1" runat="server" Width="145px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="id2" runat="server" Width="152px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="GENDER"></asp:Label>
                </td>
                <td class="auto-style7" id="gender3">
                    <asp:RadioButton ID="RadioButton1" runat="server" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="email"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="phonenumber"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="phonenumber" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="address"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Text="password"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label11" runat="server" Text="nationalty"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="nationalty" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="16px" style="margin-bottom: 0px" Width="53px">
                        <asp:ListItem>egypt</asp:ListItem>
                        <asp:ListItem>france</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label12" runat="server" Text="faculty"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="faculty" runat="server">
                        <asp:ListItem>computerscience</asp:ListItem>
                        <asp:ListItem>politcal</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                </td>
                <td class="auto-style7" id="lblMsg" style="color: #800000">lblMsg</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
