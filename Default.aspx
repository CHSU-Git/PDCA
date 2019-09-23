<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PDCA_ASPX._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <asp:Table Width="100%" BorderColor="Black" BorderStyle="Solid" Font-Bold="true" runat="server" CellPadding="10" BackColor="lightgrey">
            <asp:TableRow>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center">
                    <asp:Label ID="Label6" runat="server" Text="Department" Font-Bold="true"></asp:Label>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center" BackColor="White">
                    <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center">
                    <asp:Label ID="Label8" runat="server" Text="Title" Font-Bold="true"></asp:Label>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center" BackColor="White">
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center">
                    <asp:Label ID="Label10" runat="server" Text="Description" Font-Bold="true"></asp:Label>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center" BackColor="White">
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center">
                    <asp:Label ID="Label12" runat="server" Text="Entered By" Font-Bold="true"></asp:Label>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center" BackColor="White">
                    <asp:TextBox ID="txtEnteredBy" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <div style="width: 100%; background-color: lightgrey;">
            <asp:Panel runat="server" ID="panel1" HorizontalAlign="Center">
                <div style="font-weight: bold; background-color: maroon;">
                    <asp:Table runat="server"
                        Width="100%">
                        <asp:TableRow>
                            <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                <asp:Label runat="server" ID="textLabel1" ForeColor="White" />
                            </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlAdvancedSearch" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
                <asp:Table ID="Table1" runat="server" Width="100%" CellPadding="5" CellSpacing="5">

                    <asp:TableRow>
                        <asp:TableCell BorderColor="Black" BorderStyle="Solid">
                            <asp:Label ID="Label14" runat="server" Text="Status" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell BorderColor="Black" BorderStyle="Solid">
                            <asp:CheckBoxList ID="ckblStatus" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Text="New" Value="New"></asp:ListItem>
                                <asp:ListItem Text="Submitted" Value="Submitted"></asp:ListItem>
                                <asp:ListItem Text="Complete" Value="Complete"></asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableCell><asp:TableCell BorderColor="Black" BorderStyle="Solid">
                            <asp:Label ID="Label15" runat="server" Text="Entity" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell BorderColor="Black" BorderStyle="Solid">
                            <asp:CheckBoxList ID="ckblEntity" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Text="CHSU" Value="CHSU"></asp:ListItem>
                                <asp:ListItem Text="COP" Value="COP"></asp:ListItem>
                                <asp:ListItem Text="COM" Value="COM"></asp:ListItem>
                                <asp:ListItem Text="Unsure" Value="Unsure"></asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableCell><asp:TableCell BorderColor="Black" BorderStyle="Solid">
                            <asp:Label ID="Label16" runat="server" Text="School Year" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell BorderColor="Black" BorderStyle="Solid">
                            <asp:CheckBoxList ID="ckblSchoolYear" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                                <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                                <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                                <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                                <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                                <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                                <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                                <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Table ID="Table2" runat="server" Width="100%" CellPadding="5" CellSpacing="5">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label18" runat="server" Text="Start Date" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label19" runat="server" Text="End Date" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="lblFieldDescription" runat="server" Text="Subject of Assessment Examples:" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtSubjectofAssessmentExamplesSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label1" runat="server" Text="Assessment Name:" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtAssessmentNameSearch" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label2" runat="server" Text="Strengths" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtStrengthsSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label3" runat="server" Text="Insights" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtInsightsSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label4" runat="server" Text="Areas for Improvement" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtAreasForImprovementSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label5" runat="server" Text="Plan" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtPlanSearch" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label7" runat="server" Text="Do" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtDoSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label9" runat="server" Text="Check" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtCheckSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label11" runat="server" Text="Additional Comments" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtAdditionalCommentsSearch" runat="server"></asp:TextBox>
                        </asp:TableCell><asp:TableCell>
                            <asp:Label ID="Label13" runat="server" Text="Report Must Be Conveyed" Font-Bold="true"></asp:Label>
                        </asp:TableCell><asp:TableCell>
                            <asp:TextBox ID="txtReportMustBeConveyedSearch" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>
            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender11" runat="server" TargetControlID="pnlAdvancedSearch"
                CollapsedSize="0" ExpandedSize="205"
                ExpandedText="Advanced Search"
                CollapsedText="Advanced Search" TextLabelID="textLabel1" ImageControlID="Image1"
                ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                ExpandControlID="Image1"
                CollapseControlID="Image1" Collapsed="true" SuppressPostBack="false" />
            <hr />
        </div>

        <asp:GridView AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderWidth="2px"
            BorderStyle="Solid" BorderColor="Black" CellPadding="3" runat="server"
            ID="gvPDCAList" DataKeyNames="pdcaid"
            OnRowDataBound="gvPDCAList_RowDataBound"
            OnPageIndexChanging="grdData_PageIndexChanging"
            OnSelectedIndexChanged="gvPDCAList_SelectedIndexChanged"
            OnDataBound="PDCAGridView_DataBound"
            OnSorting="PDCAGridView_Sorting"
            Width="100%">
            <HeaderStyle BackColor="Maroon" ForeColor="White" BorderColor="Black" Font-Bold="true" Font-Size="Larger" BorderWidth="2" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="Black" BorderColor="Black" BorderWidth="1" HorizontalAlign="Left" Font-Size="Medium" />
            <AlternatingRowStyle BackColor="lightgrey" ForeColor="Black" BorderColor="Black" BorderWidth="1" HorizontalAlign="Left" Font-Size="Medium"></AlternatingRowStyle>
            <Columns>
                <asp:TemplateField HeaderText="Title" SortExpression="Title" HeaderStyle-Width="25%"  >
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl='<%# Eval("PDCAID", @"~/PDCAEdit.aspx?pdcaid={0}") %>'
                            Text='<%# Eval("Title")%>'>
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField  DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-Width="30%" >
                    <ItemStyle Width="650px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField  DataField="Department" HeaderText="Department" SortExpression="Department" HeaderStyle-Width="15%" >
                    <ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField  DataField="Status" HeaderText="Status" SortExpression="status" HeaderStyle-Width="10%" >
                    <ItemStyle Width="50px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField  DataField="LastUpdate" HeaderText="Last Update" SortExpression="LastUpdate" HeaderStyle-Width="15%" >
                    <ItemStyle Width="50px"></ItemStyle>
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>