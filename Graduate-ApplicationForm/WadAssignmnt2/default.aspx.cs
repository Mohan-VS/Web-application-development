using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Please change the path of Requests folder as per your computer

namespace WadAssignmnt2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                try
                {
                    string date = tbDate.Text;
                    string[] arr = date.Split('-');
                    String lines = "";

                    lines = " Student Information : " + tbFName.Text + " " + tbLName.Text + "   DOB: " + tbDate.Text + "   Gender: " + ddlGender.SelectedValue + " ";
                    lines = lines + "\n Contact Information : " + tbMail.Text + " , " + tbMail2.Text + " " + tbCity.Text + " , " + ddlState.SelectedValue
                        + " , " + tbZip.Text + " \n Mobile : " + tbMobile.Text + "-" + tbMobile2.Text + "-" + tbMobile3.Text
                        +"\n Email : "+ tbEmail.Text;
                    lines = lines + "\n Academic Information : " + ddlSem.SelectedValue + "\n Campus: " + ddlOnCampus.SelectedValue + "\n Program : " + ddlProgram.SelectedValue
                        + "\n International : " + ddlInternational.SelectedValue;
                    lines = lines + " \n Housing : " + ddlHouse.SelectedValue + " \n Veteran : " + ddlVeteran.SelectedValue;
                    lines = lines + " \n How did you find about UHCL : " + listboxSelect.SelectedValue;
                    
                    System.IO.File.WriteAllText(@"C:\Users\sreel\source\repos\WadAssignmnt2\WadAssignmnt2\Requests\" + tbFName.Text + "-" + tbLName.Text + "-" + arr[2] + arr[1] + arr[0] + ".txt", lines);

                    Response.Redirect("~/Thanks.aspx");
                }
                
                catch(Exception exc)
                {
                    Console.WriteLine(exc);
                }
            }
        }

        protected void cusVal_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime dt = (DateTime) Convert.ToDateTime(args.Value);
            if(dt < DateTime.Today)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/default.aspx");
        }


    }
}