<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grouping project.aspx.cs" Inherits="Grouping_project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            background-color:gray;
        }
        h1{
      text-align:center;
    
     background-color:white;
       }
        span{
       color:red;
        }
       #TextBox1
       {
      height:70px;
      width:1000px;
      border-color:black;
      background-color:white;
       }
      #Repeater1{
          background-color:white;
      }
       #TextBox2
       {
       height:70px;
      width:1000px;  
      border-color:black;
       background-color:white;
       }
       #DropDownList1
       {
      height:70px;
      width:1000px; 
      border-color:black;
       background-color:white;
       }
       #Button1
       {
           background-color:green;
           color:white;
       }
        #Button2
       {
           background-color:blue;
            color:white;
       }
         #Button3
       {
           background-color:red;
            color:white;
       }
          #Button4
       {
           background-color:orange;
            color:white;
            margin-top: 0px;
        }
          #Label1
          {
              color:black;
          }
          #Label2
          {
              color:black;
          }
          #Label3
          {
              color:black;
          }
            #Label4
          {
              color:darkgreen;
          }
          #Button5
       {
           background-color:orange;
            color:white;
       }
          #Button5{
               background-color:yellow;
            margin-top: 0px;
        }
          </style>

</head>
<body>
    <form id="form1" runat="server">
        <h1>GROUPING FORM</h1>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Group code"></asp:Label><span>*</span><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Group Description"></asp:Label><span>*</span><br />
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Group Type"></asp:Label><span>*</span><br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
            <asp:ListItem>SLOW</asp:ListItem>
            <asp:ListItem>STANDARD</asp:ListItem>
            <asp:ListItem>EXPRESS</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
         <br />
        <br />
        <br />
        <asp:Repeater ID="Repeater1" runat="server">
        </asp:Repeater>
        <br />
        <br />
        <br />
        <br />
        <br />
         <br />
        <table>
            <tr>
              <td></td>
            </tr>
        </table>
         </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Save" Height="58px" OnClick="Button1_Click" Width="139px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="update" Height="58px" Width="152px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="delete" Height="61px" Width="140px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="show" Height="66px" Width="138px" OnClick="Button4_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Text="clear" Height="68px" Width="138px" OnClick="Button5_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
