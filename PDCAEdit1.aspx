<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="PDCAEdit1.aspx.cs" Inherits="PDCA_ASPX.PDCAEdit1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtPDCAID" runat="server" Text="0" Visible="false"></asp:TextBox>
    <div style="width: 1320px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel59" HorizontalAlign="Center">
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
                        <asp:TableCell runat="server">
                            <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlHeader" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table41" runat="server" CellPadding="20" Width="100%">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label263" runat="server" Font-Bold="true" Text="PDCAID:  "></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="lblPCDAID" runat="server" Text="0"></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label264" runat="server" Font-Bold="true" Text="School Year: "></asp:Label>
                        <asp:DropDownList ID="ddSchoolYear" runat="server">
                            <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                            <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                            <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                            <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                            <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                            <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                            <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label265" runat="server" Font-Bold="true" Text="ID: "></asp:Label>
                        <asp:Label ID="lblSchoolYearID" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label266" runat="server" Font-Bold="true" Text="Date: "></asp:Label>
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:Label ID="Label267" runat="server" Font-Bold="true" Text="Status: "></asp:Label>
                        <asp:Label ID="lblStatus" runat="server" Text="New"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table11a" runat="server" Width="100%">
                <asp:TableRow>
                    <asp:TableCell Width="15%">
                        <asp:Label ID="Label268" runat="server" Font-Bold="true" Text="Name:  "></asp:Label>
                    </asp:TableCell><asp:TableCell>
                        <asp:TextBox runat="server" Text="" ID="txtOriginatorName" Width="99%"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="15%">
                        <asp:Label ID="Label269" runat="server" Font-Bold="true" Text="Title"></asp:Label>
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:TextBox ID="txtTitle" runat="server" Height="20px" Width="99%"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="15%">
                        <asp:Label ID="Label270" runat="server" Font-Bold="true" Text="Description"></asp:Label>
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:TextBox ID="txtDescription" runat="server" Height="50px" Width="99%" TextMode="MultiLine"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left" Width="15%">
                        <asp:Label ID="Label271" runat="server" Font-Bold="true" Text="Department"></asp:Label>
                    </asp:TableCell><asp:TableCell HorizontalAlign="Left">
                        <asp:TextBox ID="txtDepartment" runat="server" Height="20px" Width="99%"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table ID="Table42" runat="server" Width="60%">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <asp:Label ID="Label272" runat="server" Text="Entity" Font-Bold="true"></asp:Label>
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
    <div>

        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">

            <ajaxToolkit:TabPanel ID="tpPDCAContent" runat="server" HeaderText="SII-PDCA Content">

                <ContentTemplate>
                    <div style="width: 1300px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel50" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblSubjectofAssessmentTitle" ForeColor="White" Text="Subject of Assessment" />
                                        </asp:TableCell>
                                        <asp:TableCell align="center" runat="server">
                                            <asp:Label ID="lblErrorSubjectofAssessment" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="100px" runat="server">
                                            <asp:CheckBox ID="ckSubjectNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center" Width="100px">
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image13" runat="server" BackColor="Maroon" Height="25px" ImageUrl="~/images/arrowupred.jpg" Width="25px"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgSubjectofAssessment" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlSubjectofAssessment" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table19" runat="server" Width="100%" CellPadding="10" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Literal ID="litSubjectofAssessmentDescription" runat="server" Text="litSubject"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:Table ID="Table20" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" Width="100%" BackColor="White" Height="190px" runat="server">
                                        <asp:TextBox ID="txtSubjectOfAssessmentExamples" runat="server" Height="182px" Width="100%" BackColor="White"></asp:TextBox>
                                        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="txtSubjectOfAssessmentExamples" EnableSanitization="False" BehaviorID="_content_HtmlEditorExtender1">
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

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender50" runat="server"
                            TargetControlID="pnlSubjectofAssessment"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Subject of Assessment"
                            CollapsedText="Subject of Assessment" TextLabelID="lblSubjectofAssessmentTitle" ImageControlID="imgSubjectofAssessment"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgSubjectofAssessment"
                            CollapseControlID="imgSubjectofAssessment" Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender50" />

                        <hr />
                    </div>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel51" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell align="left" runat="server" Font-Size="Larger"></asp:TableCell>
                                        <asp:TableCell runat="server" HorizontalAlign="Center">
                                            <asp:Label runat="server" ID="lblAssessmentToolsTitle" ForeColor="White" Text="Assessment Tools" />
                                            <asp:Label ID="lblErrorAssessmentTools" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="right" Width="100px">
                                            <asp:CheckBox ID="ckAssessmentToolsNotApplicable" runat="server" ForeColor="White" Text="N/A"></asp:CheckBox>
                                        </asp:TableCell>
                                        <asp:TableCell align="center" Width="100px" runat="server">
                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image14" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgAssessmentTools" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlAssessmentTools" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table21" runat="server" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid">
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckSurveyResults" runat="server" Text="Survey Results  " />
                                        <asp:Label ID="Label250" Font-Bold="True" runat="server" Text=" (End of course student survey results required for courses)"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckFocusGroupResults" runat="server" Text="Focus Group Results" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckFormative" runat="server" Text="Formative student understanding within the course (e.g. Minute Paper, Muddiest Point, Student-Generated Test Questions, Classroom Opinion Polls)" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckProgramOutcome" runat="server" Text="Program outcome data (e.g., licensing examinations, PCOA, event attendance, scholarly productivity)" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckInputData" runat="server" Text="Input data (e.g., admission data, faculty/staff credentials on hire, student performance in prerequisite courses)" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckExternalReview" runat="server" Text="External review (e.g. accreditor visit)" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckTests" runat="server" Text="Tests/exam item analysis/student performance " />
                                        <asp:Label ID="Label251" Font-Bold="True" runat="server" Text="(required for courses)"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckReview" runat="server" Text="Review of minutes or other ongoing record or reflection, e.g., “red book” for courses (name)" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckCLO" runat="server" Text="CLO/PLO/GLO rubrics and learning outcome data" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckPlan" runat="server" Text="Plan (e.g. strategic plan, earlier SII-PDCA forms, budgets, faculty adequacy model)" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckPeerReview" runat="server" Text="Peer review" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" VerticalAlign="Top" runat="server">
                                        <asp:CheckBox ID="ckOther" runat="server" Text="Other" />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender51" runat="server" TargetControlID="pnlAssessmentTools"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Assessment Tools"
                            CollapsedText="Assessment Tools" TextLabelID="lblAssessmentToolsTitle" ImageControlID="imgAssessmentTools"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgAssessmentTools"
                            CollapseControlID="imgAssessmentTools" Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender51" />

                        <hr />
                    </div>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel52" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblAssessmentsTitle" ForeColor="White" Text="Assessments" />
                                        </asp:TableCell>
                                        <asp:TableCell align="center" runat="server">
                                            <asp:Label ID="lblErrorAssessments" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="100px" runat="server">
                                            <asp:CheckBox ID="ckAssessmentsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center" Width="100px">
                                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image15" runat="server" Height="25px" ImageUrl="~/images/arrowupred.jpg" Width="25px"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgAssessments" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlAssessments" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table22" runat="server" CellPadding="10" CellSpacing="5" Width="100%">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Literal ID="litAssessmentNameDescription" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:Table ID="Table23" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow HorizontalAlign="Left" runat="server">
                                    <asp:TableCell HorizontalAlign="Left" runat="server">
                                        <div style="background: white;">
                                            <asp:TextBox ID="txtAssessmentName" runat="server" Height="182px" Width="99%"></asp:TextBox>
                                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender2" runat="server" TargetControlID="txtAssessmentName" EnableSanitization="False" BehaviorID="_content_HtmlEditorExtender2">
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

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender52" runat="server" TargetControlID="pnlAssessments"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Assessments"
                            CollapsedText="Assessments" TextLabelID="lblAssessmentsTitle" ImageControlID="imgAssessments"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgAssessments"
                            CollapseControlID="imgAssessments"
                            Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender52" />

                        <hr />
                    </div>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel53" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblStrengthsTitle" ForeColor="White" Text="Strengths" />
                                        </asp:TableCell>
                                        <asp:TableCell align="center" runat="server">
                                            <asp:Label ID="lblErrorStrengths" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="100px" runat="server">
                                            <asp:CheckBox ID="ckStrengthsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center" Width="100px">
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image16" runat="server" Height="25px" ImageUrl="~/images/arrowupred.jpg" Width="25px"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgStrengths" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlStrengths" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table24" runat="server" CellPadding="10" CellSpacing="5" Width="100%">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Literal ID="litStrengthsDescription" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:Table ID="Table28" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" runat="server">
                                        <div style="background: white;">
                                            <asp:TextBox ID="txtStrengths" runat="server" Height="182px" Width="99%"></asp:TextBox>
                                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender3" runat="server" TargetControlID="txtStrengths" EnableSanitization="False" BehaviorID="_content_HtmlEditorExtender3">
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

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender53" runat="server" TargetControlID="pnlStrengths"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Strengths"
                            CollapsedText="Strengths" TextLabelID="lblStrengthsTitle" ImageControlID="imgStrengths"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgStrengths"
                            CollapseControlID="imgStrengths"
                            Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender53" />

                        <hr />
                    </div>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="pnlInsightsController" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblInsightsTitle" ForeColor="White" Text="Insights" />
                                        </asp:TableCell>
                                        <asp:TableCell align="center" runat="server">
                                            <asp:Label ID="lblErrorInsights" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="100px" runat="server">
                                            <asp:CheckBox ID="ckInsightsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center" Width="100px">
                                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="imageup" runat="server" Height="25px" ImageUrl="~/images/arrowupred.jpg" Width="25px"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgInsights" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlInsights" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table29" runat="server" CellPadding="10" CellSpacing="5" Width="100%">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Literal ID="litInsightsDescription" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:Table ID="Table30" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" runat="server">
                                        <div style="background: white;">
                                            <asp:TextBox ID="txtInsights" runat="server" Height="182px" Width="99%"></asp:TextBox>
                                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender4" runat="server" TargetControlID="txtInsights" EnableSanitization="False" BehaviorID="_content_HtmlEditorExtender3">
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

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender53a1" runat="server"
                            TargetControlID="pnlInsights"
                            ExpandedText="Insights"
                            CollapsedText="Insights"
                            TextLabelID="lblInsightsTitle"
                            ImageControlID="imgInsights"
                            ExpandControlID="imgInsights"
                            CollapseControlID="imgInsights"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedImage="~/images/collapse.jpg"
                            CollapsedImage="~/images/expand_blue.jpg"
                            Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender53a1" />

                        <hr />
                    </div>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel55" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblAreasForImprovementTitle" ForeColor="White" Text="Areas For Improvement" />
                                        </asp:TableCell>
                                        <asp:TableCell align="center" runat="server">
                                            <asp:Label ID="lblErrorAreasForImprovement" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="100px" runat="server">
                                            <asp:CheckBox ID="ckAreasForImprovementNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center" Width="100px">
                                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image18" runat="server" Height="25px" ImageUrl="~/images/arrowupred.jpg" Width="25px"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgAreasForImprovement" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlAreasForImprovement" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table31" runat="server" CellPadding="10" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Literal ID="litAreasForImprovementDescription" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:Table ID="Table32" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" runat="server">
                                        <div style="background: white;">
                                            <asp:TextBox ID="txtAreasForImprovement" runat="server" Height="182px" Width="100%"></asp:TextBox>
                                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender5" runat="server" TargetControlID="txtAreasForImprovement" EnableSanitization="False" BehaviorID="_content_HtmlEditorExtender5">
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

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender55" runat="server" TargetControlID="pnlAreasForImprovement"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Areas For Improvement"
                            CollapsedText="Areas For Improvement" TextLabelID="lblAreasForImprovementTitle" ImageControlID="imgAreasForImprovement"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgAreasForImprovement"
                            CollapseControlID="imgAreasForImprovement"
                            Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender55" />

                        <hr />
                    </div>

                    <%--   ********************************************  PLAN - DO  ********************************************  --%>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel56" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblPlanAndDoTitle" ForeColor="White" Text="Plan and Do" />
                                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                                            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="_top">
                                                <asp:Image ID="Image19" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                                            </asp:HyperLink>
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgPlanAndDo" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlPlan" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table33" runat="server" Width="100%">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" Width="50%" VerticalAlign="Top">

                                        <asp:Table ID="Table34" runat="server" CellPadding="0" CellSpacing="0" Width="100%" BorderColor="Maroon">

                                            <asp:TableRow>
                                                <asp:TableCell BackColor="Maroon" runat="server">
                                                    <asp:Label ID="Label256" runat="server" Text="Plan    " BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
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

                                        <asp:Table ID="Table35" runat="server" CellPadding="0" CellSpacing="0" Width="100%">
                                            <asp:TableRow>
                                                <asp:TableCell BackColor="Maroon" runat="server" BorderColor="Maroon">
                                                    <asp:Label ID="Label257" runat="server" Text="Do" BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
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
                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender56" runat="server" TargetControlID="pnlPlan"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Plan and Do"
                            CollapsedText="Plan and Do" TextLabelID="lblPlanAndDoTitle" ImageControlID="imgPlanAndDo"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgPlanAndDo"
                            CollapseControlID="imgPlanAndDo"
                            Collapsed="true" SuppressPostBack="false"
                            BehaviorID="_content_ContentsCollapsiblePanelExtender56" />
                        <hr />
                    </div>

                    <%--  ********************************************    CHECK-ADDITIONAL COMMENTS  ********************************************  --%>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel57" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCheckAdditionalCommentsTitle" ForeColor="White" Text="Check and Additional Comments" />
                                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                                            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image21" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                                            </asp:HyperLink>
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCheckAdditionalComments" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCheck" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table36" runat="server" Width="100%">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" Width="50%" VerticalAlign="Top">

                                        <asp:Table ID="Table37" runat="server" CellPadding="0" CellSpacing="0" Width="100%" BorderColor="Maroon">
                                            <asp:TableRow>
                                                <asp:TableCell BackColor="Maroon" runat="server">
                                                    <asp:Label ID="Label259" runat="server" Text="Check" BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
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
                                        <asp:Table ID="Table38" runat="server" CellPadding="0" CellSpacing="0" Width="100%" BorderColor="Maroon">
                                            <asp:TableRow>
                                                <asp:TableCell BackColor="Maroon" runat="server">
                                                    <asp:Label ID="Label260" runat="server" Text="Additional Comments" BackColor="Maroon" Font-Bold="true" ForeColor="White"></asp:Label>
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
                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender57" runat="server" TargetControlID="pnlCheck"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Check and Additional Comments"
                            CollapsedText="Check and Additional Comments" TextLabelID="lblCheckAdditionalCommentsTitle" ImageControlID="imgCheckAdditionalComments"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgCheckAdditionalComments"
                            CollapseControlID="imgCheckAdditionalComments"
                            Collapsed="true" SuppressPostBack="false"
                            BehaviorID="_content_ContentsCollapsiblePanelExtender57" />
                        <hr />
                    </div>

                    <%--*************************************************  Report must be submitted *******************************************************--%>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel58" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblReportTitle" ForeColor="White" Text="Report Must Be Submitted" />
                                        </asp:TableCell>
                                        <asp:TableCell align="center" runat="server">
                                            <asp:Label ID="Label262" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="100px" runat="server">
                                            <asp:CheckBox ID="ckReportNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center" Width="100px">
                                            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/PDCAEdit.aspx" Target="_top">
                                                <asp:Image ID="Image23" runat="server" Height="25px" ImageUrl="~/images/arrowupred.jpg" Width="25px"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgReport" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>

                        <asp:Panel ID="pnlReport" runat="server" BorderWidth="1px" BorderColor="Black" HorizontalAlign="Left">
                            <asp:Table ID="Table39" runat="server" CellPadding="10" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Literal ID="litReportDescription" runat="server"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                            <asp:Table ID="Table40" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell HorizontalAlign="Left" runat="server">
                                        <div style="background: white;">
                                            <asp:TextBox ID="txtReport" runat="server" Height="182px" Width="100%"></asp:TextBox>
                                            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender10" runat="server" TargetControlID="txtReport" EnableSanitization="False" BehaviorID="_content_HtmlEditorExtender10">
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

                        <ajaxToolkit:CollapsiblePanelExtender ID="ContentsCollapsiblePanelExtender58" runat="server" TargetControlID="pnlReport"
                            CollapsedSize="0" ExpandedSize="350"
                            ExpandedText="Report Must Be Conveyed"
                            CollapsedText="Report Must Be Conveyed" TextLabelID="lblReportTitle" ImageControlID="imgReport"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgReport"
                            CollapseControlID="imgReport"
                            Collapsed="True" BehaviorID="_content_ContentsCollapsiblePanelExtender58" />

                        <hr />
                    </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Attached Documents">
                <ContentTemplate>

                    <%-- **********************************************   Documents List PANE ***********************************************************--%>

                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel49" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                                            <asp:Label runat="server" ID="lblDocumentsTitle" ForeColor="White" Text="AddDocuments" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="lblDocumentsError" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
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
                                        <asp:Label ID="Label247" runat="server" Text="Title " Font-Bold="true"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txtDocumentTitle" runat="server" Width="800px"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell BorderWidth="2" BorderStyle="Solid" BorderColor="Black">
                                        <asp:Label ID="Label248" runat="server" Text="Description " Font-Bold="true"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txtDocumentDescription" runat="server" Width="800px" Height="150" TextMode="MultiLine"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>

                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender50" runat="server" TargetControlID="pnlDocuments"
                            CollapsedSize="0" ExpandedSize="250"
                            ExpandedText="Add Documents"
                            CollapsedText="Add Documents" TextLabelID="lblDocumentsTitle" ImageControlID="imgDocumentsExpand"
                            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                            ExpandControlID="imgDocumentsExpand"
                            CollapseControlID="imgDocumentsExpand" Collapsed="true" SuppressPostBack="false" />
                        <hr />
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
                                <asp:TemplateField HeaderText="Document Name">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="lbtnDownload" runat="server" CommandName="DownloadDocumentFile"
                                            OnClick="DownloadDocumentFile"
                                            CommandArgument='<%#Eval("PDCADocumentID") %>'><%#Eval("DocumentName","{0}") %></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HeaderStyle-Width="30%">
                                    <ItemStyle Width="350px"></ItemStyle>
                                </asp:BoundField>

                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HeaderStyle-Width="30%">
                                    <ItemStyle Width="350px"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="InsertDate" HeaderText="Date Inserted" SortExpression="InsertDate" HeaderStyle-Width="20%">
                                    <ItemStyle Width="50px"></ItemStyle>
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="lbtnDeleteDocument" runat="server" CommandName="deleteDocumentFile"
                                            OnClick="lbtnDeleteDocument_Click"
                                            CommandArgument='<%#Eval("PDCADocumentID") %>'>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/deletex210by10x.png" />
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="tpACPEAccreditationStandards" runat="server" HeaderText="ACPE Accreditation Standards">
                <ContentTemplate>

                    <%--  ********************************************    ACPE Standards ********************************************  --%>
                    <%--  ********************************************    Header ********************************************  --%>

                    <asp:Table ID="Table16" runat="server" Width="1200px">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" HorizontalAlign="Center" BackColor="Maroon" ForeColor="White">
                                <asp:Label ID="Label86" runat="server" Text="ACPE Accreditation Standards" ForeColor="White" Font-Size="X-Large"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                    <%--  ********************************************     Section 1: Educational Outcomes ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel17" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblACPE101" ForeColor="White" Text="Section 1: Educational Outcomes" />
                                        </asp:TableCell><asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label87" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="img101" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlACPE101" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="tblACPE1Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards0" Text="1" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label88" runat="server" Text="Foundational Knowledge"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1" Text="2" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label89" runat="server" Text="Essentials for Practice and Care"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards2" Text="3" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label90" runat="server" Text="Approach to Practice and Care"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3" Text="4" runat="server" />
                                    </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label91" runat="server" Text="Personal and Professional Development"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>

                        <%--  ******************************************** ACPE Accreditation Section II Structure and Process to Promote Achievement of Educational Outcomes********************************************  --%>
                        <div style="width: 1200px; background-color: lightgrey;">
                            <asp:Panel runat="server" ID="panel18" HorizontalAlign="Center">
                                <div style="font-weight: bold; background-color: maroon;">
                                    <asp:Table runat="server"
                                        Width="100%">
                                        <asp:TableRow>
                                            <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                                <asp:Label runat="server" ID="lblACPE103" ForeColor="White" Text="Section II Structure and Process to Promote Achievement of Educational Outcomes" />
                                            </asp:TableCell><asp:TableCell runat="server" align="center">
                                                <asp:Label runat="server" ID="Label92" BackColor="White" ForeColor="Red" Text="" />
                                            </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                                <asp:Image ID="img103" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="pnlACPE103" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                                <asp:Table ID="tblACPE103Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1031" Text="5" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label93" runat="server" Text="Eligibility and Reporting Requirements"></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards9" Text="6" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label94" runat="server" Text="College or School Vision, Mission, and Goals "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards10" Text="7" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label95" runat="server" Text="Strategic Plan "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards11" Text="8" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label96" runat="server" Text=" Organization and Governance "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1051" Text="9" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label97" runat="server" Text="Organizational Culture "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards13" Text="10" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label98" runat="server" Text="Curriculum Design, Delivery, and Oversight "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards14" Text="11" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label99" runat="server" Text="Interprofessional Education (IPE) "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards15" Text="12" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label100" runat="server" Text="Pre-Advanced Pharmacy Practice Experiences (Pre-APPE) Curriculum "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards16" Text="13" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label101" runat="server" Text="Advanced Pharmacy Practice Experiences (APPE) Curriculum "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards3121" Text="14" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label102" runat="server" Text="Student Services "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards76" Text="15" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label133" runat="server" Text="Academic Environment "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards77" Text="16" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label134" runat="server" Text="Admissions"></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards78" Text="17" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label135" runat="server" Text="Progression"></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards79" Text="18" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label136" runat="server" Text="Academic Environment "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards80" Text="19" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label137" runat="server" Text="Faculty and Staff – Qualitative Factors "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards81" Text="20" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label138" runat="server" Text="Preceptors "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards82" Text="21" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label139" runat="server" Text="Physical Facilities and Educational Resources "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards96" Text="22" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label153" runat="server" Text="Practice Facilities "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards97" Text="23" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label154" runat="server" Text="Financial Resources "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:Panel>
                            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender17" runat="server" TargetControlID="pnlACPE103"
                                CollapsedSize="0" ExpandedSize="520"
                                ExpandedText="Section II Structure and Process to Promote Achievement of Educational Outcomes"
                                CollapsedText="Section II Structure and Process to Promote Achievement of Educational Outcomes" TextLabelID="lblACPE103" ImageControlID="img103"
                                ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                                ExpandControlID="img103"
                                CollapseControlID="img103"
                                Collapsed="false" SuppressPostBack="false" />
                            <hr />
                        </div>
                        <%--  ******************************************** ACPE   SECTION III: ASSESSMENT OF STANDARDS AND KEY ELEMENTS  ********************************************  --%>
                        <div style="width: 1200px; background-color: lightgrey;">
                            <asp:Panel runat="server" ID="panel19" HorizontalAlign="Center">
                                <div style="font-weight: bold; background-color: maroon;">
                                    <asp:Table runat="server"
                                        Width="100%">
                                        <asp:TableRow>
                                            <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                                <asp:Label runat="server" ID="lblACPE104" ForeColor="White" Text="Section III: Assessment of Key Standards and Issues" />
                                            </asp:TableCell><asp:TableCell runat="server" align="center">
                                                <asp:Label runat="server" ID="Label103" BackColor="White" ForeColor="Red" Text="" />
                                            </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                                                <asp:Image ID="img104" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:Panel>
                            <asp:Panel ID="pnlACPE104" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                                <asp:Table ID="tblACPE104Contents" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="76px">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards1041" Text="24" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label104" runat="server" Text="Assessment Elements for Section I: Educational Outcomes "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:CheckBox Font-Bold="true" ID="ckACPEStandards12" Text="25" runat="server" />
                                        </asp:TableCell><asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                            <asp:Label ID="Label105" runat="server" Text="Assessment Elements for Section II: Structure and Process "></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:Panel>
                            <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender18" runat="server" TargetControlID="pnlACPE104"
                                CollapsedSize="0" ExpandedSize="80"
                                ExpandedText="Section III: Assessment of Key Standards and Issues"
                                CollapsedText="Section III: Assessment of Key Standards and Issues" TextLabelID="lblACPE104" ImageControlID="img104"
                                ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
                                ExpandControlID="img104"
                                CollapseControlID="img104"
                                Collapsed="false" SuppressPostBack="false" />
                            <hr />
                        </div>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel ID="tpCOCAAccreditationStandards" runat="server" HeaderText="COCA Accreditation Standards">
                <ContentTemplate>

                    <%--  ********************************************    COCA Standards ********************************************  --%>
                    <%--  ********************************************    Header ********************************************  --%>

                    <asp:Table ID="Table12" runat="server" Width="1200px">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" HorizontalAlign="Center" BackColor="Maroon" ForeColor="White">
                                <asp:Label ID="Label82" runat="server" Text="COCA Accreditation Standards" ForeColor="White" Font-Size="X-Large"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                    <%--  ********************************************    COCA Standard 1 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel10" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA1_1" ForeColor="White" Text="Standard 1: Mission and Governance" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="lblErrorReport" BackColor="White" ForeColor="Red" Text="" />
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
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation0" Text="1.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label1" runat="server" Text="Program Mission"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation1" Text="1.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label2" runat="server" Text="Strategic Plan"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation2" Text="1.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label3" runat="server" Text="Licensing and Regional/Institutional Accreditation"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation3" Text="1.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label4" runat="server" Text="Governance and Program Policies"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation4" Text="1.5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label5" runat="server" Text="Non-Discrimination"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation5" Text="1.6" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label10" runat="server" Text="Degree-Granting Body"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation6" Text="1.7" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label11" runat="server" Text="Clinical Education Affiliation Agreements"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender9" runat="server" TargetControlID="pnlCOCA1_1"
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
                        <asp:Panel runat="server" ID="panel5" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA2" ForeColor="White" Text="Standard 2: Leadership and Administration" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label12" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA2" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA2" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table1" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation7" Text="2.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label13" runat="server" Text="Dean Qualifications"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation8" Text="2.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label14" runat="server" Text="Full-Time Dean"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation9" Text="2.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label15" runat="server" Text="Academic and Administrative Leadership"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation10" Text="2.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label16" runat="server" Text="Accreditation Standards Compliance and Procedures"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" TargetControlID="pnlCOCA2"
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
                        <asp:Panel runat="server" ID="panel6" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA3" ForeColor="White" Text="Standard 3: Finances" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label17" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA3" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA3" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table6" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation11" Text="3.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label18" runat="server" Text="Financial Resources"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation12" Text="3.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label19" runat="server" Text="Financial Planning and Budgeting"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation13" Text="3.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label20" runat="server" Text="Budgetary Authority"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation14" Text="3.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label21" runat="server" Text="Financial Audit"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender6" runat="server" TargetControlID="pnlCOCA3"
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
                        <asp:Panel runat="server" ID="panel7" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA4" ForeColor="White" Text="Standard 4: Facilities" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label22" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA4" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA4" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table7" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation15" Text="4.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label23" runat="server" Text="Facilities"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation16" Text="4.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label24" runat="server" Text="Security and Public Safety"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation17" Text="4.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label25" runat="server" Text="Information Technology"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation18" Text="4.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label26" runat="server" Text="Learning Resources"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender7" runat="server" TargetControlID="pnlCOCA4"
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
                        <asp:Panel runat="server" ID="panel8" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA5" ForeColor="White" Text="Standard 5: Learning Environment" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label27" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA5" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA5" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table8" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation19" Text="5.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label28" runat="server" Text="Professionalism"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation20" Text="5.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label29" runat="server" Text="Diversity"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation21" Text="5.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label30" runat="server" Text="Safety, Health, and Wellness"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation22" Text="5.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label31" runat="server" Text="Patient Care Supervision"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender8" runat="server" TargetControlID="pnlCOCA5"
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
                        <asp:Panel runat="server" ID="panel9" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA6" ForeColor="White" Text="Standard 6: Curriculum" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label32" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA6" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA6" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table9" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation23" Text="6.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label33" runat="server" Text="Curriculum Design and Management"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation24" Text="6.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label34" runat="server" Text="Programmatic Level Educational Objectives"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation25" Text="6.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label35" runat="server" Text="Maximum Length of Completion"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation26" Text="6.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label36" runat="server" Text="Osteopathic Core Competencies"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation27" Text="6.5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label37" runat="server" Text="Scientific Method"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation28" Text="6.6" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label38" runat="server" Text="Principles of Osteopathic Medicine"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation29" Text="6.7" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label39" runat="server" Text="Directed Learning"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation30" Text="6.8" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label40" runat="server" Text="Interprofessional Education for Collaborative Practice"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation31" Text="6.9" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label41" runat="server" Text="Clinical Education"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation32" Text="6.10" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label42" runat="server" Text="Clinical Experience"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation33" Text="6.11" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label43" runat="server" Text="Comparability across Clinical Education Sites"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation34" Text="6.12" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label44" runat="server" Text="COMLEX-USA"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender10" runat="server" TargetControlID="pnlCOCA6"
                            CollapsedSize="0" ExpandedSize="350"
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
                        <asp:Panel runat="server" ID="panel11" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA7" ForeColor="White" Text="Standard 7: Faculty and Staff" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label45" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA7" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA7" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table10" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation35" Text="7.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label46" runat="server" Text="Faculty and Staff Resources and Qualifications"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation36" Text="7.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label47" runat="server" Text="Faculty Approvals at All Teaching Sites"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation37" Text="7.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label48" runat="server" Text="Department Chair Qualifications"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation38" Text="7.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label49" runat="server" Text="Primary Care Leadership"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation39" Text="7.5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label50" runat="server" Text="OMM/OPP Leadership"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation40" Text="7.6" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label51" runat="server" Text="Faculty Development"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation41" Text="7.7" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label52" runat="server" Text="Faculty Association"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>

                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation42" Text="7.8" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label53" runat="server" Text="Faculty Appointment and Advancement"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender11" runat="server" TargetControlID="pnlCOCA7"
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
                        <asp:Panel runat="server" ID="panel12" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA8" ForeColor="White" Text="Standard 8: Scholarly Activity" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label54" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA8" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA8" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table11" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation43" Text="8.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label55" runat="server" Text="Research and Scholarly Activity Strategic Plan"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation44" Text="8.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label56" runat="server" Text="Research and Scholarly Activity Budget"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender12" runat="server" TargetControlID="pnlCOCA8"
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
                        <asp:Panel runat="server" ID="panel13" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA9" ForeColor="White" Text="Standard 9: Students" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label57" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA9" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA9" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table13" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation45" Text="9.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label58" runat="server" Text="Admissions Policy"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation46" Text="9.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label59" runat="server" Text="Academic Standards"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>

                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation47" Text="9.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label60" runat="server" Text="Transfer Policies"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation48" Text="9.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label61" runat="server" Text="Secure Student Recordkeeping"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation49" Text="9.5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label62" runat="server" Text="Academic Counseling"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation50" Text="9.6" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label63" runat="server" Text="Career Counseling"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation51" Text="9.7" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label64" runat="server" Text="Financial Aid and Debt Management Counseling"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation52" Text="9.8" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label65" runat="server" Text="Mental Health Services"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation53" Text="9.9" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label66" runat="server" Text="Physical Health Services"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation54" Text="9.10" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label67" runat="server" Text="Non-Academic Health Professionals"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation55" Text="9.11" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label68" runat="server" Text="Health Insurance"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender13" runat="server" TargetControlID="pnlCOCA9"
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
                        <asp:Panel runat="server" ID="panel14" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA10" ForeColor="White" Text="Standard 10: Graduate Medical Education (GME)" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label69" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA10" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA10" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table14" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation57" Text="10.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label70" runat="server" Text="Osteopathic Educational Continuum"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation58" Text="10.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label71" runat="server" Text="ACGME Accredited GME"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation59" Text="10.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label72" runat="server" Text="Osteopathic Recognition of GME"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender14" runat="server" TargetControlID="pnlCOCA10"
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
                        <asp:Panel runat="server" ID="panel15" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA11" ForeColor="White" Text="Standard 11: Program and Student Assessment and Outcomes" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label73" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA11" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA11" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table15" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation60" Text="11.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label74" runat="server" Text="Program Assessment"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation61" Text="11.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label75" runat="server" Text="Student Evaluation of Instruction"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation62" Text="11.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label76" runat="server" Text="Student Debt Outcomes"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation63" Text="11.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label77" runat="server" Text="Student Survey"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation64" Text="11.5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label81" runat="server" Text="Progam and Student Outcomes - Annual and Mid-Cycle Reports"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender15" runat="server" TargetControlID="pnlCOCA11"
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
                        <asp:Panel runat="server" ID="panel16" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblCOCA12" ForeColor="White" Text="Standard 12: Institutional Accreditation" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label78" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgCOCA12" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlCOCA12" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table17" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation65" Text="12.1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label79" runat="server" Text="Incorporation of the Institution"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation66" Text="12.2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label80" runat="server" Text="Degree and Other Educational Offerings"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation67" Text="12.3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label83" runat="server" Text="Chief Executive Officer"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation68" Text="12.4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label84" runat="server" Text="Chief Financial Officer"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation69" Text="12.5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label85" runat="server" Text="Course Credit Hours"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" ID="ckCOCAAccreditation70" Text="12.6" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Label ID="Label245" runat="server" Text="Public Information"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender16" runat="server" TargetControlID="pnlCOCA12"
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
            <ajaxToolkit:TabPanel ID="tpWCUSCAccreditationStandards" runat="server" HeaderText="WCUSC Accreditation Standards">
                <ContentTemplate>

                    <%--  ********************************************    WCUSC Standards ********************************************  --%>
                    <%--  ********************************************    Header ********************************************  --%>

                    <asp:Table ID="Table2" runat="server" Width="1200px">
                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" HorizontalAlign="Center" BackColor="Maroon" ForeColor="White">
                                <asp:Label ID="Label6" runat="server" Text="WCUSC Accreditation Standards" ForeColor="White" Font-Size="X-Large"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>

                    <%--  ********************************************    WCUSC Standard 1 ********************************************  --%>
                    <div style="width: 1200px; background-color: lightgrey;">
                        <asp:Panel runat="server" ID="panel1" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblWCUSC1" ForeColor="White" Text="Standard 1: Defining Institutional Purposes and Ensuring Educational Objectives" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label9" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgWCUSC1" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlWCUSC1" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table3" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                                        <asp:CheckBox Font-Bold="true" Text="1.1" ID="ckWCUSCAccreditation1" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC1" runat="server" Text="1.1- The institution’s formally approved statements of purpose are appropriate for an institution of higher education and clearly define its essential values and character and ways in which it contributes to the public good. ">
                                        </asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.2" ID="ckWCUSCAccreditation2" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC2" runat="server" Text="1.2 -Educational objectives are widely recognized throughout the institution, are consistent with stated purposes, and are demonstrably achieved. The institution regularly generates, evaluates, and makes public data about student achievement, including measures of retention and graduation, and evidence of student learning. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.3" ID="ckWCUSCAccreditation3" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC3" runat="server" Text="1.3 -The institution publicly states its commitment to academic freedom for faculty, staff, and students, and acts accordingly. This commitment affirms that those in the academy are free to share their convictions and responsible conclusions with their colleagues and students in their teaching and writing. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.4" ID="ckWCUSCAccreditation4" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC4" runat="server" Text="1.4 -Consistent with its purposes and character, the institution demonstrates an appropriate response to the increasing diversity in society through its policies, its educational and co-curricular programs, its hiring and admissions criteria, and its administrative and organizational practices. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.5" ID="ckWCUSCAccreditation5" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC5" runat="server" Text="1.5 -Even when supported by or affiliated with governmental, corporate, or religious organizations, the institution has education as its primary purpose and operates as an academic institution with appropriate autonomy. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.6" ID="ckWCUSCAccreditation6" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC6" runat="server" Text="1.6 -The institution truthfully represents its academic goals, programs, services, and costs to students and to the larger public. The institution demonstrates that its academic programs can be completed in a timely fashion. The institution treats students fairly and equitably through established policies and procedures addressing student conduct, grievances, human subjects in research, disability, and financial matters, including refunds and financial aid "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.7" ID="ckWCUSCAccreditation7" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC7" runat="server" Text="1.7 -The institution exhibits integrity and transparency in its operations, as demonstrated by the adoption and implementation of appropriate policies and procedures, sound business practices, timely and fair responses to complaints and grievances, and regular evaluation of its performance in these areas. The institution’s finances are regularly audited by qualified independent auditors. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="1.8" ID="ckWCUSCAccreditation8" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC8" runat="server" Text="1.8 -The institution is committed to honest and open communication with the Accrediting Commission; to undertaking the accreditation review process with seriousness and candor; to informing the Commission promptly of any matter that could materially affect the accreditation status of the institution; and to abiding by Commission policies and procedures, including all substantive change policies. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pnlWCUSC1"
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
                        <asp:Panel runat="server" ID="panel2" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblWCUSC2" ForeColor="White" Text="Standard 2: Achieving Educational Objectives through Core Functions" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label7" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgWCUSC2" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlWCUSC2" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table4" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                                        <asp:CheckBox Font-Bold="true" Text="2.1" ID="ckWCUSCAccreditation9" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC9" runat="server" Text="2.1 -The institution’s educational programs are appropriate in content, standards of performance, rigor, and nomenclature for the degree level awarded, regardless of mode of delivery. They are staffed by sufficient numbers of faculty qualified for the type and level of curriculum offered. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.2" ID="ckWCUSCAccreditation10" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC10" runat="server" Text="2.2 -All degrees awarded by the institution are clearly defined in terms of entry-level requirements and levels of student achievement necessary for graduation that represent more than simply an accumulation of courses or credits. The institution has both a coherent philosophy, expressive of its mission, which guides the meaning of its degrees and processes that ensure the quality and integrity of its degrees. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.3" ID="ckWCUSCAccreditation11" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC11" runat="server" Text="2.3 -The institution’s student learning outcomes and standards of performance are clearly stated at the course, program, and, as appropriate, institutional level. These outcomes and standards are reflected in academic programs, policies, and curricula, and are aligned with advisement, library, and information and technology resources, and the wider learning environment. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.4" ID="ckWCUSCAccreditation12" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC12" runat="server" Text="2.4 -The institution’s student learning outcomes and standards of performance are developed by faculty and widely shared among faculty, students, staff, and (where appropriate) external stakeholders. The institution’s faculty take collective responsibility for establishing appropriate standards of performance and demonstrating through assessment the achievement of these standards. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.5" ID="ckWCUSCAccreditation13" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC13" runat="server" Text="2.5 -The institution’s academic programs actively involve students in learning, take into account students’ prior knowledge of the subject matter, challenge students to meet high standards of performance, offer opportunities for them to practice, generalize, and apply what they have learned, and provide them with appropriate and ongoing feedback about their performance and how it can be improved. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.6" ID="ckWCUSCAccreditation14" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC14" runat="server" Text="2.6 -The institution demonstrates that its graduates consistently achieve its stated learning out- comes and established standards of performance. The institution ensures that its expectations for student learning are embedded in the standards that faculty use to evaluate student work. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.7" ID="ckWCUSCAccreditation15" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC15" runat="server" Text="2.7 -All programs offered by the institution are subject to systematic program review. The program review process includes, but is not limited to, analyses of student achievement of the program’s learning outcomes; retention and graduation rates; and, where appropriate, results of licensing examination and placement, and evidence from external constituencies such as employers and professional organizations. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.8" ID="ckWCUSCAccreditation16" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC16" runat="server" Text="2.8 -The institution clearly defines expectations for research, scholarship, and creative activity for its students and all categories of faculty. The institution actively values and promotes scholarship, creative activity, and curricular and instructional innovation, and their dissemination appropriate to the institution’s purposes and character. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.9" ID="ckWCUSCAccreditation17" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC17" runat="server" Text="2.9 -The institution recognizes and promotes appropriate linkages among scholarship, teaching, assessment, student learning, and service. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.10" ID="ckWCUSCAccreditation18" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC18" runat="server" Text="2.10 -The institution demonstrates that students make timely progress toward the completion of their degrees and that an acceptable proportion of students complete their degrees in a timely fashion, given the institution’s mission, the nature of the students it serves, and the kinds of programs it offers. The institution collects and analyzes student data, disaggregated by appropriate demographic categories and areas of study. It tracks achievement, satisfaction, and the extent to which the campus climate supports student success. The institution regularly identifies the characteristics of its students; assesses their preparation, needs, and experiences; and uses these data to improve student achievement. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.11" ID="ckWCUSCAccreditation19" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC19" runat="server" Text="2.11 -Consistent with its purposes, the institution offers co-curricular programs that are aligned with its academic goals, integrated with academic programs, and designed to support all students’ personal and professional development. The institution assesses the effectiveness of its co-curricular programs and uses the results for improvement. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.12" ID="ckWCUSCAccreditation20" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC20" runat="server" Text="2.12 -The institution ensures that all students understand the requirements of their academic programs and receive timely, useful, and complete information and advising about relevant academic requirements. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.13" ID="ckWCUSCAccreditation21" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC21" runat="server" Text="2.13 -The institution provides academic and other student support services such as tutoring, services for students with disabilities, financial aid counseling, career counseling and placement, residential life, athletics, and other services and programs as appropriate, which meet the needs of the specific types of students that the institution serves and the programs it offers. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="2.14" ID="ckWCUSCAccreditation22" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC22" runat="server" Text="2.14 -Institutions that serve transfer students provide clear, accurate, and timely information, ensure equitable treatment under academic policies, provide such students access to student services, and ensure that they are not unduly disadvantaged by the transfer process. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="pnlWCUSC2"
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
                        <asp:Panel runat="server" ID="panel3" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblWCUSC3" ForeColor="White" Text="Standard 3: Developing and Applying Resources and Organizational Structures to Ensure Quality and Sustainability" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label8" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgWCUSC3" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlWCUSC3" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table5" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                                        <asp:CheckBox Font-Bold="true" Text="3.1 " ID="ckWCUSCAccreditation23" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC23" runat="server" Text="3.1 -The institution employs faculty and staff with substantial and continuing commitment to the institution. The faculty and staff are sufficient in number, professional qualification, and diversity to achieve the institution’s educational objectives, establish and oversee academic policies, and ensure the integrity and continuity of its academic and co-curricular programs wherever and however delivered. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.2" ID="ckWCUSCAccreditation24" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC24" runat="server" Text="3.2 -Faculty and staff recruitment, hiring, orientation, workload, incentives, and evaluation practices are aligned with institutional purposes and educational objectives. Evaluation is consistent with best practices in performance appraisal, including multisource feedback and appropriate peer review. Faculty evaluation processes are systematic and are used to improve teaching and learning. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.3" ID="ckWCUSCAccreditation25" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC25" runat="server" Text="3.3 -The institution maintains appropriate and sufficiently supported faculty and staff development activities designed to improve teaching, learning, and assessment of learning outcomes. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.4" ID="ckWCUSCAccreditation26" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC26" runat="server" Text="3.4 -The institution is financially stable and has unqualified independent financial audits and resources sufficient to ensure long-term viability. Resource planning and development include realistic budgeting, enrollment management, and diversification of revenue sources. Resource planning is integrated with all other institutional planning. Resources are aligned with educational purposes and objectives. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.5" ID="ckWCUSCAccreditation27" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC27" runat="server" Text="3.5 -The institution provides access to information and technology resources sufficient in scope, quality, currency, and kind at physical sites and online, as appropriate, to support its academic offerings and the research and scholarship of its faculty, staff, and students. These information resources, services, and facilities are consistent with the institution’s educational objectives and are aligned with student learning outcomes. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.6" ID="ckWCUSCAccreditation28" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC28" runat="server" Text="3.6 -The institution’s leadership, at all levels, is characterized by integrity, high performance, appropriate responsibility, and accountability. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.7" ID="ckWCUSCAccreditation29" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC29" runat="server" Text="3.7 -The institution’s organizational structures and decision-making processes are clear and consistent with its purposes, support effective decision making, and place priority on sustaining institutional capacity and educational effectiveness. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.8 " ID="ckWCUSCAccreditation30" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC30" runat="server" Text="3.8 -The institution has a full-time chief executive officer and a chief financial officer whose primary or full-time responsibilities are to the institution. In addition, the institution has a sufficient number of other qualified administrators to provide effective educational leadership and management. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.9" ID="ckWCUSCAccreditation31" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC31" runat="server" Text="3.9 -The institution has an independent governing board or similar authority that, consistent with its legal and fiduciary authority, exercises appropriate oversight over institutional integrity, policies, and ongoing operations, including hiring and evaluating the chief executive officer. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="3.10 " ID="ckWCUSCAccreditation32" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC32" runat="server" Text="3.10 -The institution’s faculty exercises effective academic leadership and acts consistently to ensure that both academic quality and the institution’s educational purposes and character are sustained. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" TargetControlID="pnlWCUSC3"
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
                        <asp:Panel runat="server" ID="panel4" HorizontalAlign="Center">
                            <div style="font-weight: bold; background-color: maroon;">
                                <asp:Table runat="server"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                                            <asp:Label runat="server" ID="lblWCUSC4" ForeColor="White" Text="Standard 4: Creating an Organization Committed to Quality Assurance, Institutional Learning, and Improvement" />
                                        </asp:TableCell>
                                        <asp:TableCell runat="server" align="center">
                                            <asp:Label runat="server" ID="Label246" BackColor="White" ForeColor="Red" Text="" />
                                        </asp:TableCell>

                                        <asp:TableCell align="right" Width="10px" runat="server">
                                            <asp:Image ID="imgWCUSC4" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlWCUSC4" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">

                            <asp:Table ID="Table18" runat="server" Width="100%" CellPadding="0" CellSpacing="5">
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" Width="80px">
                                        <asp:CheckBox Font-Bold="true" Text="4.1" ID="ckWCUSCAccreditation33" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC33" runat="server" Text="4.1 -The institution employs a deliberate set of quality-assurance processes in both academic and non-academic areas, including new curriculum and program approval processes, periodic program review, assessment of student learning, and other forms of ongoing evaluation. These processes include: collecting, analyzing, and interpreting data; tracking learning results over time; using comparative data from external sources; and improving structures, services, processes, curricula, pedagogy, and learning results. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="4.2" ID="ckWCUSCAccreditation34" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC34" runat="server" Text="Replace4.2 -The institution has institutional research capacity consistent with its purposes and characteristics. Data are disseminated internally and externally in a timely manner, and analyzed, interpreted, and incorporated in institutional review, planning, and decision-making. Periodic reviews are conducted to ensure the effectiveness of the institutional research function and the suitability and usefulness of the data generated. Text"></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="4.3" ID="ckWCUSCAccreditation35" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC35" runat="server" Text="4.3 -Leadership at all levels, including faculty, staff, and administration, is committed to improvement based on the results of inquiry, evidence, and evaluation. Assessment of teaching, learning, and the campus environment – in support of academic and co-curricular objectives – is undertaken, used for improvement, and incorporated into institutional planning processes. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="4.4" ID="ckWCUSCAccreditation36" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC36" runat="server" Text="4.4 -The institution, with significant faculty involvement, engages in ongoing inquiry into the processes of teaching and learning, and the conditions and practices that ensure that the standards of performance established by the institution are being achieved. The faculty and other educators take responsibility for evaluating the effectiveness of teaching and learning processes and uses the results for improvement of student learning and success. The findings from such inquiries are applied to the design and improvement of curricula, pedagogy, and assessment methodology. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="4.5" ID="ckWCUSCAccreditation37" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC37" runat="server" Text="4.5 -Appropriate stakeholders, including alumni, employers, practitioners, students, and others designated by the institution, are regularly involved in the assessment and alignment of educational programs. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="4.6" ID="ckWCUSCAccreditation38" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC38" runat="server" Text="4.6 -The institution periodically engages its multiple constituencies, including the governing board, faculty, staff, and others, in institutional reflection and planning processes that are based on the examination of data and evidence. These processes assess the institution’s strategic position, articulate priorities, examine the alignment of its purposes, core functions, and resources, and define the future direction of the institution. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow runat="server">
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:CheckBox Font-Bold="true" Text="4.7" ID="ckWCUSCAccreditation39" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1">
                                        <asp:Literal ID="litWCUSC39" runat="server" Text="4.7 -Within the context of its mission and structural and financial realities, the institution considers changes that are currently taking place and are anticipated to take place within the institution and higher education environment as part of its planning, new program development, and resource allocation. "></asp:Literal>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:Panel>
                        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" TargetControlID="pnlWCUSC4"
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
        </ajaxToolkit:TabContainer><br />
    </div>
</asp:Content>