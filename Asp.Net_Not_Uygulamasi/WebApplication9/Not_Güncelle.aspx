<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Not_Güncelle.aspx.cs" Inherits="WebApplication9.Not_güncelle" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          }
        .auto-style17 {
            width: 100%;
            height: 130px;
        }
        .auto-style18 {
        width: 295px;
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
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" TextMode="Date" Width="133px" Height="20px"></asp:TextBox>
                </td>
                <td>
        <asp:Button ID="Button1" runat="server"  Text="Güncelle" OnClick="Button1_Click" Height="30px" Font-Bold="True" />
               &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NotlarimConnectionString2 %>" DeleteCommand="DELETE FROM [Notlarım] WHERE [id] = @id" InsertCommand="INSERT INTO [Notlarım] ([yazi], [tarih]) VALUES (@yazi, @tarih)" SelectCommand="SELECT [id], [yazi], [tarih] FROM [Notlarım]" UpdateCommand="UPDATE [Notlarım] SET [yazi] = @yazi, [tarih] = @tarih WHERE [id] = @id">
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
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NotConnectionString %>" SelectCommand="SELECT * FROM [Notlarım]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
        <asp:GridView ID="GridView1" runat="server" Height="151px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="288px" DataKeyNames="id" DataSourceID="SqlDataSource2">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="yazi" HeaderText="yazi" SortExpression="yazi" HtmlEncode="False" />
                <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
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

