<%@ Page Title="" Language="C#" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="PDCAFieldEdit.aspx.cs" Inherits="PDCA_ASPX.PDCAFieldEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table1" runat="server" CellPadding="10" CellSpacing="5" Width="100%">
        <asp:TableRow>
            <asp:TableCell runat="server" HorizontalAlign="Center">
                <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Editing Field Description"></asp:Label>
            </asp:TableCell>
                    </asp:TableRow>
        </asp:Table>
        
<asp:Table ID="Table3" runat="server" CellPadding="10" CellSpacing="5">
       <asp:TableRow>
            <asp:TableCell runat="server" ColumnSpan="2">
                <asp:Label ID="Label1" runat="server" Text="Title:  " Font-Bold="true"></asp:Label>
                     <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
            </asp:TableCell>
                  </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Field ID:  " Font-Bold="true"></asp:Label>
                <asp:Label ID="lblFieldID" runat="server" Text="FieldID"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="FieldName:  " Font-Bold="true"></asp:Label>
                <asp:Label ID="lblFieldName" runat="server" Text="FieldName"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
           
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Description" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="150" Width="1000"></asp:TextBox>
                 <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender8" runat="server" TargetControlID="txtDescription" EnableSanitization="false">
        <Toolbar>
            <ajaxToolkit:Undo />
            <ajaxToolkit:Redo />
            <ajaxToolkit:Bold />
            <ajaxToolkit:Italic />
            <ajaxToolkit:Underline />
            <ajaxToolkit:StrikeThrough />
            <ajaxToolkit:Subscript />
            <ajaxToolkit:Superscript />
            <ajaxToolkit:JustifyLeft />
            <ajaxToolkit:JustifyCenter />
            <ajaxToolkit:JustifyRight />
            <ajaxToolkit:JustifyFull />
            <ajaxToolkit:InsertOrderedList />
            <ajaxToolkit:InsertUnorderedList />
            <ajaxToolkit:CreateLink />
            <ajaxToolkit:UnLink />
            <ajaxToolkit:RemoveFormat />
            <ajaxToolkit:SelectAll />
            <ajaxToolkit:UnSelect />
            <ajaxToolkit:Delete />
            <ajaxToolkit:Cut />
            <ajaxToolkit:Copy />
            <ajaxToolkit:Paste />
            <%--              <ajaxToolkit:BackgroundColorSelector />
                <ajaxToolkit:ForeColorSelector />
                <ajaxToolkit:FontNameSelector />
                <ajaxToolkit:FontSizeSelector />--%>
            <ajaxToolkit:Indent />
            <ajaxToolkit:Outdent />
            <ajaxToolkit:InsertHorizontalRule />
            <ajaxToolkit:HorizontalSeparator />
        </Toolbar>
    </ajaxToolkit:HtmlEditorExtender>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <asp:Table ID="Table2" runat="server"></asp:Table>
</asp:Content>