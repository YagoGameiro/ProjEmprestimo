<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjEmprestimo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 143px;
        }
        .auto-style2 {
            width: 100%;
            height: 111px;
        }
        .auto-style3 {
            width: 143px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            height: 62px;
        }
        .auto-style7 {
            height: 28px;
            width: 266px;
        }
        .auto-style8 {
            width: 266px;
        }
        .auto-style9 {
            width: 143px;
            height: 21px;
        }
        .auto-style10 {
            height: 21px;
            width: 266px;
        }
        .auto-style11 {
            height: 21px;
        }
        .auto-style12 {
            width: 143px;
            height: 20px;
        }
        .auto-style13 {
            height: 20px;
            width: 266px;
        }
        .auto-style14 {
            height: 20px;
        }
    </style>
</head>
<body style="height: 41px">
    <form id="form1" runat="server">
        <div class="auto-style5">
            Cadastro de Emprestimo</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style1">Descrição&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txt_desc" runat="server" Height="20px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Valor</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txt_valor" runat="server" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Juros</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txt_juros" runat="server" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="cboCidade" runat="server" TabIndex="1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Qtd. Parcela</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_parc" runat="server" Height="20px"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_salvar" runat="server" OnClick="btn_salvar_Click" Text="Salvar" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="txt_msg" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
