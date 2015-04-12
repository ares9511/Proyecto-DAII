<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Buscar.aspx.cs" Inherits="Buscar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cooper Black" Font-Size="18pt" Font-Strikeout="False" ForeColor="Red" Text="BÚSQUEDA DE TRABAJADORES"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="DNI:" Font-Names="Arial Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="DNI" DataValueField="DNI" Height="18px" Width="131px">
    </asp:DropDownList>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Trabajador.xml"></asp:XmlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Nombre:" Font-Names="Arial Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="NOMBRE" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Edad:" Font-Names="Arial Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="EDAD" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Teléfono:" Font-Names="Arial Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TELEFONO" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
<asp:Label ID="Label5" runat="server" Text="Fecha de Nacimiento:" Font-Names="Arial Black"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Día:"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="NDIA" runat="server" ReadOnly="True" Width="30px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="Mes:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="NMES" runat="server" ReadOnly="True" Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Font-Names="Arial" Text="Año:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="NAÑO" runat="server" ReadOnly="True" Width="60px"></asp:TextBox>
    <br />
    <br />
<asp:Label ID="Label11" runat="server" Text="Fecha de Ingreso:" Font-Names="Arial Black"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Font-Names="Arial" Text="Día:"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="IDIA" runat="server" ReadOnly="True" Width="30px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Names="Arial" Text="Mes:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="IMES" runat="server" ReadOnly="True" Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Font-Names="Arial" Text="Año:"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="IAÑO" runat="server" ReadOnly="True" Width="60px"></asp:TextBox>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Buscarbtn" runat="server" OnClick="Buscarbtn_Click" Text="BUSCAR" Font-Names="Arial Black" />
    <br />
    <br />
    <br />
</asp:Content>

