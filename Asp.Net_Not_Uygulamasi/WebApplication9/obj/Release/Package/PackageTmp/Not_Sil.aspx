<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Not_Sil.aspx.cs" Inherits="WebApplication9.Not_Sil" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style17 {
        width: 100%;
    }
    .auto-style18 {
        width: 256px;
    }
        .auto-style19 {
            margin-top: 0px;
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
            <td class="auto-style18">

<asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Height="20px" Width="154px"></asp:TextBox>
            </td>
            <td>
<asp:Button ID="Button1" runat="server" Text="Notu Sil" OnClick="Button1_Click" Font-Bold="True" CssClass="auto-style19" Height="30px" />

            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NotlarimConnectionString3 %>" DeleteCommand="DELETE FROM [Notlarım] WHERE [id] = @id" InsertCommand="INSERT INTO [Notlarım] ([yazi], [tarih]) VALUES (@yazi, @tarih)" SelectCommand="SELECT [id], [yazi], [tarih] FROM [Notlarım]" UpdateCommand="UPDATE [Notlarım] SET [yazi] = @yazi, [tarih] = @tarih WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="yazi" Type="String" />
                        <asp:Parameter Name="tarih" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="yazi" Type="String" />
                        <asp:Parameter Name="tarih" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="292px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
        <asp:BoundField DataField="yazi" HeaderText="yazi" SortExpression="yazi" HtmlEncode="False" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
            <td>&nbsp;</td>
        </tr>
</table>

</asp:Content>
