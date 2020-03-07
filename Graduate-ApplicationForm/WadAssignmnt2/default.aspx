<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WadAssignmnt2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div id="top">
        <div>
            <img id="img" src="Images/Image.png" class="auto-style1" />
        </div>
        <div>
            <asp:Label ID="lbl1" runat="server" Text="Thank you for your interest! Please complete the form below to request information."></asp:Label>
        </div>
        <div>
            <asp:Label ID="lbl2" runat="server" Text="The information you provide will be kept confidential and used only to send information to you."></asp:Label>
        </div>
        </div>
        <div id="lbl3">
            <asp:Label runat="server" Text="* = Required Field"></asp:Label>
        </div>
        <div class="block1">
            <asp:Label ID="lblStudent" runat="server" Text="Student Information" CssClass="lblHeading" Font-Size="Large"></asp:Label>
            <div>
                <asp:Label ID="lblFName" runat="server" Text="* First Name" CssClass="labelsRed"></asp:Label>
                <asp:Label ID="lblLName" runat="server" Text="* Last Name" CssClass="labelsRight"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbFName" runat="server" CssClass="TxtBox" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqFName" runat="server" ControlToValidate="tbFName" CssClass="Validation" Display="None" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tbLName" runat="server" Width="200px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqLName" runat="server" ControlToValidate="tbLName" CssClass="Validation" Display="None" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblDoB" runat="server" Text="* Date of Birth" CssClass="labelsRed"></asp:Label>
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbDate" runat="server" CssClass="TxtBox" TextMode="Date"  ></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="reqDate" runat="server" CustomValidator="tbDate" CssClass="Validation" Display="None" ErrorMessage="Date of Birth is required" ControlToValidate="tbDate"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlGender" runat="server" Width="130px">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div>
                <asp:CustomValidator ID="cusVal" runat="server" ControlToValidate="tbDate" CssClass="Validation" Display="Dynamic" OnServerValidate="cusVal_ServerValidate" SetFocusOnError="True">Date of Birth should be less than today</asp:CustomValidator>
            </div>

        </div>

        <div class="block2">
            <asp:Label ID="lblContact" runat="server" Text="Contact Information" CssClass="lblHeading" Font-Size="Large"></asp:Label>
            <div>
                <asp:Label ID="lblMail" runat="server" Text="* Mailing address" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbMail" runat="server" CssClass="TxtBox" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqMail" runat="server" ControlToValidate="tbMail" CssClass="Validation" Display="None" ErrorMessage="Mailing address is required"></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Label ID="lblMail2" runat="server" Text="Mailing address 2" ></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbMail2" runat="server" CssClass="TxtBox" Width="350px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblCity" runat="server" Text="* City" CssClass="labelsRed"></asp:Label>
                <asp:Label ID="lblState" runat="server" Text="* State" CssClass="labelsRed"></asp:Label>
                <asp:Label ID="lblZip" runat="server" Text="* Zip Code" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbCity" runat="server" CssClass="TxtBox" Width="140px"></asp:TextBox>
                <asp:DropDownList ID="ddlState" runat="server" CssClass="TxtBox" Width="130px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AK</asp:ListItem>
                    <asp:ListItem>AZ</asp:ListItem>
                    <asp:ListItem>AR</asp:ListItem>
                    <asp:ListItem>CA</asp:ListItem>
                    <asp:ListItem>CO</asp:ListItem>
                    <asp:ListItem>CT</asp:ListItem>
                    <asp:ListItem>DE</asp:ListItem>
                    <asp:ListItem>FL</asp:ListItem>
                    <asp:ListItem>GA</asp:ListItem>
                    <asp:ListItem>HI</asp:ListItem>
                    <asp:ListItem>ID</asp:ListItem>
                    <asp:ListItem>IL</asp:ListItem>
                    <asp:ListItem>IN</asp:ListItem>
                    <asp:ListItem>IA</asp:ListItem>
                    <asp:ListItem>KS</asp:ListItem>
                    <asp:ListItem>KY</asp:ListItem>
                    <asp:ListItem>LA</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>MD</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MI</asp:ListItem>
                    <asp:ListItem>MN</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MO</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>NE</asp:ListItem>
                    <asp:ListItem>NV</asp:ListItem>
                    <asp:ListItem>NH</asp:ListItem>
                    <asp:ListItem>NJ</asp:ListItem>
                    <asp:ListItem>NM</asp:ListItem>
                    <asp:ListItem>NY</asp:ListItem>
                    <asp:ListItem>NC</asp:ListItem>
                    <asp:ListItem>ND</asp:ListItem>
                    <asp:ListItem>OH</asp:ListItem>
                    <asp:ListItem>OK</asp:ListItem>
                    <asp:ListItem>OR</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>RI</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SD</asp:ListItem>
                    <asp:ListItem>TN</asp:ListItem>
                    <asp:ListItem>TX</asp:ListItem>
                    <asp:ListItem>UT</asp:ListItem>
                    <asp:ListItem>VT</asp:ListItem>
                    <asp:ListItem>VA</asp:ListItem>
                    <asp:ListItem>WA</asp:ListItem>
                    <asp:ListItem>WV</asp:ListItem>
                    <asp:ListItem>WI</asp:ListItem>
                    <asp:ListItem>WY</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="tbZip" runat="server" CssClass="TxtBox" Width="140px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqZip" runat="server" ControlToValidate="tbZip" CssClass="Validation" Display="None" ErrorMessage="Zip Code is required"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="reqCity" runat="server" ControlToValidate="tbCity" CssClass="Validation" Display="None" ErrorMessage="City is required"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="reqState" runat="server" ControlToValidate="ddlState" CssClass="Validation" Display="None" ErrorMessage="State is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regZip" runat="server" ControlToValidate="tbZip" CssClass="Validation" Display="None" ErrorMessage="Zip code should be in correct format" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </div>
            <div>
                <asp:Label ID="lblMobile" runat="server" Text="* Mobile" CssClass="labelsRed"></asp:Label>
                <asp:Label ID="lblMaywe" runat="server" Text="* May We text you?" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbMobile" runat="server" maxlength="3"  CssClass="TxtBox" Width="50px"></asp:TextBox><span class="top">-</span>
                <asp:TextBox ID="tbMobile2" runat="server" maxlength="3"  CssClass="TxtBox" Width="50px"></asp:TextBox><span class="top">-</span>
                <asp:TextBox ID="tbMobile3" runat="server" maxlength="4"  CssClass="TxtBox" Width="55px"></asp:TextBox>
                <asp:DropDownList ID="ddlMaywe" runat="server" Width="110px">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="reqMobile" runat="server" ControlToValidate="tbMobile3" CssClass="Validation" Display="None" ErrorMessage="Mobile Number is required"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="reqMobile2" runat="server" ControlToValidate="tbMobile2" CssClass="Validation" Display="None" ErrorMessage="Mobile number is required"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="reqMaywe" runat="server" ControlToValidate="ddlMaywe" CssClass="Validation" Display="None" ErrorMessage="May we text you field is required"></asp:RequiredFieldValidator>
            </div>
            <div>
                <div>
                <asp:Label ID="lblOther" runat="server" Text="Other Phone" CssClass="labelsRed"></asp:Label>
                </div>
            <div>
                <asp:TextBox ID="tbOther" runat="server" maxlength="3"  CssClass="TxtBox" Width="50px"></asp:TextBox><span class="top">-</span>
                <asp:TextBox ID="tbOther2" runat="server" maxlength="3"  CssClass="TxtBox" Width="50px"></asp:TextBox><span class="top">-</span>
                <asp:TextBox ID="tbOther3" runat="server" maxlength="4"  CssClass="TxtBox" Width="55px"></asp:TextBox>
            </div>
            </div>

            <div>
                <asp:Label ID="lblEmail" runat="server" Text="* Email" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="tbEmail" runat="server" CssClass="TxtBox" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="tbEmail" CssClass="Validation" Display="None" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="tbEmail" CssClass="Validation" Display="None" ErrorMessage="Email should be in correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
               

        </div>

        <div class="block3">
            <asp:Label ID="lblAcadeimic" runat="server" Text="Academic Information" CssClass="lblHeading" Font-Size="Large"></asp:Label>
            <div>
                <asp:Label ID="lblSem" runat="server" Text="* Semester you wish to Enroll: " CssClass="labelsRed"></asp:Label>
                <asp:Label ID="lblOnCampus" runat="server" Text="* Campus" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlSem" runat="server" CssClass="TxtBox" Width="207px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Spring 2020</asp:ListItem>
                    <asp:ListItem>Summer 2020</asp:ListItem>
                    <asp:ListItem>Fall 2020</asp:ListItem>
                    <asp:ListItem>Spring 2021</asp:ListItem>
                    <asp:ListItem>Summer 2021</asp:ListItem>
                    <asp:ListItem>Fall 2021</asp:ListItem>
                    <asp:ListItem>Spring 2022</asp:ListItem>
                    <asp:ListItem>Summer 2022</asp:ListItem>
                    <asp:ListItem>Fall 2022</asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator ID="reqSem" runat="server" ControlToValidate="ddlSem" CssClass="Validation" Display="None" ErrorMessage="Semester is required"></asp:RequiredFieldValidator>

                <asp:DropDownList ID="ddlOnCampus" runat="server" CssClass="TxtBox">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>On Campus / Off Campus</asp:ListItem>
                    <asp:ListItem>Online Only</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="reqCampus" runat="server" ControlToValidate="ddlOnCampus" CssClass="Validation" Display="None" ErrorMessage="Campus field is required"></asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Label ID="lblProgram" runat="server" Text="* Program of Interest" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlProgram" runat="server" CssClass="TxtBox" Width="207px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Applied Behavior Analysis Certification</asp:ListItem>
                    <asp:ListItem>Behavior Analysis MA</asp:ListItem>
                    <asp:ListItem>Behavioral Science MA</asp:ListItem>
                    <asp:ListItem>Behavioral Science MA -Pearland</asp:ListItem>
                    <asp:ListItem>Biological Sciences MS</asp:ListItem>
                    <asp:ListItem>Biotechnology MS</asp:ListItem>
                    <asp:ListItem>Business Administration MBA</asp:ListItem>
                    <asp:ListItem>Business Applications Development Certification</asp:ListItem>
                    <asp:ListItem>Business Computer Networking & Security Certification</asp:ListItem>
                    <asp:ListItem>Business Database Development & Administration Certification</asp:ListItem>
                    <asp:ListItem>Chemistry MS</asp:ListItem>
                    <asp:ListItem>Clinical Mental Health Counseling MS</asp:ListItem>
                    <asp:ListItem>Clinical Psychology MA</asp:ListItem>
                    <asp:ListItem>Clinical Psychology/School Psychology PsyD</asp:ListItem>
                    <asp:ListItem>Computer Engineering MS</asp:ListItem>
                    <asp:ListItem>Computer Information System MS</asp:ListItem>
                    <asp:ListItem>Computer Science MS</asp:ListItem>
                    <asp:ListItem>Counseling MS</asp:ListItem>
                    <asp:ListItem>Counseling MS-Alief</asp:ListItem>
                    <asp:ListItem>Curriculum and Instruction MS</asp:ListItem>
                    <asp:ListItem>Digital Media Studies MA</asp:ListItem>
                    <asp:ListItem>Educational Leadership EdD -Pearland</asp:ListItem>
                    <asp:ListItem>Educational Mgmt MS -Alief</asp:ListItem>
                    <asp:ListItem>Engineering Management MS</asp:ListItem>
                    <asp:ListItem>Exercise and Health Science MS</asp:ListItem>
                    <asp:ListItem>Management Information Systems MS</asp:ListItem>
                    <asp:ListItem>Project Management and Six Sigma Certification</asp:ListItem>
                    <asp:ListItem>Systems Engineering Certification</asp:ListItem>
                    <asp:ListItem>Software Engineering MS</asp:ListItem>
                    <asp:ListItem>Undeclared Science and Engineering Graduate</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="reqProgram" runat="server" ControlToValidate="ddlProgram" CssClass="Validation" Display="None" ErrorMessage="Program of Interest field is required"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblInternational" runat="server" Text="Are you an International Student?" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlInternational" runat="server" CssClass="TxtBox" Width="177px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="block4">
            <asp:Label ID="lblHousing" runat="server" Text="Housing" CssClass="lblHeading" Font-Size="Large"></asp:Label>
            <div>
                <asp:Label ID="lblHouse" runat="server" Text="* Are you Interested in On-Campus Housing?" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlHouse" runat="server" CssClass="TxtBox" Width="220px" >
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
                
                <asp:RequiredFieldValidator ID="reqHouse" runat="server" ControlToValidate="ddlHouse" CssClass="Validation" Display="None" ErrorMessage="On-Campus field is required"></asp:RequiredFieldValidator>
                
            </div>
        </div>

        <div class="block5">
            <asp:Label ID="lblVeteran" runat="server" Text="Veteran Information" CssClass="lblHeading" Font-Size="Large"></asp:Label>
            <div>
                <asp:Label ID="lblDo" runat="server" Text="* Do you plan on using veteran education benefits at UHCL?" CssClass="labelsRed"></asp:Label>
            </div>
            <div>
                <asp:DropDownList ID="ddlVeteran" runat="server" CssClass="TxtBox" Width="220px" >
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>I am not a Veteran</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
                
                <asp:RequiredFieldValidator ID="reqVeteran" runat="server" ControlToValidate="ddlVeteran" CssClass="Validation" Display="None" ErrorMessage="Veteran field is required"></asp:RequiredFieldValidator>
                
            </div>
        </div>

        <div class="block6">
            <asp:Label ID="lblHowUHCL" runat="server" Text="How did you hear about UHCL?" CssClass="lblHeading" Font-Size="Large"></asp:Label>
            <div>
                <asp:Label ID="lblSelect" runat="server" Text="Select all that apply:" CssClass="labelsRed" Font-Size="Large"></asp:Label>
            </div>
            <div>
                <asp:ListBox ID="listboxSelect" runat="server" CssClass="TxtBox" Rows="5" SelectionMode="Multiple">
                    <asp:ListItem>College / Career Fair</asp:ListItem>
                    <asp:ListItem>Email From UHCL</asp:ListItem>
                    <asp:ListItem>Social Media</asp:ListItem>
                    <asp:ListItem>Teacher / Professor</asp:ListItem>
                    <asp:ListItem>Advisor / Counselor</asp:ListItem>
                    <asp:ListItem>Campus / Event Invitation</asp:ListItem>
                    <asp:ListItem>Letter / PostCard from UHCL</asp:ListItem>
                    <asp:ListItem>UHCL Poster / Billboard</asp:ListItem>
                    <asp:ListItem>Employer</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:ListBox>
            </div>
        </div>

        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"  />
        </div>

        <div class="block7">
            <asp:Label ID="lblFinal" runat="server" Text="By clicking the submit button, I agree that UHCL may email me or contact me regarding educational services by telephone and/or text message utilizing automated technology at the telephone number(s) provided above.
I understand this consent is not required to attend UHCL."></asp:Label>
        </div>

        <asp:ValidationSummary ID="valsum" runat="server" CssClass="Validation" Width="257px" BorderStyle="None" />
        
    </form>
</body>
</html>
