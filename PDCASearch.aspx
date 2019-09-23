<%@ Page Title="" Language="C#" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="PDCASearch.aspx.cs" Inherits="PDCA_ASPX.PDCASearch" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
                                <asp:TableCell BorderColor="Black" BorderStyle="Solid" Font-Bold="true" HorizontalAlign="Center">
                    <asp:Button ID="btnClearSearch" runat="server" Text="Clear Search Terms" OnClick="btnClearSearch_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>


      <ajaxToolkit:TabContainer ID="tcSearch" runat="server" ActiveTabIndex="0">
        
            <ajaxToolkit:TabPanel ID="tpResults" runat="server" HeaderText="Results">
                <ContentTemplate>
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
                            NavigateUrl='<%# Eval("PDCAID", @"~/PDCAEdit1.aspx?pdcaid={0}") %>'
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
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

                  
            <ajaxToolkit:TabPanel ID="tpContents" runat="server" HeaderText="Search Contents">
                <ContentTemplate>
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
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            
            
            <ajaxToolkit:TabPanel ID="tpACPEAccreditationStandards" runat="server" HeaderText="Search ACPE Accreditation Standards">
                <ContentTemplate>
    <%--  ********************************************    ACPE Standards ********************************************  --%>
            <%--  ********************************************    Header ********************************************  --%>

            <asp:Table ID="Table12" runat="server" Width="1200px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Center" BackColor="Maroon" ForeColor="White">
                        <asp:Label ID="Label76" runat="server" Text="ACPE Accreditation Standards" ForeColor="White" Font-Size="X-Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <%--  ********************************************    ACPE Standard 100 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel32" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE100" ForeColor="White" Text="100 Standards—Code of Professional Ethics for ACPE Members " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label53" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img100" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE100" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <%--  ********************************************    ACPE Standard 101 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel10" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE101" ForeColor="White" Text="Standard 101 In relationship to those served, ACPE members:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="lblErrorReport" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img101" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE101" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE101Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards0" Text="101.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label17" runat="server" Text="affirm and respect the human dignity and individual worth of each person"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1" Text="101.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label55" runat="server" Text="do not discriminate against anyone because of race, ethnicity, religious/spiritual tradition, sexual orientation, gender identity, gender expression, age, disability."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards2" Text="101.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label57" runat="server" Text=" respect the integrity and welfare of those served or supervised, refraining from disparagement and avoiding emotional exploitation, sexual exploitation, or any other kind of exploitation."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3" Text="101.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label59" runat="server" Text=" approach the religious convictions of a person, group and/or CPE student with respect and sensitivity; avoid the imposition of their theology or cultural values on those served or supervised."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards4" Text="101.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label61" runat="server" Text=" respect confidentiality to the extent permitted by law, regulations or other applicable rules."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards5" Text="101.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label62" runat="server" Text=" follow nationally established guidelines in the design of research involving human subjects and gain approval from a recognized institutional review board before conducting such research."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender9" runat="server" TargetControlID="pnlACPE101"
                            CollapsedSize="0" ExpandedSize="230"
                            ExpandedText="Standard 101 In relationship to those served, ACPE members:"
                            CollapsedText="Standard 101 In relationship to those served, ACPE members:" TextLabelID="lblACPE101" ImageControlID="img101"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img101"
                            CollapseControlID="img101"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 102 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel2" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE102" ForeColor="White" Text="Standard 102 In relation to other groups, ACPE members:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label20" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img102" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE102" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE102Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1021" Text="102.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label21" runat="server" Text="maintain good standing in their faith group."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards6" Text="102.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label63" runat="server" Text="abide by the professional practice and/or teaching standards of the state, the community and the institution in which they are employed. If for any reason they are not free to practice or teach according to conscience, they shall notify the employer and the Executive Director of ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards7" Text="102.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label64" runat="server" Text="maintain professional relationships with other persons in the ACPE center, institution in which employed and/or the community."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards8" Text="102.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label65" runat="server" Text="do not directly or by implication claim professional qualifications that exceed actual qualifications or misrepresent their affiliation with any institution, organization or individual; are responsible for correcting the misrepresentation or misunderstanding of their professional qualifications or affiliations."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pnlACPE102"
                            CollapsedSize="0" ExpandedSize="150"
                            ExpandedText="Standard 102 In relation to other groups, ACPE members:"
                            CollapsedText="Standard 102 In relation to other groups, ACPE members:" TextLabelID="lblACPE102" ImageControlID="img102"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img102"
                            CollapseControlID="img102"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                    <%--  ********************************************    ACPE Standard 103 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel3" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE103" ForeColor="White" Text="Standard 103 In relation to ACPE, members:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label22" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img103" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE103" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE103Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1031" Text="103.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label23" runat="server" Text="continue professional education and growth, including participation in the meetings and affairs of ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards9" Text="103.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label66" runat="server" Text="avoid using knowledge, position or professional association to secure unfair personal advantage; do not knowingly permit their services to be used by others for purposes inconsistent with the ethical standards of ACPE; or use affiliation with ACPE for purposes that are not consistent with ACPE standards."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards10" Text="103.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label67" runat="server" Text="speak on behalf of ACPE or represent the official position of ACPE only as authorized by the ACPE governing body."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards11" Text="103.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label68" runat="server" Text=" do not make intentionally false, misleading or incomplete statements about their work or ethical behavior."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="pnlACPE103"
                            CollapsedSize="0" ExpandedSize="150"
                            ExpandedText="Standard 103 In relation to ACPE, members:"
                            CollapsedText="Standard 103 In relation to ACPE, members:" TextLabelID="lblACPE103" ImageControlID="img103"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img103"
                            CollapseControlID="img103"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                    <%--  ********************************************    ACPE Standard 104 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel4" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE104" ForeColor="White" Text="Standard 104 In collegial relationships, ACPE members:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label24" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img104" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE104" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE104Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1041" Text="104.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label25" runat="server" Text=" respect the integrity and welfare of colleagues; maintain professional relationships on a professional basis, refraining from disparagement and avoiding emotional, sexual or any other kind of exploitation."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards12" Text="104.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label69" runat="server" Text="take collegial and responsible action when concerns about incompetence, impairment or misconduct arise."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" TargetControlID="pnlACPE104"
                            CollapsedSize="0" ExpandedSize="80"
                            ExpandedText="Standard 104 In collegial relationships, ACPE members:"
                            CollapsedText="Standard 104 In collegial relationships, ACPE members:" TextLabelID="lblACPE104" ImageControlID="img104"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img104"
                            CollapseControlID="img104"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                    <%--  ********************************************    ACPE Standard 105 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel5" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE105" ForeColor="White" Text="Standard 105 In conducting business matters, ACPE members:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label26" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img105" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE105" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE105Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1051" Text="105.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label27" runat="server" Text="carry out administrative responsibilities in a timely and professional manner."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards13" Text="105.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label70" runat="server" Text="implement sound fiscal practices, maintain accurate financial records and protect the integrity of funds entrusted to their care."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards14" Text="105.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label71" runat="server" Text="distinguish private opinions from those of ACPE, their faith group or profession in all publicity, public announcements or publications."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards15" Text="105.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label72" runat="server" Text=" accurately describe the ACPE center, its pastoral services and educational programs. All statements in advertising, catalogs, publications, recruiting, and academic calendars shall be accurate at the time of publication. Publications advertising a center’s programs shall include the type(s) and level(s) of education offered and the ACPE address, telephone number and website address."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards16" Text="105.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label73" runat="server" Text="accurately describe program expectations, including time requirements, in the admissions process for CPE programs."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" TargetControlID="pnlACPE105"
                            CollapsedSize="0" ExpandedSize="420"
                            ExpandedText="Standard 105 In conducting business matters, ACPE members:"
                            CollapsedText="Standard 105 In conducting business matters, ACPE members:" TextLabelID="lblACPE105" ImageControlID="img105"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img105"
                            CollapseControlID="img105"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender32" runat="server" TargetControlID="pnlACPE100"
                    CollapsedSize="0" ExpandedSize="550"
                    ExpandedText="100 Standards—Code of Professional Ethics for ACPE Members "
                    CollapsedText="100 Standards—Code of Professional Ethics for ACPE Members " TextLabelID="lblACPE100" ImageControlID="img100"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img100"
                    CollapseControlID="img100"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>

            <%--  ********************************************    ACPE Standard 200 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel6" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE200" ForeColor="White" Text="200 Standards—Complaints " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label28" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img200" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE200" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="tblACPE200Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true" ID="ckACPEStandards200" Text="200" runat="server" />
                            </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label29" runat="server" Text="200 Standards—Complaints "></asp:Label>
                            </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" TargetControlID="pnlACPE200"
                    CollapsedSize="0" ExpandedSize="50"
                    ExpandedText="200 Standards—Complaints "
                    CollapsedText="200 Standards—Complaints " TextLabelID="lblACPE200" ImageControlID="img200"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img200"
                    CollapseControlID="img200"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>

            <%--  ********************************************    ACPE Standard 301_306 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel27" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE301_306" ForeColor="White" Text="Standards 301-306 ACPE Accredited Centers" />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label52" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img301_306" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE301_306" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <%--  ********************************************    ACPE Standard 301 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel7" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE301" ForeColor="White" Text="Standard 301 develop and maintain a written plan which:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label30" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img301" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE301" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE301Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3011" Text="301.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label31" runat="server" Text="describes the administrative structure and lines of authority within the center."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards17" Text="301.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label74" runat="server" Text="provides for compliance with ACPE standards."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards18" Text="301.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label75" runat="server" Text="describes how commitments to students will be met in the event of substantial change within the institution or center."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender6" runat="server" TargetControlID="pnlACPE301"
                            CollapsedSize="0" ExpandedSize="100"
                            ExpandedText="Standard 301 develop and maintain a written plan which:"
                            CollapsedText="Standard 301 develop and maintain a written plan which:" TextLabelID="lblACPE301" ImageControlID="img301"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img301"
                            CollapseControlID="img301"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 302 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel8" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE302" ForeColor="White" Text="Standard 302 provide at least the following components:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label32" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img302" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE302" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE302Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3021" Text="302.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label33" runat="server" Text="financial, human and physical resources sufficient to support the units of CPE offered by the center."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards20" Text="302.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label77" runat="server" Text="a population that provides students with opportunities for ministry and clinical pastoral education."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards21" Text="302.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label78" runat="server" Text="whenever a center uses CPE program elements external to itself, a written agreement that specifies the relationship and operational details is required."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender7" runat="server" TargetControlID="pnlACPE302"
                            CollapsedSize="0" ExpandedSize="100"
                            ExpandedText="Standard 302 provide at least the following components:"
                            CollapsedText="Standard 302 provide at least the following components:" TextLabelID="lblACPE302" ImageControlID="img302"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img302"
                            CollapseControlID="img302"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 303 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel9" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE303" ForeColor="White" Text="Standard 303 provide these educational resources:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label34" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img303" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE303" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE303Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3031" Text="303.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label35" runat="server" Text=" a faculty of sufficient size to fulfill program goals and comprised of persons authorized by ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards22" Text="303.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label79" runat="server" Text="a faculty development plan."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards23" Text="303.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label80" runat="server" Text=" interdisciplinary consultation and teaching within the program(s) provided by adjunct faculty and/or guest lecturers."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards24" Text="303.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label81" runat="server" Text="individual and group supervision by a person authorized by ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards25" Text="303.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label82" runat="server" Text="a peer group of at least three CPE Level I/Level II students engaged in small group process and committed to fulfilling the requirements of the educational program."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards26" Text="303.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label83" runat="server" Text="access to library and educational facilities adequate to meet the ACPE standards."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards27" Text="303.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label84" runat="server" Text="access to current ACPE standards, commissions’ manuals, the ACPE Policy for Complaints Alleging Violation of ACPE Education Standards and the ACPE Policy for Complaints Against the Accreditation Commission"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards28" Text="303.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label85" runat="server" Text="student support services including, but not limited to, orientation, a process for educational guidance and recommendations for counseling resources, resume preparation and employment search."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender8" runat="server" TargetControlID="pnlACPE303"
                            CollapsedSize="0" ExpandedSize="280"
                            ExpandedText="Standard 303 provide these educational resources:"
                            CollapsedText="Standard 303 provide these educational resources:" TextLabelID="lblACPE303" ImageControlID="img303"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img303"
                            CollapseControlID="img303"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 304 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel11" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE304" ForeColor="White" Text="Standard 304 provide all policies and procedures in writing and inform all students and ACPE program staff of their content." />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label36" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img304" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE304" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE304Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3041" Text="304.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label37" runat="server" Text="an admission policy that clearly states the ACPE accredited center does not discriminate against persons because of race, gender, age, faith group, national origin, sexual orientation, or disability"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards29" Text="304.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label86" runat="server" Text="a financial policy that clearly states fees, payment schedules, refunds, stipends, and benefits."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards30" Text="304.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label87" runat="server" Text="a complaint procedure consistent with ACPE Standards the ACPE Manual 2016 Processing Complaints of Ethics Violations that addresses an alleged violation of the ACPE ethics standards."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards31" Text="304.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label88" runat="server" Text="a procedure for maintaining student records for ten years, which addresses confidentiality, access, content, and custody of student records should the center be without a supervisor and/or accreditation. (See Guide for Student Records, Appendix 7B)"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards32" Text="304.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label89" runat="server" Text="a procedure for providing consultation for CPE students."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards33" Text="304.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label90" runat="server" Text=" a procedure for discipline, dismissal, and withdrawal of students."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards34" Text="304.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label91" runat="server" Text="a policy for the ethical conduct of students and program staff consistent with the ACPE Code of Ethics."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards35" Text="304.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label92" runat="server" Text=" a statement of student rights and responsibilities. Centers using video conferencing methodology must include a statement of students’ and supervisors’ rights and responsibilities related to the use of the technology."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards36" Text="304.9" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label93" runat="server" Text="an agreement for training at the ministry site that includes, but is not limited to:"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards37" Text="304.10" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label94" runat="server" Text="a policy and procedure that details how the accredited center will provide for completion of a unit or program in process if the Certified Educator is unable to continue."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards38" Text="304.11" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label95" runat="server" Text="supervision and program management by a person authorized by ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards39" Text="304.12" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label96" runat="server" Text="ReplaceText"></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender10" runat="server" TargetControlID="pnlACPE304"
                            CollapsedSize="0" ExpandedSize="425"
                            ExpandedText="Standard 304 provide all policies and procedures in writing and inform all students and ACPE program staff of their content."
                            CollapsedText="Standard 304 provide all policies and procedures in writing and inform all students and ACPE program staff of their content." TextLabelID="lblACPE304" ImageControlID="img304"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img304"
                            CollapseControlID="img304"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 305 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel12" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE305" ForeColor="White" Text="Standard 305 have consultation and program evaluation, including:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label38" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img305" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE305" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE305Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3051" Text="305.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label39" runat="server" Text="an ongoing process of consultation with a designated professional advisory group"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards40" Text="305.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label97" runat="server" Text=" ongoing program evaluation sufficient to promote the continuous quality improvement of the educational program(s) including:"></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender12" runat="server" TargetControlID="pnlACPE305"
                            CollapsedSize="0" ExpandedSize="75"
                            ExpandedText="Standard 305 have consultation and program evaluation, including:"
                            CollapsedText="Standard 305 have consultation and program evaluation, including:" TextLabelID="lblACPE305" ImageControlID="img305"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img305"
                            CollapseControlID="img305"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 306 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel13" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE306" ForeColor="White" Text="Standard 306 accurately describe the center, its pastoral services, and educational programs." />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label40" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img306" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE306" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE306Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3061" Text="306.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label41" runat="server" Text="Standard 306 accurately describe the center, its pastoral services, and educational programs."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender13" runat="server" TargetControlID="pnlACPE306"
                            CollapsedSize="0" ExpandedSize="50"
                            ExpandedText="Standard 306 accurately describe the center, its pastoral services, and educational programs."
                            CollapsedText="Standard 306 accurately describe the center, its pastoral services, and educational programs." TextLabelID="lblACPE306" ImageControlID="img306"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img306"
                            CollapseControlID="img306"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender27" runat="server" TargetControlID="pnlACPE301_306"
                    CollapsedSize="0" ExpandedSize="750"
                    ExpandedText="Standards 301-306 ACPE Accredited Centers"
                    CollapsedText="Standards 301-306 ACPE Accredited Centers" TextLabelID="lblACPE301_306" ImageControlID="img301_306"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img301_306"
                    CollapseControlID="img301_306"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>

            <%--  ********************************************    ACPE Standard 307_308 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel28" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE307_308" ForeColor="White" Text="Standards 307-308 ACPE Accredited Programs " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label54" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img307_308" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE307_308" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <%--  ********************************************    ACPE Standard 307 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel14" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE307" ForeColor="White" Text="Standard 307—An applicant’s suitability for admission to any CPE program is a matter of professional judgment by the ACPE accredited center in accordance with its admission policies." />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label42" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img307" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE307" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE307Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3071" Text="307.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label43" runat="server" Text="a completed ACPE application."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards41" Text="307.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label98" runat="server" Text="an admission interview with a qualified interviewer, for persons applying for an initial unit of CPE, to determine readiness for clinical learning."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards42" Text="307.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label99" runat="server" Text="either graduation from high school/completion of a GED or ordination by a faith community or commission to function in ministry by an appropriate religious authority as determined by ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards43" Text="307.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label100" runat="server" Text="fulfillment of education or experience requirements established by the ACPE accredited center."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards44" Text="307.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label101" runat="server" Text="acceptance by an ACPE center accredited for appropriate program type."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards45" Text="307.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label102" runat="server" Text="Additional requirements for admission to Certified Educator CPE include, but are not limited to:"></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender14" runat="server" TargetControlID="pnlACPE307"
                            CollapsedSize="0" ExpandedSize="200"
                            ExpandedText="Standard 307—An applicant’s suitability for admission to any CPE program is a matter of professional judgment by the ACPE accredited center in accordance with its admission policies."
                            CollapsedText="Standard 307—An applicant’s suitability for admission to any CPE program is a matter of professional judgment by the ACPE accredited center in accordance with its admission policies." TextLabelID="lblACPE307" ImageControlID="img307"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img307"
                            CollapseControlID="img307"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                    <%--  ********************************************    ACPE Standard 308 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel15" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE308" ForeColor="White" Text="Standard 308 Program standards include:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label44" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img308" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE308" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE308Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3081" Text="308.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label45" runat="server" Text=" a specific time period for a program unit of clinical pastoral education or a half unit of clinical pastoral education."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards46" Text="308.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label103" runat="server" Text="supervised clinical practice of ministry to persons and the detailed reporting and evaluation of that ministry."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards47" Text="308.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label104" runat="server" Text="supervision and program management by a person authorized by ACPE."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards48" Text="308.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label105" runat="server" Text="an individual contract for learning developed collaboratively by the student and Certfied Educator."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards49" Text="308.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label106" runat="server" Text="a relational learning environment that fosters growth in pastoral formation, pastoral reflection and pastoral competence; such an environment involves mutual trust, respect, openness, challenge, conflict, and confrontation."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards50" Text="308.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label107" runat="server" Text="an instructional plan that employs a process model of education and clinical method of learning including:"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards51" Text="308.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label108" runat="server" Text="presentation and use of literature and instruction appropriate to the students’ learning goals and needs."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards52" Text="308.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label109" runat="server" Text="final evaluations written by the student and Certified Educator."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards53" Text="308.9" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label110" runat="server" Text=" Additional program standards for Certified Educator CPE include, but are not limited to:"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards54" Text="308.10" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label111" runat="server" Text="Over a ten year accreditation period, 75% of students entering units of CPE Level I/Level II or Certified Educator CPE receive credit for those units."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards55" Text="308.11" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label112" runat="server" Text=" When there is geographic distance between the CPE Certified Educator and students, electronic presence, i.e., video conferencing, is allowed as an alternative to physical presence."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender15" runat="server" TargetControlID="pnlACPE308"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Standard 308 Program standards include:"
                            CollapsedText="Standard 308 Program standards include:" TextLabelID="lblACPE308" ImageControlID="img308"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img308"
                            CollapseControlID="img308"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender28" runat="server" TargetControlID="pnlACPE307_308"
                    CollapsedSize="0" ExpandedSize="500"
                    ExpandedText="Standards 307-308 ACPE Accredited Programs"
                    CollapsedText="Standards 307-308 ACPE Accredited Programs" TextLabelID="lblACPE307_308" ImageControlID="img307_308"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img307_308"
                    CollapseControlID="img307_308"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>
            <%--  ********************************************    ACPE Standard 309_310 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel29" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE309_310" ForeColor="White" Text="Standards 309-310 Objectives and Outcomes of ACPE Accredited Programs " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label56" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img309_310" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE309_310" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <%--  ********************************************    ACPE Standard 309 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel16" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE309" ForeColor="White" Text="Standard 309 The center designs its CPE Level I/Level II curriculum to facilitate the students’ achievement of the following objectives:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label46" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img309" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE309" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE309Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3091" Text="309.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label47" runat="server" Text="to develop students’ awareness of themselves as ministers and of the ways their ministry affects persons."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards56" Text="309.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label113" runat="server" Text="to develop students’ awareness of how their attitudes, values, assumptions, strengths, and weaknesses affect their pastoral care."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards57" Text="309.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label114" runat="server" Text="to develop students’ ability to engage and apply the support, confrontation, and clarification of the peer group for the integration of personal attributes and pastoral functioning."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards58" Text="309.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label115" runat="server" Text="to develop students’ awareness and understanding of how persons, social conditions, systems, and structures affect their lives and the lives of others and how to address effectively these issues through their ministry."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards59" Text="309.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label116" runat="server" Text="to develop students’ skills in providing intensive and extensive pastoral care and counseling to persons."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards60" Text="309.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label117" runat="server" Text=" to develop students’ ability to make effective use of their religious/spiritual heritage, theological understanding, and knowledge of the behavioral sciences and applied clinical ethics in their pastoral care of persons and groups."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards61" Text="309.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label118" runat="server" Text="to teach students the pastoral role in professional relationships and how to work effectively as a pastoral member of a multidisciplinary team."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards62" Text="309.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label119" runat="server" Text=" to develop students’ capacity to use one’s pastoral and prophetic perspectives in preaching, teaching, leadership, management, pastoral care, and pastoral counseling."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards63" Text="309.9" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label120" runat="server" Text=" to develop students’ understanding and ability to apply the clinical method of learning."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards64" Text="309.10" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label121" runat="server" Text=" to develop students’ abilities to use both individual and group supervision for personal and professional growth, including the capacity to evaluate one’s ministry."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender16" runat="server" TargetControlID="pnlACPE309"
                            CollapsedSize="0" ExpandedSize="325"
                            ExpandedText="Standard 309 The center designs its CPE Level I/Level II curriculum to facilitate the students’ achievement of the following objectives:"
                            CollapsedText="Standard 309 The center designs its CPE Level I/Level II curriculum to facilitate the students’ achievement of the following objectives:" TextLabelID="lblACPE309" ImageControlID="img309"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img309"
                            CollapseControlID="img309"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 310 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel17" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE310" ForeColor="White" Text="Standard 310 Where a pastoral care specialty is offered, the CPE center designs its CPE Level II curriculum to facilitate the students’ achievement of the following additional objectives:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label48" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img310" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE310" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE310Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3101" Text="310.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label49" runat="server" Text="to afford students opportunities to become familiar with and apply relevant theories and methodologies to their ministry specialty."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards66" Text="310.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label123" runat="server" Text=" to provide students opportunities to formulate and apply their philosophy and methodology for the ministry specialty."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards67" Text="310.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label124" runat="server" Text="to provide students opportunities to demonstrate pastoral competence in the practice of the specialty."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender17" runat="server" TargetControlID="pnlACPE310"
                            CollapsedSize="0" ExpandedSize="100"
                            ExpandedText="Standard 310 Where a pastoral care specialty is offered, the CPE center designs its CPE Level II curriculum to facilitate the students’ achievement of the following additional objectives:"
                            CollapsedText="Standard 310 Where a pastoral care specialty is offered, the CPE center designs its CPE Level II curriculum to facilitate the students’ achievement of the following additional objectives:" TextLabelID="lblACPE310" ImageControlID="img310"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img310"
                            CollapseControlID="img310"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender29" runat="server" TargetControlID="pnlACPE309_310"
                    CollapsedSize="0" ExpandedSize="550"
                    ExpandedText="Standards 309-310 Objectives and Outcomes of ACPE Accredited Programs "
                    CollapsedText="Standards 309-310 Objectives and Outcomes of ACPE Accredited Programs " TextLabelID="lblACPE309_310" ImageControlID="img309_310"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img309_310"
                    CollapseControlID="img309_310"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>
            <%--  ********************************************    ACPE Standard 311_312 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel30" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE311_312" ForeColor="White" Text="Standards 311-312 Outcomes of CPE Level I/Level II Programs " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label58" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img311_312" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE311_312" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <%--  ********************************************    ACPE Standard 311 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel18" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE311" ForeColor="White" Text="Standard 311 Outcomes of CPE Level I" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label50" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img311" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE311" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE311Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3111" Text="311.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label51" runat="server" Text=" articulate the central themes and core values of one’s religious/spiritual heritage and the theological understanding that informs one’s ministry."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards69" Text="311.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label126" runat="server" Text=" identify and discuss major life events, relationships, social location, cultural contexts, and social realities that impact personal identity as expressed in pastoral functioning."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards70" Text="311.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label127" runat="server" Text=" initiate peer group and supervisory consultation and receive critique about one’s ministry practice."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards71" Text="311.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label128" runat="server" Text="risk offering appropriate and timely critique with peers and supervisors."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards72" Text="311.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label129" runat="server" Text="recognize relational dynamics within group contexts."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards73" Text="311.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label130" runat="server" Text="demonstrate the integration of conceptual understandings presented in the curriculum into pastoral practice."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards74" Text="311.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label131" runat="server" Text=" initiate helping relationships within and across diverse populations."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards75" Text="311.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label132" runat="server" Text="use the clinical methods of learning to achieve one’s educational goals."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards65" Text="311.9" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label122" runat="server" Text="formulate clear and specific goals for continuing pastoral formation with reference to one’s strengths and weaknesses as identified through self-reflection, supervision, and feedback."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender18" runat="server" TargetControlID="pnlACPE311"
                            CollapsedSize="0" ExpandedSize="250"
                            ExpandedText="Standard 311 Outcomes of CPE Level I"
                            CollapsedText="Standard 311 Outcomes of CPE Level I" TextLabelID="lblACPE311" ImageControlID="img311"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img311"
                            CollapseControlID="img311"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 312 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel19" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE312" ForeColor="White" Text="Standard 312 Outcomes of CPE Level II" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label60" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img312" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE312" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE312Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3121" Text="312.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label125" runat="server" Text="articulate an understanding of the pastoral role that is congruent with one’s personal and cultural values, basic assumptions and personhood."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards76" Text="312.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label133" runat="server" Text="provide pastoral ministry with diverse people, taking into consideration multiple elements of cultural and ethnic differences, social conditions, systems, justice issues, and applied clinical ethics without imposing one’s own perspectives."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards77" Text="312.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label134" runat="server" Text=" demonstrate a range of pastoral skills, including listening/attending, empathic reflection, conflict resolution/ transformation, confrontation, crisis management, and appropriate use of religious/spiritual resources."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards78" Text="312.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label135" runat="server" Text="assess the strengths and needs of those served, grounded in theology and using an understanding of the behavioral sciences."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards79" Text="312.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label136" runat="server" Text="manage ministry and administrative function in terms of accountability, productivity, self-direction, and clear, accurate professional communication."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards80" Text="312.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label137" runat="server" Text="demonstrate competent use of self in ministry and administrative function which includes: emotional availability, cultural humility, appropriate self- disclosure, positive use of power and authority, a non-anxious and non- judgmental presence, and clear and responsible boundaries."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards81" Text="312.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label138" runat="server" Text="establish collaboration and dialogue with peers, authorities and other professionals."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards82" Text="312.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label139" runat="server" Text="demonstrate awareness of the Common Qualifications and Competencies for Professional Chaplains. Note: The ACPE Standards and Code of Ethics supersede these standards."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards83" Text="312.9" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label140" runat="server" Text=" demonstrate self-supervision through realistic self-evaluation of pastoral functioning."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender19" runat="server" TargetControlID="pnlACPE312"
                            CollapsedSize="0" ExpandedSize="300"
                            ExpandedText="Standard 312 Outcomes of CPE Level II"
                            CollapsedText="Standard 312 Outcomes of CPE Level II" TextLabelID="lblACPE312" ImageControlID="img312"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img312"
                            CollapseControlID="img312"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender30" runat="server" TargetControlID="pnlACPE311_312"
                    CollapsedSize="0" ExpandedSize="600"
                    ExpandedText="Standards 311-312 Outcomes of CPE Level I/Level II Programs "
                    CollapsedText="Standards 311-312 Outcomes of CPE Level I/Level II Programs " TextLabelID="lblACPE311_312" ImageControlID="img311_312"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img311_312"
                    CollapseControlID="img311_312"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>

            <%--  ********************************************    ACPE Standard 313 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel20" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE313" ForeColor="White" Text="Standard 313 Objectives of Certified Educator CPE " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label141" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img313" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE313" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="tblACPE313Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3131" Text="313.1" runat="server" />
                            </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label142" runat="server" Text="to develop supervisory students’ knowledge in theories and methodologies related to CPE supervision drawn from theology; professional, applied clinical and organizational ethics; the behavioral sciences; and adult education."></asp:Label>
                            </asp:TableCell></asp:TableRow><asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true" ID="ckACPEStandards84" Text="313.2" runat="server" />
                            </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label143" runat="server" Text=" to provide students practice in the supervision of CPE under the supervision of an ACPE Certified Educator."></asp:Label>
                            </asp:TableCell></asp:TableRow><asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true" ID="ckACPEStandards85" Text="313.3" runat="server" />
                            </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label144" runat="server" Text="to facilitate students’ integration of the theory and practice of CPE supervision in their identity as a person, pastor, and educator."></asp:Label>
                            </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender20" runat="server" TargetControlID="pnlACPE313"
                    CollapsedSize="0" ExpandedSize="100"
                    ExpandedText="Standard 313 Objectives of Certified Educator CPE "
                    CollapsedText="Standard 313 Objectives of Certified Educator CPE " TextLabelID="lblACPE313" ImageControlID="img313"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img313"
                    CollapseControlID="img313"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>
            <%--  ********************************************    ACPE Standard 314_319 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel31" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE314_319" ForeColor="White" Text="Standards 314- 319 Outcomes of Certified Educator CPE" />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label145" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img314_319" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE314_319" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <%--  ********************************************    ACPE Standard 314 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel21" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE314" ForeColor="White" Text="Standard 314 Outcomes achieved by Certified Educator CPE students accrue in six areas of competency derived from the Certified Educator CPE objectives" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label146" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img314" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE314" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE314Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3141" Text="314" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label147" runat="server" Text="Standard 314 Outcomes achieved by Certified Educator CPE students accrue in six areas of competency derived from the Certified Educator CPE objectives"></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender21" runat="server" TargetControlID="pnlACPE314"
                            CollapsedSize="0" ExpandedSize="50"
                            ExpandedText="Standard 314 Outcomes achieved by Certified Educator CPE students accrue in six areas of competency derived from the Certified Educator CPE objectives"
                            CollapsedText="Standard 314 Outcomes achieved by Certified Educator CPE students accrue in six areas of competency derived from the Certified Educator CPE objectives" TextLabelID="lblACPE314" ImageControlID="img314"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img314"
                            CollapseControlID="img314"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 315 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel22" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE315" ForeColor="White" Text="Standard 315 Competence as a pastoral supervisor:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label148" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img315" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE315" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE315Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3151" Text="315.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label149" runat="server" Text="maintains personal integrity and a deepening pastoral identity."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards86" Text="315.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label150" runat="server" Text=" demonstrates emotional and spiritual maturity."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards87" Text="315.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label151" runat="server" Text=" forms meaningful pastoral relationships."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards88" Text="315.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label152" runat="server" Text=" self-supervises own on-going pastoral practice."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards89" Text="315.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label153" runat="server" Text=" refines one’s professional identity as a clinical pastoral educator."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards90" Text="315.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label154" runat="server" Text=" ability to explicate how one’s personal history and culture affect professional and personal identity, pastoral practice, the supervisory relationship, and student learning."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender22" runat="server" TargetControlID="pnlACPE315"
                            CollapsedSize="0" ExpandedSize="180"
                            ExpandedText="Standard 315 Competence as a pastoral supervisor:"
                            CollapsedText="Standard 315 Competence as a pastoral supervisor:" TextLabelID="lblACPE315" ImageControlID="img315"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img315"
                            CollapseControlID="img315"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 316 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel23" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE316" ForeColor="White" Text="Standard 316 Competence in the theories of supervision:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label155" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img316" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE316" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE316Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3161" Text="316.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label156" runat="server" Text="articulates understanding of and methodology for clinical pastoral supervision based on a critical grasp of the professional literature relating to the field of clinical supervision."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards91" Text="316.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label157" runat="server" Text=" articulates and implements a philosophy of CPE based on an educational model integrating the theory and practice of CPE, which is based on and congruent with one’s theology."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards92" Text="316.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label158" runat="server" Text=" articulates rationale for multicultural competence, integrating the theory and practice of CPE, which is based on and congruent with one’s theology."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender23" runat="server" TargetControlID="pnlACPE316"
                            CollapsedSize="0" ExpandedSize="100"
                            ExpandedText="Standard 316 Competence in the theories of supervision:"
                            CollapsedText="Standard 316 Competence in the theories of supervision:" TextLabelID="lblACPE316" ImageControlID="img316"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img316"
                            CollapseControlID="img316"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 317 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel24" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE317" ForeColor="White" Text="Standard 317 Competence in the practice of CPE supervision including:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label159" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img317" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE317" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE317Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3171" Text="317.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label160" runat="server" Text=" individual supervision"></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards93" Text="317.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label161" runat="server" Text="group CPE supervision"></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender24" runat="server" TargetControlID="pnlACPE317"
                            CollapsedSize="0" ExpandedSize="75"
                            ExpandedText="Standard 317 Competence in the practice of CPE supervision including:"
                            CollapsedText="Standard 317 Competence in the practice of CPE supervision including:" TextLabelID="lblACPE317" ImageControlID="img317"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img317"
                            CollapseControlID="img317"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 318 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel25" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE318" ForeColor="White" Text="Standard 318 Competence in CPE program design and implementation:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label162" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img318" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE318" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE318Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3181" Text="318.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label163" runat="server" Text=" develops and organizes programs of CPE based on program educational principles appropriate to experiential learning."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards94" Text="318.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label164" runat="server" Text="manages CPE programs effectively."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards95" Text="318.3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label165" runat="server" Text="develops a variety of CPE program resources."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards96" Text="318.4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label166" runat="server" Text="uses diverse clinical educational methods."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards97" Text="318.5" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label167" runat="server" Text="works with the theological implications of the ministry context."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards98" Text="318.6" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label168" runat="server" Text=" understands and uses applied clinical ethics as they relate to CPE and pastoral practice."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards99" Text="318.7" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label169" runat="server" Text="uses appropriate clinical skills and teaching methods that integrate the role of context and culture in pastoral practice and education."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards100" Text="318.8" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label170" runat="server" Text="advocates for students based on awareness of how persons’ social locations, systems, and structures affect one’s ministry, learning, and the educational context."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards101" Text="318.9" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label171" runat="server" Text=" considers cultural factors in the use of learning assessments, educational strategies, curriculum resources, and evaluation procedures."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender25" runat="server" TargetControlID="pnlACPE318"
                            CollapsedSize="0" ExpandedSize="300"
                            ExpandedText="Standard 318 Competence in CPE program design and implementation:"
                            CollapsedText="Standard 318 Competence in CPE program design and implementation:" TextLabelID="lblACPE318" ImageControlID="img318"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img318"
                            CollapseControlID="img318"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>

                    <%--  ********************************************    ACPE Standard 319 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel26" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE319" ForeColor="White" Text="Standard 319 Competence in pastoral education:" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label172" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img319" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE319" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE319Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3191" Text="319.1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label173" runat="server" Text="integrates educational theory; knowledge of behavioral science, applied clinical ethics, theology, and pastoral identity into supervisory function."></asp:Label>
                                    </asp:TableCell></asp:TableRow><asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards102" Text="319.2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label174" runat="server" Text="demonstrates awareness of the cultural contexts of diverse student groups and clinical populations that integrates and articulates ethnic identity development and its implications for pastoral practice and supervisory relationships."></asp:Label>
                                    </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender26" runat="server" TargetControlID="pnlACPE319"
                            CollapsedSize="0" ExpandedSize="100"
                            ExpandedText="Standard 319 Competence in pastoral education:"
                            CollapsedText="Standard 319 Competence in pastoral education:" TextLabelID="lblACPE319" ImageControlID="img319"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="img319"
                            CollapseControlID="img319"
                            Collapsed="true" SuppressPostBack="false" />
                        <hr />
                    </div>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender31" runat="server" TargetControlID="pnlACPE314_319"
                    CollapsedSize="0" ExpandedSize="550"
                    ExpandedText="Standards 314- 319 Outcomes of Certified Educator CPE"
                    CollapsedText="Standards 314- 319 Outcomes of Certified Educator CPE" TextLabelID="lblACPE314_319" ImageControlID="img314_319"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img314_319"
                    CollapseControlID="img314_319"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>

            <%--  ********************************************    ACPE Standard 320 ********************************************  --%>
            <div style="width: 1300px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel33" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblACPE320" ForeColor="White" Text="Standard 320 Appeal of Adverse Accreditation Decisions " />
                                </asp:TableCell><asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label175" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="img320" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell></asp:TableRow></asp:Table></div></asp:Panel><asp:Panel ID="pnlACPE320" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="tblACPE320Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3201" Text="320" runat="server" />
                            </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label176" runat="server" Text="Appeal of Adverse Accreditation Decisions "></asp:Label>
                            </asp:TableCell></asp:TableRow></asp:Table></asp:Panel><ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender33" runat="server" TargetControlID="pnlACPE320"
                    CollapsedSize="0" ExpandedSize="50"
                    ExpandedText="Standard 320 Appeal of Adverse Accreditation Decisions "
                    CollapsedText="Standard 320 Appeal of Adverse Accreditation Decisions " TextLabelID="lblACPE320" ImageControlID="img320"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="img320"
                    CollapseControlID="img320"
                    Collapsed="true" SuppressPostBack="false" />
                <hr />
            </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
                       
            <ajaxToolkit:TabPanel ID="tpCOCAAccreditationStandards" runat="server" HeaderText="Search COCA Accreditation Standards">
                <ContentTemplate>

            <%--  ********************************************    COCA Standards ********************************************  --%>
            <%--  ********************************************    Header ********************************************  --%>

            <asp:Table ID="Table3" runat="server" Width="1200px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Center" BackColor="Maroon" ForeColor="White">
                        <asp:Label ID="Label177" runat="server" Text="COCA Accreditation Standards" ForeColor="White" Font-Size="X-Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>


            <%--  ********************************************    COCA Standard 1 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel34" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA1_1" ForeColor="White" Text="Standard 1: Mission and Governance" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label178" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA1_1" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA1_1" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="tblCOCA1_1Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"   ID="ckCOCAAccreditation0" Text="1.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label179" runat="server" Text="Program Mission"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation1" Text="1.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label180" runat="server" Text="Strategic Plan"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation2" Text="1.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label181" runat="server" Text="Licensing and Regional/Institutional Accreditation"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation3" Text="1.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label182" runat="server" Text="Governance and Program Policies"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation4" Text="1.5" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label183" runat="server" Text="Non-Discrimination"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation5" Text="1.6" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label184" runat="server" Text="Degree-Granting Body"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation6" Text="1.7" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label185" runat="server" Text="Clinical Education Affiliation Agreements"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender34" runat="server" TargetControlID="pnlCOCA1_1"
                    CollapsedSize="0" ExpandedSize="200"
                    ExpandedText="Standard 1: Mission and Governance"
                    CollapsedText="Standard 1: Mission and Governance" TextLabelID="lblCOCA1_1" ImageControlID="imgCOCA1_1"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA1_1"
                    CollapseControlID="imgCOCA1_1"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


               <%--  ********************************************    COCA Standard 2 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel35" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA2" ForeColor="White" Text="Standard 2: Leadership and Administration" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label186" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA2" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA2" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table4" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation7" Text="2.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label187" runat="server" Text="Dean Qualifications"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation8" Text="2.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label188" runat="server" Text="Full-Time Dean"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation9" Text="2.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label189" runat="server" Text="Academic and Administrative Leadership"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation10" Text="2.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label190" runat="server" Text="Accreditation Standards Compliance and Procedures"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender35" runat="server" TargetControlID="pnlCOCA2"
                    CollapsedSize="0" ExpandedSize="125"
                    ExpandedText="Standard 2: Leadership and Administration"
                    CollapsedText="Standard 2: Leadership and Administration" TextLabelID="lblCOCA2" ImageControlID="imgCOCA2"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA2"
                    CollapseControlID="imgCOCA2"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                <%--  ********************************************    COCA Standard 3 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel36" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA3" ForeColor="White" Text="Standard 3: Finances" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label191" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA3" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA3" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table5" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation11" Text="3.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label192" runat="server" Text="Financial Resources"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation12" Text="3.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label193" runat="server" Text="Financial Planning and Budgeting"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation13" Text="3.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label194" runat="server" Text="Budgetary Authority"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation14" Text="3.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label195" runat="server" Text="Financial Audit"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender36" runat="server" TargetControlID="pnlCOCA3"
                    CollapsedSize="0" ExpandedSize="120"
                    ExpandedText="Standard 3: Finances"
                    CollapsedText="Standard 3: Finances" TextLabelID="lblCOCA3" ImageControlID="imgCOCA3"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA3"
                    CollapseControlID="imgCOCA3"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>

            
                <%--  ********************************************    COCA Standard 4 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel37" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA4" ForeColor="White" Text="Standard 4: Facilities" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label196" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA4" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA4" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table6" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation15" Text="4.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label197" runat="server" Text="Facilities"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation16" Text="4.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label198" runat="server" Text="Security and Public Safety"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation17" Text="4.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label199" runat="server" Text="Information Technology"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation18" Text="4.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label200" runat="server" Text="Learning Resources"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender37" runat="server" TargetControlID="pnlCOCA4"
                    CollapsedSize="0" ExpandedSize="120"
                    ExpandedText="Standard 4: Facilities"
                    CollapsedText="Standard 4: Facilities" TextLabelID="lblCOCA4" ImageControlID="imgCOCA4"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA4"
                    CollapseControlID="imgCOCA4"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


            
                <%--  ********************************************    COCA Standard 5 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel38" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA5" ForeColor="White" Text="Standard 5: Learning Environment" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label201" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA5" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA5" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table7" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation19" Text="5.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label202" runat="server" Text="Professionalism"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation20" Text="5.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label203" runat="server" Text="Diversity"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation21" Text="5.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label204" runat="server" Text="Safety, Health, and Wellness"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation22" Text="5.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label205" runat="server" Text="Patient Care Supervision"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender38" runat="server" TargetControlID="pnlCOCA5"
                    CollapsedSize="0" ExpandedSize="120"
                    ExpandedText="Standard 5: Learning Environment"
                    CollapsedText="Standard 5: Learning Environment" TextLabelID="lblCOCA5" ImageControlID="imgCOCA5"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA5"
                    CollapseControlID="imgCOCA5"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>

                <%--  ********************************************    COCA Standard 6 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel39" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA6" ForeColor="White" Text="Standard 6: Curriculum" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label206" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA6" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA6" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table8" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation23" Text="6.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label207" runat="server" Text="Curriculum Design and Management"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation24" Text="6.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label208" runat="server" Text="Programmatic Level Educational Objectives"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation25" Text="6.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label209" runat="server" Text="Maximum Length of Completion"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation26" Text="6.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label210" runat="server" Text="Osteopathic Core Competencies"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation27" Text="6.5" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label211" runat="server" Text="Scientific Method"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation28" Text="6.6" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label212" runat="server" Text="Principles of Osteopathic Medicine"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation29" Text="6.7" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label213" runat="server" Text="Directed Learning"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation30" Text="6.8" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label214" runat="server" Text="Interprofessional Education for Collaborative Practice"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation31" Text="6.9" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label215" runat="server" Text="Clinical Education"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation32" Text="6.10" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label216" runat="server" Text="Clinical Experience"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation33" Text="6.11" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label217" runat="server" Text="Comparability across Clinical Education Sites"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation34" Text="6.12" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label218" runat="server" Text="COMLEX-USA"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender39" runat="server" TargetControlID="pnlCOCA6"
                    CollapsedSize="0" ExpandedSize="300"
                    ExpandedText="Standard 6: Curriculum"
                    CollapsedText="Standard 6: Curriculum" TextLabelID="lblCOCA6" ImageControlID="imgCOCA6"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA6"
                    CollapseControlID="imgCOCA6"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>

                       <%--  ********************************************    COCA Standard 7 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel40" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA7" ForeColor="White" Text="Standard 7: Faculty and Staff" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label219" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA7" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA7" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table9" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation35" Text="7.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label220" runat="server" Text="Faculty and Staff Resources and Qualifications"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation36" Text="7.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label221" runat="server" Text="Faculty Approvals at All Teaching Sites"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation37" Text="7.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label222" runat="server" Text="Department Chair Qualifications"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation38" Text="7.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label223" runat="server" Text="Primary Care Leadership"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation39" Text="7.5" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label224" runat="server" Text="OMM/OPP Leadership"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation40" Text="7.6" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label225" runat="server" Text="Faculty Development"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation41" Text="7.7" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label226" runat="server" Text="Faculty Association"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>

                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation42" Text="7.8" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label227" runat="server" Text="Faculty Appointment and Advancement"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender40" runat="server" TargetControlID="pnlCOCA7"
                    CollapsedSize="0" ExpandedSize="220"
                    ExpandedText="Standard 7: Faculty and Staff"
                    CollapsedText="Standard 7: Faculty and Staff" TextLabelID="lblCOCA7" ImageControlID="imgCOCA7"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA7"
                    CollapseControlID="imgCOCA7"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                        <%--  ********************************************    COCA Standard 8 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel41" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA8" ForeColor="White" Text="Standard 8: Scholarly Activity" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label228" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA8" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA8" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table10" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation43" Text="8.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label229" runat="server" Text="Research and Scholarly Activity Strategic Plan"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation44" Text="8.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label230" runat="server" Text="Research and Scholarly Activity Budget"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                   
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender41" runat="server" TargetControlID="pnlCOCA8"
                    CollapsedSize="0" ExpandedSize="60"
                    ExpandedText="Standard 8: Scholarly Activity"
                    CollapsedText="Standard 8: Scholarly Activity" TextLabelID="lblCOCA8" ImageControlID="imgCOCA8"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA8"
                    CollapseControlID="imgCOCA8"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>

                           <%--  ********************************************    COCA Standard 9 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel42" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA9" ForeColor="White" Text="Standard 9: Students" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label231" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA9" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA9" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table11" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation45" Text="9.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label232" runat="server" Text="Admissions Policy"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation46" Text="9.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label233" runat="server" Text="Academic Standards"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>

   <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation47" Text="9.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label234" runat="server" Text="Transfer Policies"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation48" Text="9.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label235" runat="server" Text="Secure Student Recordkeeping"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                           <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation49" Text="9.5" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label236" runat="server" Text="Academic Counseling"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation50" Text="9.6" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label237" runat="server" Text="Career Counseling"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                           <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation51" Text="9.7" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label238" runat="server" Text="Financial Aid and Debt Management Counseling"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation52" Text="9.8" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label239" runat="server" Text="Mental Health Services"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                           <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation53" Text="9.9" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label240" runat="server" Text="Physical Health Services"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation54" Text="9.10" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label241" runat="server" Text="Non-Academic Health Professionals"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                           <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation55" Text="9.11" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label242" runat="server" Text="Health Insurance"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender42" runat="server" TargetControlID="pnlCOCA9"
                    CollapsedSize="0" ExpandedSize="300"
                    ExpandedText="Standard 9: Students"
                    CollapsedText="Standard 9: Students" TextLabelID="lblCOCA9" ImageControlID="imgCOCA9"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA9"
                    CollapseControlID="imgCOCA9"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                       <%--  ********************************************    COCA Standard 10 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel43" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA10" ForeColor="White" Text="Standard 10: Graduate Medical Education (GME)" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label243" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA10" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA10" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table13" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation57" Text="10.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label244" runat="server" Text="Osteopathic Educational Continuum"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation58" Text="10.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label245" runat="server" Text="ACGME Accredited GME"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                       <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation59" Text="10.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label246" runat="server" Text="Osteopathic Recognition of GME"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                   
                                   
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender43" runat="server" TargetControlID="pnlCOCA10"
                    CollapsedSize="0" ExpandedSize="100"
                    ExpandedText="Standard 10: Graduate Medical Education (GME)"
                    CollapsedText="Standard 10: Graduate Medical Education (GME)" TextLabelID="lblCOCA10" ImageControlID="imgCOCA10"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA10"
                    CollapseControlID="imgCOCA10"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                <%--  ********************************************    COCA Standard 11 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel44" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA11" ForeColor="White" Text="Standard 11: Program and Student Assessment and Outcomes" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label247" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA11" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA11" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table14" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation60" Text="11.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label248" runat="server" Text="Program Assessment"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation61" Text="11.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label249" runat="server" Text="Student Evaluation of Instruction"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                       <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation62" Text="11.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label250" runat="server" Text="Student Debt Outcomes"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                                               <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation63" Text="11.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label251" runat="server" Text="Student Survey"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                                               <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation64" Text="11.5" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label252" runat="server" Text="Progam and Student Outcomes - Annual and Mid-Cycle Reports"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                   
                                   
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender44" runat="server" TargetControlID="pnlCOCA11"
                    CollapsedSize="0" ExpandedSize="150"
                    ExpandedText="Standard 11: Program and Student Assessment and Outcomes"
                    CollapsedText="Standard 11: Program and Student Assessment and Outcomes" TextLabelID="lblCOCA11" ImageControlID="imgCOCA11"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA11"
                    CollapseControlID="imgCOCA11"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                <%--  ********************************************    COCA Standard 12 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel45" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblCOCA12" ForeColor="White" Text="Standard 12: Institutional Accreditation" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label253" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgCOCA12" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlCOCA12" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table15" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation65" Text="12.1" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label254" runat="server" Text="Incorporation of the Institution"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation66" Text="12.2" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label255" runat="server" Text="Degree and Other Educational Offerings"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                       <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation67" Text="12.3" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label256" runat="server" Text="Chief Executive Officer"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation68" Text="12.4" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label257" runat="server" Text="Chief Financial Officer"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation69" Text="12.5" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label258" runat="server" Text="Course Credit Hours"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                                       <asp:TableRow>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:CheckBox Font-Bold="true"  ID="ckCOCAAccreditation70" Text="12.6" runat="server" />
                            </asp:TableCell>
                           <asp:TableCell HorizontalAlign="Left"  BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                <asp:Label ID="Label259" runat="server" Text="Public Information"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>                                   
                                   
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender45" runat="server" TargetControlID="pnlCOCA12"
                    CollapsedSize="0" ExpandedSize="170"
                    ExpandedText="Standard 12: Institutional Accreditation"
                    CollapsedText="Standard 12: Institutional Accreditation" TextLabelID="lblCOCA12" ImageControlID="imgCOCA12"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgCOCA12"
                    CollapseControlID="imgCOCA12"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
                                 
            <ajaxToolkit:TabPanel ID="tpWCUSCAccreditationStandards" runat="server" HeaderText="Search WCUSC Accreditation Standards">
                <ContentTemplate>
   <%--  ********************************************    WCUSC Standards ********************************************  --%>
            <%--  ********************************************    Header ********************************************  --%>

            <asp:Table ID="Table16" runat="server" Width="1200px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" HorizontalAlign="Center" BackColor="Maroon" ForeColor="White">
                        <asp:Label ID="Label260" runat="server" Text="WCUSC Accreditation Standards" ForeColor="White" Font-Size="X-Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            
               <%--  ********************************************    WCUSC Standard 1 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel46" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblWCUSC1" ForeColor="White" Text="Standard 1: Defining Institutional Purposes and Ensuring Educational Objectives" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label261" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgWCUSC1" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlWCUSC1" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table17" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                       <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                        <asp:CheckBox Font-Bold="true"  Text="1.1"  ID="ckWCUSCAccreditation1" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC1" runat="server" Text="1.1- The institution’s formally approved statements of purpose are appropriate for an institution of higher education and clearly define its essential values and character and ways in which it contributes to the public good. ">

                        </asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.2" ID="ckWCUSCAccreditation2" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC2" runat="server" Text="1.2 -Educational objectives are widely recognized throughout the institution, are consistent with stated purposes, and are demonstrably achieved. The institution regularly generates, evaluates, and makes public data about student achievement, including measures of retention and graduation, and evidence of student learning. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.3"  ID="ckWCUSCAccreditation3" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC3" runat="server" Text="1.3 -The institution publicly states its commitment to academic freedom for faculty, staff, and students, and acts accordingly. This commitment affirms that those in the academy are free to share their convictions and responsible conclusions with their colleagues and students in their teaching and writing. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.4"  ID="ckWCUSCAccreditation4" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC4" runat="server" Text="1.4 -Consistent with its purposes and character, the institution demonstrates an appropriate response to the increasing diversity in society through its policies, its educational and co-curricular programs, its hiring and admissions criteria, and its administrative and organizational practices. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.5"  ID="ckWCUSCAccreditation5" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC5" runat="server" Text="1.5 -Even when supported by or affiliated with governmental, corporate, or religious organizations, the institution has education as its primary purpose and operates as an academic institution with appropriate autonomy. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.6"  ID="ckWCUSCAccreditation6" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC6" runat="server" Text="1.6 -The institution truthfully represents its academic goals, programs, services, and costs to students and to the larger public. The institution demonstrates that its academic programs can be completed in a timely fashion. The institution treats students fairly and equitably through established policies and procedures addressing student conduct, grievances, human subjects in research, disability, and financial matters, including refunds and financial aid "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.7"  ID="ckWCUSCAccreditation7" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC7" runat="server" Text="1.7 -The institution exhibits integrity and transparency in its operations, as demonstrated by the adoption and implementation of appropriate policies and procedures, sound business practices, timely and fair responses to complaints and grievances, and regular evaluation of its performance in these areas. The institution’s finances are regularly audited by qualified independent auditors. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="1.8"  ID="ckWCUSCAccreditation8" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC8" runat="server" Text="1.8 -The institution is committed to honest and open communication with the Accrediting Commission; to undertaking the accreditation review process with seriousness and candor; to informing the Commission promptly of any matter that could materially affect the accreditation status of the institution; and to abiding by Commission policies and procedures, including all substantive change policies. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>

             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender46" runat="server" TargetControlID="pnlWCUSC1"
                    CollapsedSize="0" ExpandedSize="450"
                    ExpandedText="Standard 1: Defining Institutional Purposes and Ensuring Educational Objectives"
                    CollapsedText="Standard 1: Defining Institutional Purposes and Ensuring Educational Objectives" TextLabelID="lblWCUSC1" ImageControlID="imgWCUSC1"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgWCUSC1"
                    CollapseControlID="imgWCUSC1"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                 <%--  ********************************************    WCUSC Standard 2 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel47" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblWCUSC2" ForeColor="White" Text="Standard 2: Achieving Educational Objectives through Core Functions" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label262" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgWCUSC2" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlWCUSC2" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table18" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
      <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                        <asp:CheckBox Font-Bold="true"  Text="2.1"  ID="ckWCUSCAccreditation9" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC9" runat="server" Text="2.1 -The institution’s educational programs are appropriate in content, standards of performance, rigor, and nomenclature for the degree level awarded, regardless of mode of delivery. They are staffed by sufficient numbers of faculty qualified for the type and level of curriculum offered. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.2"  ID="ckWCUSCAccreditation10" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC10" runat="server" Text="2.2 -All degrees awarded by the institution are clearly defined in terms of entry-level requirements and levels of student achievement necessary for graduation that represent more than simply an accumulation of courses or credits. The institution has both a coherent philosophy, expressive of its mission, which guides the meaning of its degrees and processes that ensure the quality and integrity of its degrees. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.3"  ID="ckWCUSCAccreditation11" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC11" runat="server" Text="2.3 -The institution’s student learning outcomes and standards of performance are clearly stated at the course, program, and, as appropriate, institutional level. These outcomes and standards are reflected in academic programs, policies, and curricula, and are aligned with advisement, library, and information and technology resources, and the wider learning environment. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.4"  ID="ckWCUSCAccreditation12" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC12" runat="server" Text="2.4 -The institution’s student learning outcomes and standards of performance are developed by faculty and widely shared among faculty, students, staff, and (where appropriate) external stakeholders. The institution’s faculty take collective responsibility for establishing appropriate standards of performance and demonstrating through assessment the achievement of these standards. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.5"  ID="ckWCUSCAccreditation13" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC13" runat="server" Text="2.5 -The institution’s academic programs actively involve students in learning, take into account students’ prior knowledge of the subject matter, challenge students to meet high standards of performance, offer opportunities for them to practice, generalize, and apply what they have learned, and provide them with appropriate and ongoing feedback about their performance and how it can be improved. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.6"  ID="ckWCUSCAccreditation14" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC14" runat="server" Text="2.6 -The institution demonstrates that its graduates consistently achieve its stated learning out- comes and established standards of performance. The institution ensures that its expectations for student learning are embedded in the standards that faculty use to evaluate student work. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.7"  ID="ckWCUSCAccreditation15" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC15" runat="server" Text="2.7 -All programs offered by the institution are subject to systematic program review. The program review process includes, but is not limited to, analyses of student achievement of the program’s learning outcomes; retention and graduation rates; and, where appropriate, results of licensing examination and placement, and evidence from external constituencies such as employers and professional organizations. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.8"  ID="ckWCUSCAccreditation16" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC16" runat="server" Text="2.8 -The institution clearly defines expectations for research, scholarship, and creative activity for its students and all categories of faculty. The institution actively values and promotes scholarship, creative activity, and curricular and instructional innovation, and their dissemination appropriate to the institution’s purposes and character. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.9"  ID="ckWCUSCAccreditation17" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC17" runat="server" Text="2.9 -The institution recognizes and promotes appropriate linkages among scholarship, teaching, assessment, student learning, and service. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.10"  ID="ckWCUSCAccreditation18" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC18" runat="server" Text="2.10 -The institution demonstrates that students make timely progress toward the completion of their degrees and that an acceptable proportion of students complete their degrees in a timely fashion, given the institution’s mission, the nature of the students it serves, and the kinds of programs it offers. The institution collects and analyzes student data, disaggregated by appropriate demographic categories and areas of study. It tracks achievement, satisfaction, and the extent to which the campus climate supports student success. The institution regularly identifies the characteristics of its students; assesses their preparation, needs, and experiences; and uses these data to improve student achievement. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.11"  ID="ckWCUSCAccreditation19" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC19" runat="server" Text="2.11 -Consistent with its purposes, the institution offers co-curricular programs that are aligned with its academic goals, integrated with academic programs, and designed to support all students’ personal and professional development. The institution assesses the effectiveness of its co-curricular programs and uses the results for improvement. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.12"  ID="ckWCUSCAccreditation20" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC20" runat="server" Text="2.12 -The institution ensures that all students understand the requirements of their academic programs and receive timely, useful, and complete information and advising about relevant academic requirements. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.13"  ID="ckWCUSCAccreditation21" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC21" runat="server" Text="2.13 -The institution provides academic and other student support services such as tutoring, services for students with disabilities, financial aid counseling, career counseling and placement, residential life, athletics, and other services and programs as appropriate, which meet the needs of the specific types of students that the institution serves and the programs it offers. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="2.14"  ID="ckWCUSCAccreditation22" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC22" runat="server" Text="2.14 -Institutions that serve transfer students provide clear, accurate, and timely information, ensure equitable treatment under academic policies, provide such students access to student services, and ensure that they are not unduly disadvantaged by the transfer process. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
          
             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender47" runat="server" TargetControlID="pnlWCUSC2"
                    CollapsedSize="0" ExpandedSize="800"
                    ExpandedText="Standard 2: Achieving Educational Objectives through Core Functions"
                    CollapsedText="Standard 2: Achieving Educational Objectives through Core Functions" TextLabelID="lblWCUSC2" ImageControlID="imgWCUSC2"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgWCUSC2"
                    CollapseControlID="imgWCUSC2"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


            
                 <%--  ********************************************    WCUSC Standard 3 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel48" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                    <asp:Label runat="server" ID="lblWCUSC3" ForeColor="White" Text="Standard 3: Developing and Applying Resources and Organizational Structures to Ensure Quality and Sustainability" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label263" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgWCUSC3" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlWCUSC3" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table19" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                        <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                        <asp:CheckBox Font-Bold="true"  Text="3.1 "  ID="ckWCUSCAccreditation23" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC23" runat="server" Text="3.1 -The institution employs faculty and staff with substantial and continuing commitment to the institution. The faculty and staff are sufficient in number, professional qualification, and diversity to achieve the institution’s educational objectives, establish and oversee academic policies, and ensure the integrity and continuity of its academic and co-curricular programs wherever and however delivered. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.2"  ID="ckWCUSCAccreditation24" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC24" runat="server" Text="3.2 -Faculty and staff recruitment, hiring, orientation, workload, incentives, and evaluation practices are aligned with institutional purposes and educational objectives. Evaluation is consistent with best practices in performance appraisal, including multisource feedback and appropriate peer review. Faculty evaluation processes are systematic and are used to improve teaching and learning. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.3"  ID="ckWCUSCAccreditation25" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC25" runat="server" Text="3.3 -The institution maintains appropriate and sufficiently supported faculty and staff development activities designed to improve teaching, learning, and assessment of learning outcomes. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.4"  ID="ckWCUSCAccreditation26" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC26" runat="server" Text="3.4 -The institution is financially stable and has unqualified independent financial audits and resources sufficient to ensure long-term viability. Resource planning and development include realistic budgeting, enrollment management, and diversification of revenue sources. Resource planning is integrated with all other institutional planning. Resources are aligned with educational purposes and objectives. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.5"  ID="ckWCUSCAccreditation27" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC27" runat="server" Text="3.5 -The institution provides access to information and technology resources sufficient in scope, quality, currency, and kind at physical sites and online, as appropriate, to support its academic offerings and the research and scholarship of its faculty, staff, and students. These information resources, services, and facilities are consistent with the institution’s educational objectives and are aligned with student learning outcomes. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.6"  ID="ckWCUSCAccreditation28" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC28" runat="server" Text="3.6 -The institution’s leadership, at all levels, is characterized by integrity, high performance, appropriate responsibility, and accountability. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.7"  ID="ckWCUSCAccreditation29" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC29" runat="server" Text="3.7 -The institution’s organizational structures and decision-making processes are clear and consistent with its purposes, support effective decision making, and place priority on sustaining institutional capacity and educational effectiveness. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.8 "  ID="ckWCUSCAccreditation30" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC30" runat="server" Text="3.8 -The institution has a full-time chief executive officer and a chief financial officer whose primary or full-time responsibilities are to the institution. In addition, the institution has a sufficient number of other qualified administrators to provide effective educational leadership and management. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.9"  ID="ckWCUSCAccreditation31" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC31" runat="server" Text="3.9 -The institution has an independent governing board or similar authority that, consistent with its legal and fiduciary authority, exercises appropriate oversight over institutional integrity, policies, and ongoing operations, including hiring and evaluating the chief executive officer. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="3.10 "  ID="ckWCUSCAccreditation32" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC32" runat="server" Text="3.10 -The institution’s faculty exercises effective academic leadership and acts consistently to ensure that both academic quality and the institution’s educational purposes and character are sustained. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>


                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender48" runat="server" TargetControlID="pnlWCUSC3"
                    CollapsedSize="0" ExpandedSize="550"
                    ExpandedText="Standard 3: Developing and Applying Resources and Organizational Structures to Ensure Quality and Sustainability"
                    CollapsedText="Standard 3: Developing and Applying Resources and Organizational Structures to Ensure Quality and Sustainability" TextLabelID="lblWCUSC3" ImageControlID="imgWCUSC3"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgWCUSC3"
                    CollapseControlID="imgWCUSC3"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>

                 
                 <%--  ********************************************    WCUSC Standard 4 ********************************************  --%>
            <div style="width: 1200px; background-color: lightgrey;">
                <asp:Panel runat="server" ID="panel49" HorizontalAlign="Center">
                    <div style="font-weight: bold; background-color: maroon;">
                        <asp:Table runat="server"
                            Width="100%">
                            <asp:TableRow>
                                <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                    
                                    <asp:Label runat="server" ID="lblWCUSC4" ForeColor="White" Text="Standard 4: Creating an Organization Committed to Quality Assurance, Institutional Learning, and Improvement" />
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center">
                                    <asp:Label runat="server" ID="Label264" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>

                                <asp:TableCell align="right" Width="10px" runat="server">
                                    <asp:Image ID="imgWCUSC4" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlWCUSC4" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                    <asp:Table ID="Table20" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                        <asp:CheckBox Font-Bold="true"  Text="4.1"  ID="ckWCUSCAccreditation33" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC33" runat="server" Text="4.1 -The institution employs a deliberate set of quality-assurance processes in both academic and non-academic areas, including new curriculum and program approval processes, periodic program review, assessment of student learning, and other forms of ongoing evaluation. These processes include: collecting, analyzing, and interpreting data; tracking learning results over time; using comparative data from external sources; and improving structures, services, processes, curricula, pedagogy, and learning results. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="4.2"  ID="ckWCUSCAccreditation34" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC34" runat="server" Text="Replace4.2 -The institution has institutional research capacity consistent with its purposes and characteristics. Data are disseminated internally and externally in a timely manner, and analyzed, interpreted, and incorporated in institutional review, planning, and decision-making. Periodic reviews are conducted to ensure the effectiveness of the institutional research function and the suitability and usefulness of the data generated. Text"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="4.3"  ID="ckWCUSCAccreditation35" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC35" runat="server" Text="4.3 -Leadership at all levels, including faculty, staff, and administration, is committed to improvement based on the results of inquiry, evidence, and evaluation. Assessment of teaching, learning, and the campus environment – in support of academic and co-curricular objectives – is undertaken, used for improvement, and incorporated into institutional planning processes. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="4.4"  ID="ckWCUSCAccreditation36" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC36" runat="server" Text="4.4 -The institution, with significant faculty involvement, engages in ongoing inquiry into the processes of teaching and learning, and the conditions and practices that ensure that the standards of performance established by the institution are being achieved. The faculty and other educators take responsibility for evaluating the effectiveness of teaching and learning processes and uses the results for improvement of student learning and success. The findings from such inquiries are applied to the design and improvement of curricula, pedagogy, and assessment methodology. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="4.5"  ID="ckWCUSCAccreditation37" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC37" runat="server" Text="4.5 -Appropriate stakeholders, including alumni, employers, practitioners, students, and others designated by the institution, are regularly involved in the assessment and alignment of educational programs. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="4.6"  ID="ckWCUSCAccreditation38" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC38" runat="server" Text="4.6 -The institution periodically engages its multiple constituencies, including the governing board, faculty, staff, and others, in institutional reflection and planning processes that are based on the examination of data and evidence. These processes assess the institution’s strategic position, articulate priorities, examine the alignment of its purposes, core functions, and resources, and define the future direction of the institution. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:CheckBox Font-Bold="true"  Text="4.7"  ID="ckWCUSCAccreditation39" runat="server" />
                    </asp:TableCell>
                   <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                        <asp:Literal ID="litWCUSC39" runat="server" Text="4.7 -Within the context of its mission and structural and financial realities, the institution considers changes that are currently taking place and are anticipated to take place within the institution and higher education environment as part of its planning, new program development, and resource allocation. "></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>

             

                         
                    </asp:Table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender49" runat="server" TargetControlID="pnlWCUSC4"
                    CollapsedSize="0" ExpandedSize="450"
                    ExpandedText="Standard 4: Creating an Organization Committed to Quality Assurance, Institutional Learning, and Improvement"
                    CollapsedText="Standard 4: Creating an Organization Committed to Quality Assurance, Institutional Learning, and Improvement" TextLabelID="lblWCUSC4" ImageControlID="imgWCUSC4"
                    ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                    ExpandControlID="imgWCUSC4"
                    CollapseControlID="imgWCUSC4"
                    Collapsed="true" SuppressPostBack="false" />

                <hr />
            </div>


                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
        <br />


       






</asp:Content>
