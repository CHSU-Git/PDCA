<%@ Page Title="" Language="C#" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="PDCAFieldList.aspx.cs" Inherits="PDCA_ASPX.PDCAFieldList" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       <asp:GridView AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderWidth="2px"
            BorderStyle="Solid" BorderColor="Black" CellPadding="3" runat="server"
            ID="gvPDCAFieldList" DataKeyNames="pdcafieldid"
            OnRowDataBound="OnRowDataBound"
            OnPageIndexChanging="grdData_PageIndexChanging"
            OnSelectedIndexChanged="gvPDCAFieldList_SelectedIndexChanged"
            OnDataBound="PDCAFieldGridView_DataBound"
            OnSorting="PDCAFieldGridView_Sorting"
            Width="100%">
            <HeaderStyle BackColor="Maroon" ForeColor="White" BorderColor="Black" Font-Bold="true" Font-Size="Larger" BorderWidth="2" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="Black" BorderColor="Black" BorderWidth="1" HorizontalAlign="Left" Font-Size="Medium" />
            <AlternatingRowStyle BackColor="lightgrey" ForeColor="Black" BorderColor="Black" BorderWidth="1" HorizontalAlign="Left" Font-Size="Medium"></AlternatingRowStyle>
            <Columns>
                <asp:TemplateField HeaderText="FieldName" >
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl='<%# Eval("PDCAFieldID", @"~/PDCAFieldEdit.aspx?pdcafieldid={0}") %>'
                            Text='<%# Eval("FieldName")%>'>
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField  DataField="Title" HeaderText="Title">
                    <ItemStyle Width="200px"></ItemStyle>
                </asp:BoundField>

                           <asp:TemplateField HeaderText="Description" >
                    <ItemTemplate>
                        <asp:Literal ID="Literal1" runat="server"   Text='<%# Eval("Description")%>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>
