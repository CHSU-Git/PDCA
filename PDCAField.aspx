<%@ Page Title="" Language="C#" MasterPageFile="~/PDCAField.Master" AutoEventWireup="true" CodeBehind="PDCAField.aspx.cs" Inherits="PDCA_ASPX.PDCAField" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 410px; background: gray;">
        <asp:Panel runat="server" ID="panel1">
            <div style="font-weight: bold; background-color: ThreeDShadow;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">
                            <asp:Label runat="server" ID="textLabel1" />
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlSubjectofAssessment" runat="server" BorderWidth="1" BorderColor="Black">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>

                    <asp:TableCell>
                        <asp:Label ID="lblFieldTitle" runat="server" Text="Subject of Assessment Examples"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblFieldDescription" runat="server" Text="Course (number), Committee (name), Event (name), Process (name), Curriculum (program name), Initiative (name), Plan (name), Project (name), Performance / Presentation / Paper / Poster (name), Past SII-PDCA (name/date), Other (describe) "></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtSubjectOfAssessementExamples" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>

        <asp:Panel runat="server" ID="panel2">
            <div style="font-weight: bold; background-color: ThreeDShadow;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="textLabel2" />
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image2" runat="server" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlAssessments" runat="server">
            <asp:Table ID="Table2" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Assessment Name"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Assessment Name, Date, Who Was Assessed, Description of Assessments"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtAssessmentName" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlStrengths" runat="server">
            <asp:Table ID="Table3" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Strengths"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="And why are these strengths? How can you leverage these strengths?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtStrengths" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlInsights" runat="server">
            <asp:Table ID="Table4" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Insights"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="What did you learn? What surprised you?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtInsights" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlAreasForImprovement" runat="server">
            <asp:Table ID="Table5" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="Areas for Improvement"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="What problems did you experience?
What are the root causes of this problem?
What are your assumptions?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtAreasforImprovement" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlPlan" runat="server">
            <asp:Table ID="Table6" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Plan"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label10" runat="server" Text="What change is needed?
What literature addresses this problem?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtPlan" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlDo" runat="server">
            <asp:Table ID="Table7" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Do"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label12" runat="server" Text="What concrete steps will be taken? Is a pilot needed? Who will be impacted? Who needs to buy-in? Who should you communicate with? Who is responsible for doing what?"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtDo" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlCheck" runat="server">
            <asp:Table ID="Table8" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label13" runat="server" Text="Check"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label14" runat="server" Text="What data will you collect and analyze to assess? Who will do the work? When will this be done?
Adjust: Any changes implicated by assessment can be added to the original report or completed in a new SII-PDCA form "></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtCheck" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlAdditionalComments" runat="server">
            <asp:Table ID="Table9" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label15" runat="server" Text="Additional Comments"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label16" runat="server" Text="Enter any additional comments that might be helpful."></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtAdditionalComments" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="pnlReportMustBeConveyed" runat="server">
            <asp:Table ID="Table10" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label17" runat="server" Text="Report Must Be Conveyed"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label18" runat="server" Text="Report must be conveyed to (Admin/ Faculty or Chair /Committee) Please specify:"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:TextBox ID="txtReportMustBeConveyed" runat="server" Height="232px" Width="1000px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender11" runat="server" TargetControlID="pnlSubjectofAssessment"
            CollapsedSize="0" ExpandedSize="120" ExpandedText="(Collapse...)" CollapsedText="(Expand...)" TextLabelID="textLabel" ImageControlID="Image1"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            CollapseControlID="panel1" Collapsed="false" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="pnlAssessments"
            CollapsedSize="0" ExpandedSize="120" ExpandedText="(Collapse...)" CollapsedText="(Expand...)" TextLabelID="textLabel" ImageControlID="Image2"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            CollapseControlID="panel2" Collapsed="false" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" TargetControlID="pnlStrengths" Collapsed="false" CollapsedText="Strengths" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" TargetControlID="pnlInsights" Collapsed="false" CollapsedText="Insights" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" TargetControlID="pnlAreasForImprovement" Collapsed="false" CollapsedText="Areas For Improvement" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender6" runat="server" TargetControlID="pnlPlan" Collapsed="false" CollapsedText="Plan" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender7" runat="server" TargetControlID="pnlDo" Collapsed="false" CollapsedText="Do" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender8" runat="server" TargetControlID="pnlCheck" Collapsed="false" CollapsedText="Check" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender9" runat="server" TargetControlID="pnlAdditionalComments" Collapsed="false" CollapsedText="Additional Comments" SuppressPostBack="false" />
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender10" runat="server" TargetControlID="pnlReportMustBeConveyed" Collapsed="false" CollapsedText="Report Must Be Conveyed" SuppressPostBack="false" />

        <ajaxToolkit:HtmlEditorExtender ID="txtNote_HtmlEditorExtender" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtSubjectOfAssessementExamples">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtAssessmentName" >
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender2" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtStrengths">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender3" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtInsights">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender4" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtAreasforImprovement">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender5" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtPlan">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender6" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtDo">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender7" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtCheck">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender8" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtAdditionalComments">
        </ajaxToolkit:HtmlEditorExtender>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender9" runat="server" EnableSanitization="false" BehaviorID="txtNote_HtmlEditorExtender" TargetControlID="txtReportMustBeConveyed">
        </ajaxToolkit:HtmlEditorExtender>

           <div style="width: 1200px; background-color: lightgrey;">
        <asp:Panel runat="server" ID="panel3" HorizontalAlign="Center">
            <div style="font-weight: bold; background-color: maroon;">
                <asp:Table runat="server"
                    Width="100%">
                    <asp:TableRow>
                        <asp:TableCell runat="server" Font-Size="Larger" align="left">

                            <asp:Label runat="server" ID="Label19" ForeColor="White" Text="Strengths" />
                        </asp:TableCell><asp:TableCell runat="server" align="center">
                            <asp:Label runat="server" ID="lblErrorStrengths" BackColor="White" ForeColor="Red" Text="Some error" />
                        </asp:TableCell><asp:TableCell align="right" Width="100px" runat="server">
                            <asp:CheckBox ID="ckStrengthsNotApplicable" runat="server" Text="N/A" ForeColor="White" />
                        </asp:TableCell><asp:TableCell align="center" Width="100px" runat="server">
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PDCAFieldtest.aspx" Target="_top">
                                <asp:Image ID="Image16" runat="server" ImageUrl="~/images/arrowupred.jpg" Height="25px" Width="25px" />
                            </asp:HyperLink>
                        </asp:TableCell><asp:TableCell align="right" Width="10px" runat="server">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/expand_blue.jpg" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" BorderWidth="1" BorderColor="Black" HorizontalAlign="Left">
            <asp:Table ID="Table11" runat="server" CellPadding="10" CellSpacing="5">

                <asp:TableRow>
                    <asp:TableCell>
           
                        <asp:Literal ID="litStrengthsDescription" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Left">
                        <div style="background: white;">
                            <asp:TextBox ID="TextBox1" runat="server" Height="182px" Width="1000px"></asp:TextBox>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:Panel>
        <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pnlStrengths"
            CollapsedSize="0" ExpandedSize="250"
            ExpandedText="Strengths"
            CollapsedText="Strengths" TextLabelID="Label3" ImageControlID="Image3"
            ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand_blue.jpg"
            ExpandControlID="Image3"
            CollapseControlID="Image3"
            Collapsed="true" SuppressPostBack="false" />
        <hr />
    </div>

        STRENGTHS ***************************************

        INSIGHTS *************************************

        AREAS FOR IMPROVEMENT ************************




        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    </div>
</asp:Content>