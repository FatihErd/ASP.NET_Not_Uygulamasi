<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Not_Al.aspx.cs" Inherits="WebApplication9.Not_Al" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            margin-bottom: 0px;
            margin-top: 0px;
        }
        .auto-style17 {
            width: 100%;
            height: 248px;
        }
        .auto-style18 {
            width: 286px;
        }
        .auto-style19 {
            width: 149px;
        }
        .auto-style20 {
            width: 286px;
            height: 28px;
        }
        .auto-style21 {
            width: 149px;
            height: 28px;
        }
        .auto-style22 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" ToolbarFull="|NewPage|Preview
Cut|Copy|Paste|PasteText|PasteFromWord|-|Print|SpellChecker|Scayt
Undo|Redo|-|Find|Replace|-|SelectAll|RemoveFormat
/
Bold|Italic|Underline|Strike|-|Subscript|Superscript|-|BidiLtr|BidiRtl
JustifyLeft|JustifyCenter|JustifyRight|JustifyBlock
NumberedList|BulletedList|-|Outdent|Indent|-|Table|HorizontalRule|PageBreak



/
Styles|Format|Font|FontSize
TextColor|BGColor|SpecialChar" Height="314px"></CKEditor:CKEditorControl>
           <table class="auto-style17" style="background-color: #D3D3D3">
               <tr>
                   <td class="auto-style20">
           <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14px" Text="Tarih Seçiniz:  " ForeColor="black"></asp:Label>
                   </td>
                   <td class="auto-style21">
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" TextMode="Date" CssClass="auto-style13" Width="130px"></asp:TextBox>
                   </td>
                   <td class="auto-style22">
    <asp:Button ID="Button1" runat="server" Text="Vt-Kaydet" Height="30px" OnClick="Button1_Click" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style18">
           <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14px" Text="Kime Mail Atılacak: "></asp:Label>
                   </td>
                   <td class="auto-style19">
           <asp:TextBox ID="TextBox2" runat="server"  TextMode="Email" Height="20px" Width="129px"></asp:TextBox>
                   </td>
                   <td>
           <asp:Button ID="Button2" runat="server"  Text="Notu Mail At" Height="30px" OnClick="Button2_Click" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style18">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NotlarimConnectionString %>" SelectCommand="SELECT [id], [yazi], [tarih] FROM [Notlarım]"></asp:SqlDataSource>
                   </td>
                   <td class="auto-style19">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style18">
<asp:GridView ID="GridView1"  runat="server" CssClass="Gridview" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="304px" ForeColor="#333333">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
        <asp:BoundField DataField="yazi" HeaderText="yazi" HtmlEncode="False" SortExpression="yazi" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>

                   </td>
                   <td class="auto-style19">
                       <br />
                       <br />
                       <br />
                       <br />
                       <br />
                       <br />
                       <br />
                   </td>
                   <td>&nbsp;</td>
               </tr>
           </table>
           

</asp:Content>



