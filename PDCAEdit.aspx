<%@ Page Title="" Language="C#" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="PDCAEdit.aspx.cs" Inherits="PDCA_ASPX.PDCAEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register Src="~/AttachedDocumentWidget.ascx" TagPrefix="uc1" TagName="AttachedDocumentWidget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="txtPDCAID" runat="server" Text="0" Visible="false"></asp:TextBox>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel11" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                            <asp:Label runat="server" ID="lblHeader" ForeColor="White" Text="Assessment and Continuous Quality Improvement Form" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorHeader" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell runat="server">
                            <asp:Button ID="btnSaveContinue" runat="server" Text="Save and Continue" OnClick="btnSave_Click" />
                        </asp:TableCell><asp:TableCell runat="server">
                            <asp:Button ID="btnSaveSubmit" runat="server" Text="Save and Submit" OnClick="btnSaveSubmit_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlHeader" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table11" runat="server" CellPadding="20" Width="100%">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label28" runat="server" Font-Bold="true" Text="PDCAID:  "></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="lblPCDAID" runat="server" Text="0"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label17" runat="server" Font-Bold="true" Text="School Year: "></asp:Label>
                        <asp:DropDownList ID="ddSchoolYear" runat="server">
                            <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                            <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                            <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                            <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                            <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                            <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                            <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label20" runat="server" Font-Bold="true" Text="ID: "></asp:Label>
                        <asp:Label ID="lblSchoolYearID" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Date: "></asp:Label>
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label14" runat="server" Font-Bold="true" Text="Status: "></asp:Label>
                        <asp:Label ID="lblStatus" runat="server" Text="New"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table11a" runat="server" Width="100%">
                <asp:TableRow>
                    <asp:TableCell Width="15%">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Name:  "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" Text="" ID="txtOriginatorName" Width="99%"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="15%">
                        <asp:Label ID="Label25" runat="server" Font-Bold="true" Text="Title"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:TextBox ID="txtTitle" runat="server" Height="20px" Width="99%"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="15%">
                        <asp:Label ID="Label27" runat="server" Font-Bold="true" Text="Description"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:TextBox ID="txtDescription" runat="server" Height="50px" Width="99%" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="15%">
                        <asp:Label ID="Label19" runat="server" Font-Bold="true" Text="Department"></asp:Label>
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:TextBox ID="txtDepartment" runat="server" Height="20px" Width="99%"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table13" runat="server" Width="60%">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:Label ID="Label7" runat="server" Text="Entity" Font-Bold="true"></asp:Label>
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:CheckBox ID="ckCHSU" runat="server" Text="CHSU" />
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:CheckBox ID="ckCOP" runat="server" Text="COP" />
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:CheckBox ID="ckCOM" runat="server" Text="COM" />
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:CheckBox ID="ckUnsure" runat="server" Text="Unsure" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>

        <hr />
    </div>

    <%-- **********************************************   Documents List PANE ***********************************************************--%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel7" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                            <asp:Label runat="server" ID="lblDocumentsTitle" ForeColor="White" Text="Documents" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblDocumentsError" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" BackColor="Maroon" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="imgDocumentsExpand" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlDocuments" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

            <asp:Table ID="Table26" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell BorderWidth="2" BorderStyle="Solid" BorderColor="Black" HorizontalAlign="Center">

                        <asp:FileUpload ID="fuPDCADocument" runat="server" Width="550px" />
                        <asp:Button runat="server" ID="btnUploadDocument" Text="Upload" OnClick="btnUploadFile_Click" />
                        <asp:Label ID="lblFileName" runat="server" Text=" "></asp:Label>
                    </asp:TableCell>
                
                </asp:TableRow>
                </asp:Table>
                         <asp:Table ID="Table27" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="left" BorderWidth="2" BorderStyle="Solid" BorderColor="Black">
                        <asp:Label ID="Label8" runat="server" Text="Title " Font-Bold="true"></asp:Label>
                        <asp:TextBox ID="txtDocumentTitle" runat="server" Width="500px"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderWidth="2" BorderStyle="Solid" BorderColor="Black">
                        <asp:Label ID="Label37" runat="server" Text="Description " Font-Bold="true"></asp:Label>
                        <asp:TextBox ID="txtDocumentDescription" runat="server" Width="500px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="Table25" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="100%" BackColor="White">
                        <asp:GridView AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderWidth="2px"
                            BorderStyle="Solid" BorderColor="Black" CellPadding="3" runat="server"
                            ID="gvDocuments" DataKeyNames="PDCADocumentID"
                            ShowHeaderWhenEmpty="true"
                            Width="100%"
                            OnRowDataBound="gvDocuments_RowDataBound"
                            OnRowDeleting="gvDocuments_RowDeleting"
                            OnPageIndexChanging="gvDocuments_PageIndexChanging"
                            OnSelectedIndexChanged="gvDocuments_SelectedIndexChanged"
                            OnDataBound="gvDocuments_DataBound"
                            OnSorting="gvDocuments_Sorting">
                            <HeaderStyle BackColor="Maroon" ForeColor="White" BorderColor="Black" Font-Bold="true" Font-Size="Larger" BorderWidth="2" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="Black" BorderColor="Black" BorderWidth="1" HorizontalAlign="Left" Font-Size="Medium" />
                            <AlternatingRowStyle BackColor="lightgrey" ForeColor="Black" BorderColor="Black" BorderWidth="1" HorizontalAlign="Left" Font-Size="Medium"></AlternatingRowStyle>
                            <Columns>

                                <asp:BoundField DataField="FileName" HeaderText="File Name" SortExpression="FileName" HeaderStyle-Width="20%">
                                    <ItemStyle Width="350px"></ItemStyle>
                                </asp:BoundField>

                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-Width="30%">
                                    <ItemStyle Width="350px"></ItemStyle>
                                </asp:BoundField>

                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-Width="30%">
                                    <ItemStyle Width="350px"></ItemStyle>
                                </asp:BoundField>

                                <asp:BoundField DataField="LastUpdate" HeaderText="Last Update" SortExpression="LastUpdate" HeaderStyle-Width="20%">
                                    <ItemStyle Width="50px"></ItemStyle>
                                </asp:BoundField>
                                <asp:CommandField ShowDeleteButton="true" ItemStyle-HorizontalAlign="Center" ButtonType="Image" DeleteImageUrl="~/images/deletex210by10x.png" HeaderText="Delete" />
                            </Columns>
                        </asp:GridView>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender6" runat="server" TargetControlID="pnlDocuments"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Documents"
            CollapsedText="Documents" TextLabelID="lblDocumentsTitle" ImageControlID="imgDocumentsExpand"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="imgDocumentsExpand"
            CollapseControlID="imgDocumentsExpand" Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%-- **********************************************   SUBJECT OF ASSESSMENT PANE ***********************************************************--%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel1" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                            <asp:Label runat="server" ID="textLabel1" ForeColor="White" Text="Subject of Assessment" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorSubjectofAssessment" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckSubjectNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image13" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" BackColor="Maroon" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlSubjectofAssessment" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table1" runat="server" Width="100%" CellPadding="10" CellSpacing="5">

                <asp:TableRow>
                    <asp:TableCell>

                        <asp:Literal ID="litSubjectofAssessmentDescription" runat="server" Text="litSubject"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table5" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="100%" BackColor="White" Height="190PX">
                        <asp:TextBox ID="txtSubjectOfAssessmentExamples" runat="server" Height="182px" Width="100%" BackColor="White"></asp:TextBox>
                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="txtSubjectOfAssessmentExamples" EnableSanitization="false">
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
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender11" runat="server" TargetControlID="pnlSubjectofAssessment"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Subject of Assessment"
            CollapsedText="Subject of Assessment" TextLabelID="textLabel1" ImageControlID="Image1"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image1"
            CollapseControlID="Image1" Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--************************************************************    RESULTS PANE***************************************************************--%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel12" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                            <asp:Label runat="server" ID="Label10" ForeColor="White" Text="Assessment Tools" />
                        </asp:TableCell><asp:TableCell runat="server" HorizontalAlign="center">
                            <asp:Label runat="server" ID="lblErrorSurveyResults" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckSurveyResultsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image14" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image12" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlSurveyResults" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table12" runat="server" BorderWidth="1" BorderColor="Black" BorderStyle="Solid">

                <asp:TableRow>

                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckSurveyResults" runat="server" Text="Survey Results  " /><asp:Label ID="Label13" Font-Bold="true" runat="server" Text=" (End of course student survey results required for courses)"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckFocusGroupResults" runat="server" Text="Focus Group Results" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckFormative" runat="server" Text="Formative student understanding within the course (e.g. Minute Paper, Muddiest Point, Student-Generated Test Questions, Classroom Opinion Polls)" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckProgramOutcome" runat="server" Text="Program outcome data (e.g., licensing examinations, PCOA, event attendance, scholarly productivity)" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckInputData" runat="server" Text="Input data (e.g., admission data, faculty/staff credentials on hire, student performance in prerequisite courses)" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckExternalReview" runat="server" Text="External review (e.g. accreditor visit)" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckTests" runat="server" Text="Tests/exam item analysis/student performance " /><asp:Label ID="Label16" Font-Bold="true" runat="server" Text="(required for courses)"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckReview" runat="server" Text="Review of minutes or other ongoing record or reflection, e.g., “red book” for courses (name)" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckCLO" runat="server" Text="CLO/PLO/GLO rubrics and learning outcome data" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckPlan" runat="server" Text="Plan (e.g. strategic plan, earlier SII-PDCA forms, budgets, faculty adequacy model)" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckPeerReview" runat="server" Text="Peer review" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top">
                        <asp:CheckBox ID="ckOther" runat="server" Text="Other" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender12" runat="server" TargetControlID="pnlSurveyResults"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Assessment Tools"
            CollapsedText="Assessment Tools" TextLabelID="Label10" ImageControlID="Image12"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image12"
            CollapseControlID="Image12" Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%-- **********************************************   ASSESSMENTS PANE            ****************************************************--%>
    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel2" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                            <asp:Label runat="server" ID="textLabel2" ForeColor="White" Text="Assessments" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorAssessments" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckAssessmentsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image15" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlAssessments" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table2" runat="server" CellPadding="10" CellSpacing="5" Width="100%">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Literal ID="litAssessmentNameDescription" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table6" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow HorizontalAlign="Left">
                    <asp:TableCell HorizontalAlign="Left">
                        <div style="background: white;">
                            <asp:TextBox ID="txtAssessmentName" runat="server" Height="182px" Width="99%"></asp:TextBox>
                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender2" runat="server" TargetControlID="txtAssessmentName" EnableSanitization="false">
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
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="pnlAssessments"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Assessments"
            CollapsedText="Assessments" TextLabelID="textLabel2" ImageControlID="Image2"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image2"
            CollapseControlID="Image2"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--***************************** STRENGTHS***********************************************--%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel3" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label3" ForeColor="White" Text="Strengths" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorStrengths" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckStrengthsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image16" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlStrengths" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table3" runat="server" CellPadding="10" CellSpacing="5" Width="100%">

                <asp:TableRow>
                    <asp:TableCell>

                        <asp:Literal ID="litStrengthsDescription" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table7" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <div style="background: white;">
                            <asp:TextBox ID="txtStrengths" runat="server" Height="182px" Width="99%"></asp:TextBox>
                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender3" runat="server" TargetControlID="txtStrengths" EnableSanitization="false">
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
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pnlStrengths"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Strengths"
            CollapsedText="Strengths" TextLabelID="Label3" ImageControlID="Image3"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image3"
            CollapseControlID="Image3"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--********************************************  INSIGHTS ****************************************--%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel4" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label6" ForeColor="White" Text="Insights" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorInsights" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckInsightsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image17" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlInsights" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table4" runat="server" CellPadding="10" CellSpacing="5" Width="100%">

                <asp:TableRow>
                    <asp:TableCell>

                        <asp:Literal ID="litInsightsDescription" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table8" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <div style="background: white;">
                            <asp:TextBox ID="txtInsights" runat="server" Height="182px" Width="99%"></asp:TextBox>
                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender4" runat="server" TargetControlID="txtInsights" EnableSanitization="false">
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
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" TargetControlID="pnlInsights"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Insights"
            CollapsedText="Insights" TextLabelID="Label6" ImageControlID="Image4"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image4"
            CollapseControlID="Image4"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--  ********************************************   AREAS FOR IMPROVEMENT  ********************************************  --%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel5" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label9" ForeColor="White" Text="Areas For Improvement" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorAreasForImprovement" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckAreasForImprovementNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image18" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlAreasForImprovement" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table9" runat="server" CellPadding="10" CellSpacing="5">

                <asp:TableRow>
                    <asp:TableCell>

                        <asp:Literal ID="litAreasForImprovementDescription" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table10" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <div style="background: white;">
                            <asp:TextBox ID="txtAreasForImprovement" runat="server" Height="182px" Width="100%"></asp:TextBox>
                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender5" runat="server" TargetControlID="txtAreasForImprovement" EnableSanitization="false">
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
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" TargetControlID="pnlAreasForImprovement"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Areas For Improvement"
            CollapsedText="Areas For Improvement" TextLabelID="Label9" ImageControlID="Image5"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image5"
            CollapseControlID="Image5"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>
    <%--   ********************************************  PLAN - DO  ********************************************  --%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel6" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label12" ForeColor="White" Text="Plan" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="_top">
                                <asp:Image ID="Image19" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlPlan" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table15" runat="server" Width="100%">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="50%" VerticalAlign="Top">

                        <asp:Table ID="Table14" runat="server" CellPadding="0" CellSpacing="0" Width="100%" BorderColor="Maroon">

                            <asp:TableRow>
                                <asp:TableCell BackColor="Maroon" runat="server">
                                    <asp:Label ID="Label34" runat="server" Text="Plan    " BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center" HorizontalAlign="Center" BackColor="Maroon">
                                    <asp:Label runat="server" ID="lblErrorPlan" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>
                                <asp:TableCell align="right" Width="100px" runat="server" BackColor="Maroon">
                                    <asp:CheckBox ID="ckPlanNotApplicable" runat="server" Text="N/A" ForeColor="White" BackColor="Maroon" Font-Bold="true" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="3">

                                    <asp:Literal runat="server" ID="litPlanDescription"></asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Table runat="server" Width="100%">

                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                                    <div style="background: white;">
                                        <asp:TextBox ID="txtPlan" runat="server" Height="182px" Width="100%"></asp:TextBox>
                                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender6" runat="server" TargetControlID="txtPlan" EnableSanitization="false">
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
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell><asp:TableCell runat="server" Width="50%" VerticalAlign="Top">

                        <asp:Table ID="Table16" runat="server" CellPadding="0" CellSpacing="0" Width="100%">
                            <asp:TableRow>
                                <asp:TableCell BackColor="Maroon" runat="server" BorderColor="Maroon">
                                    <asp:Label ID="Label35" runat="server" Text="Do" BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center" HorizontalAlign="Center" BackColor="Maroon">
                                    <asp:Label runat="server" ID="lblErrorDo" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>
                                <asp:TableCell align="right" Width="100px" runat="server" BackColor="Maroon">
                                    <asp:CheckBox ID="ckDoNotApplicable" runat="server" Text="N/A" ForeColor="White" BackColor="Maroon" Font-Bold="true" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="3">

                                    <asp:Literal ID="litDoDescription" runat="server"></asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Table runat="server" Width="100%">

                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                                    <div style="background: white;">
                                        <asp:TextBox ID="txtDo" runat="server" Height="182px" Width="100%"></asp:TextBox>
                                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender7" runat="server" TargetControlID="txtDo" EnableSanitization="false">
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
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" TargetControlID="pnlPlan"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Plan and Do"
            CollapsedText="Plan and Do" TextLabelID="Label12" ImageControlID="Image6"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image6"
            CollapseControlID="Image6"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--  ********************************************    CHECK-ADDITIONAL COMMENTS  ********************************************  --%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel8" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label18" ForeColor="White" Text="Check" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image21" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlCheck" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table17" runat="server" Width="100%">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width="50%" VerticalAlign="Top">

                        <asp:Table ID="Table18" runat="server" CellPadding="0" CellSpacing="0" Width="100%" BorderColor="Maroon">
                            <asp:TableRow>
                                <asp:TableCell BackColor="Maroon" runat="server">
                                    <asp:Label ID="Label15" runat="server" Text="Check" BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center" HorizontalAlign="Center" BackColor="Maroon">
                                    <asp:Label runat="server" ID="lblErrorCheck" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>
                                <asp:TableCell align="right" Width="100px" runat="server" BackColor="Maroon">
                                    <asp:CheckBox ID="ckCheckNotApplicable" runat="server" Text="N/A" ForeColor="White" Font-Bold="true" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>

                                <asp:TableCell ColumnSpan="3">

                                    <asp:Literal ID="litCheckDescription" runat="server"></asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Table runat="server" Width="100%">

                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                                    <div style="background: white;">
                                        <asp:TextBox ID="txtCheck" runat="server" Height="182px" Width="100%"></asp:TextBox>
                                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender8" runat="server" TargetControlID="txtCheck" EnableSanitization="false">
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
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell><asp:TableCell runat="server" Width="50%" VerticalAlign="Top">
                        <asp:Table ID="Table19" runat="server" CellPadding="0" CellSpacing="0" Width="100%" BorderColor="Maroon">
                            <asp:TableRow>
                                <asp:TableCell BackColor="Maroon" runat="server">
                                    <asp:Label ID="Label21" runat="server" Text="Additional Comments" BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server" align="center" HorizontalAlign="Center" BackColor="Maroon">
                                    <asp:Label runat="server" ID="lblErrorAdditionalComments" BackColor="White" ForeColor="Red" Text="" />
                                </asp:TableCell>
                                <asp:TableCell align="right" Width="100px" runat="server" BackColor="Maroon">
                                    <asp:CheckBox ID="ckAdditionalCommentsNotApplicable" runat="server" Text="N/A" ForeColor="White" Font-Bold="true" BackColor="Maroon" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>

                                    <asp:Literal ID="litAdditionalCommentsDescription" runat="server"></asp:Literal>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Table runat="server" Width="100%">

                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                                    <div style="background: white;">
                                        <asp:TextBox ID="txtAdditionalComments" runat="server" Height="182px" Width="100%" TextMode="MultiLine"></asp:TextBox>
                                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender9" runat="server" TargetControlID="txtAdditionalComments" EnableSanitization="false">
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
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender7" runat="server" TargetControlID="pnlCheck"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Check and Additional Comments"
            CollapsedText="Check and Additional Comments" TextLabelID="Label18" ImageControlID="Image8"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image8"
            CollapseControlID="Image8"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--  ********************************************    REPORT MUST BE CONVEYED  ********************************************  --%>
    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel10" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label24" ForeColor="White" Text="Report Must Be Submitted" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorReport" BackColor="White" ForeColor="Red" Text="" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckReportNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image23" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlReport" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table20" runat="server" CellPadding="10" CellSpacing="5">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Literal ID="litReportDescription" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table21" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <div style="background: white;">
                            <asp:TextBox ID="txtReport" runat="server" Height="182px" Width="100%"></asp:TextBox>
                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender10" runat="server" TargetControlID="txtReport" EnableSanitization="false">
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
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender9" runat="server" TargetControlID="pnlReport"
            CollapsedSize="0" ExpandedSize="350"
            ExpandedText="Report Must Be Conveyed"
            CollapsedText="Report Must Be Conveyed" TextLabelID="Label24" ImageControlID="Image10"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image10"
            CollapseControlID="Image10"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

    <%--  ********************************************      ACCREDITATION STANDARDS   ********************************************  --%>

    <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel13" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label2" ForeColor="White" Text="Accreditation Standards" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                <asp:Image ID="Image24" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image25" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlAccreditationStandards" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table22" runat="server" CellPadding="0" CellSpacing="10" BorderStyle="Solid">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="WCUSC"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBoxList ID="ckblWCUSC1" runat="server" RepeatDirection="Horizontal" CellPadding="5">
                            <asp:ListItem Text="1.1" Value="1.1"></asp:ListItem>
                            <asp:ListItem Text="1.2" Value="1.2"></asp:ListItem>
                            <asp:ListItem Text="1.3" Value="1.3"></asp:ListItem>
                            <asp:ListItem Text="1.4" Value="1.4"></asp:ListItem>
                            <asp:ListItem Text="1.5" Value="1.5"></asp:ListItem>

                            <asp:ListItem Text="1.6" Value="1.6"></asp:ListItem>
                            <asp:ListItem Text="1.7" Value="1.7"></asp:ListItem>
                            <asp:ListItem Text="1.8" Value="1.8"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblWCUSC2" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="2.1" Value="2.1"></asp:ListItem>
                            <asp:ListItem Text="2.2" Value="2.2"></asp:ListItem>

                            <asp:ListItem Text="2.3" Value="2.3"></asp:ListItem>
                            <asp:ListItem Text="2.4" Value="2.4"></asp:ListItem>
                            <asp:ListItem Text="2.5" Value="2.5"></asp:ListItem>
                            <asp:ListItem Text="2.6" Value="2.6"></asp:ListItem>

                            <asp:ListItem Text="2.7" Value="2.7"></asp:ListItem>
                            <asp:ListItem Text="2.8" Value="2.8"></asp:ListItem>
                            <asp:ListItem Text="2.9" Value="2.9"></asp:ListItem>
                            <asp:ListItem Text="2.10" Value="2.10"></asp:ListItem>
                            <asp:ListItem Text="2.11" Value="2.11"></asp:ListItem>

                            <asp:ListItem Text="2.12" Value="2.12"></asp:ListItem>
                            <asp:ListItem Text="2.13" Value="2.13"></asp:ListItem>
                            <asp:ListItem Text="2.14" Value="2.14"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblWCUSC3" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="3.1" Value="3.1"></asp:ListItem>
                            <asp:ListItem Text="3.2" Value="3.2"></asp:ListItem>

                            <asp:ListItem Text="3.3" Value="3.3"></asp:ListItem>
                            <asp:ListItem Text="3.4" Value="3.4"></asp:ListItem>
                            <asp:ListItem Text="3.5" Value="3.5"></asp:ListItem>
                            <asp:ListItem Text="3.6" Value="3.6"></asp:ListItem>
                            <asp:ListItem Text="3.7" Value="3.7"></asp:ListItem>

                            <asp:ListItem Text="3.8" Value="3.8"></asp:ListItem>
                            <asp:ListItem Text="3.9" Value="3.9"></asp:ListItem>
                            <asp:ListItem Text="3.10" Value="3.10"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblWCUSC4" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="4.1" Value="4.1"></asp:ListItem>
                            <asp:ListItem Text="4.2" Value="4.2"></asp:ListItem>
                            <asp:ListItem Text="4.3" Value="4.3"></asp:ListItem>
                            <asp:ListItem Text="4.4" Value="4.4"></asp:ListItem>
                            <asp:ListItem Text="4.5" Value="4.5"></asp:ListItem>
                            <asp:ListItem Text="4.6" Value="4.6"></asp:ListItem>
                            <asp:ListItem Text="4.7" Value="4.7"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table23" runat="server" CellPadding="0" CellSpacing="10" BorderStyle="Solid">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label29" runat="server" Text="COCA"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblCOCA1" runat="server" RepeatDirection="Horizontal" CellPadding="5">
                            <asp:ListItem Text="1.1" Value="1.1"></asp:ListItem>
                            <asp:ListItem Text="1.2" Value="1.2"></asp:ListItem>
                            <asp:ListItem Text="1.3" Value="1.3"></asp:ListItem>
                            <asp:ListItem Text="1.4" Value="1.4"></asp:ListItem>
                            <asp:ListItem Text="1.5" Value="1.5"></asp:ListItem>
                            <asp:ListItem Text="1.6" Value="1.6"></asp:ListItem>
                            <asp:ListItem Text="1.7" Value="1.7"></asp:ListItem>
                            <asp:ListItem Text="2.1" Value="2.1"></asp:ListItem>
                            <asp:ListItem Text="2.2" Value="2.2"></asp:ListItem>
                            <asp:ListItem Text="2.3" Value="2.3"></asp:ListItem>
                            <asp:ListItem Text="2.4" Value="2.4"></asp:ListItem>
                            <asp:ListItem Text="3.1" Value="3.1"></asp:ListItem>
                            <asp:ListItem Text="3.2" Value="3.2"></asp:ListItem>
                            <asp:ListItem Text="3.3" Value="3.3"></asp:ListItem>
                            <asp:ListItem Text="3.4" Value="3.4"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblCOCA2" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="4.1" Value="4.1"></asp:ListItem>
                            <asp:ListItem Text="4.2" Value="4.2"></asp:ListItem>
                            <asp:ListItem Text="4.3" Value="4.3"></asp:ListItem>
                            <asp:ListItem Text="4.4" Value="4.4"></asp:ListItem>
                            <asp:ListItem Text="5.1" Value="5.1"></asp:ListItem>
                            <asp:ListItem Text="5.2" Value="5.2"></asp:ListItem>
                            <asp:ListItem Text="5.3" Value="5.3"></asp:ListItem>
                            <asp:ListItem Text="5.4" Value="5.4"></asp:ListItem>
                            <asp:ListItem Text="6.1" Value="6.1"></asp:ListItem>
                            <asp:ListItem Text="6.2" Value="6.2"></asp:ListItem>
                            <asp:ListItem Text="6.3" Value="6.3"></asp:ListItem>
                            <asp:ListItem Text="6.4" Value="6.4"></asp:ListItem>
                            <asp:ListItem Text="6.5" Value="6.5"></asp:ListItem>
                            <asp:ListItem Text="6.6" Value="6.6"></asp:ListItem>
                            <asp:ListItem Text="6.7" Value="6.7"></asp:ListItem>
                            <asp:ListItem Text="6.8" Value="6.8"></asp:ListItem>
                            <asp:ListItem Text="6.9" Value="6.9"></asp:ListItem>
                            <asp:ListItem Text="6.10" Value="6.10"></asp:ListItem>
                            <asp:ListItem Text="6.11" Value="6.11"></asp:ListItem>
                            <asp:ListItem Text="6.12" Value="6.12"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblCOCA3" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="7.1" Value="7.1"></asp:ListItem>
                            <asp:ListItem Text="7.2" Value="7.2"></asp:ListItem>
                            <asp:ListItem Text="7.3" Value="7.3"></asp:ListItem>
                            <asp:ListItem Text="7.4" Value="7.4"></asp:ListItem>
                            <asp:ListItem Text="7.5" Value="7.5"></asp:ListItem>
                            <asp:ListItem Text="7.6" Value="7.6"></asp:ListItem>
                            <asp:ListItem Text="7.7" Value="7.7"></asp:ListItem>
                            <asp:ListItem Text="7.8" Value="7.8"></asp:ListItem>
                            <asp:ListItem Text="8.1" Value="8.1"></asp:ListItem>
                            <asp:ListItem Text="8.2" Value="8.2"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblCOCA4" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="9.1" Value="9.1"></asp:ListItem>
                            <asp:ListItem Text="9.2" Value="9.2"></asp:ListItem>
                            <asp:ListItem Text="9.3" Value="9.3"></asp:ListItem>
                            <asp:ListItem Text="9.4" Value="9.4"></asp:ListItem>
                            <asp:ListItem Text="9.5" Value="9.5"></asp:ListItem>
                            <asp:ListItem Text="9.6" Value="9.6"></asp:ListItem>
                            <asp:ListItem Text="9.7" Value="9.7"></asp:ListItem>
                            <asp:ListItem Text="9.8" Value="9.8"></asp:ListItem>
                            <asp:ListItem Text="9.9" Value="9.9"></asp:ListItem>
                            <asp:ListItem Text="9.10" Value="9.10"></asp:ListItem>
                            <asp:ListItem Text="9.11" Value="9.11"></asp:ListItem>
                            <asp:ListItem Text="10.1" Value="10.1"></asp:ListItem>
                            <asp:ListItem Text="10.2" Value="10.2"></asp:ListItem>
                            <asp:ListItem Text="10.3" Value="10.3"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label33" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblCOCA5" runat="server" RepeatDirection="Horizontal" CellPadding="5">

                            <asp:ListItem Text="11.1" Value="11.1"></asp:ListItem>
                            <asp:ListItem Text="11.2" Value="11.2"></asp:ListItem>
                            <asp:ListItem Text="11.3" Value="11.3"></asp:ListItem>
                            <asp:ListItem Text="11.4" Value="11.4"></asp:ListItem>
                            <asp:ListItem Text="11.5" Value="11.5"></asp:ListItem>
                            <asp:ListItem Text="12.1" Value="12.1"></asp:ListItem>
                            <asp:ListItem Text="12.2" Value="12.2"></asp:ListItem>
                            <asp:ListItem Text="12.3" Value="12.3"></asp:ListItem>
                            <asp:ListItem Text="12.4" Value="12.4"></asp:ListItem>
                            <asp:ListItem Text="12.5" Value="12.5"></asp:ListItem>
                            <asp:ListItem Text="12.6" Value="12.6"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table24" runat="server" CellPadding="0" CellSpacing="10" BorderStyle="Solid">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="ACPE"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:CheckBoxList ID="ckblACPE" runat="server"></asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender13" runat="server" TargetControlID="pnlAccreditationStandards"
            CollapsedSize="0" ExpandedSize="550"
            ExpandedText="Accreditation Standards"
            CollapsedText="Accreditation Standards" TextLabelID="Label2" ImageControlID="Image25"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image25"
            CollapseControlID="Image25"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>
</asp:Content>