using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FanRegistrationReference;

public partial class fanregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        //instantiate service
        FanRegistrationServiceClient registrationClient = new FanRegistrationServiceClient();

        //create instance of fan
        Fan f = new Fan();
        f.FanName = FirstNameTextBox.Text + " " + LastNameTextBox.Text;
        f.FanEmail = EmailTextBox.Text;
        f.FanDateEntered = DateTime.Now;

        //create instance of venue
        FanLogin fl = new FanLogin();
        fl.FanLoginUserName = UserNameTextBox.Text;
        fl.FanLoginPasswordPlain = PasswordTextBox.Text;
        fl.FanLoginDateAdded = DateTime.Now;

        //pass the values to RegisterFan, which returns a bool
        bool result = registrationClient.RegisterFan(f, fl);

        //if FanLogin returns true(was successful)
        if(result)
        {
            int key = registrationClient.Login(ConfirmPassWordTextBox.Text, UserNameTextBox.Text);

            //check the results
            if (key != 0)
            {
                Session["fanKey"] = key;
                Response.Redirect("searchbyartist.aspx");
            }
            else
            {
                ErrorLabel.Text = "There was a problem logging you in";
            }
        }
        else
        {
            ErrorLabel.Text = "Registration Failed";
        }
            
    }
}