using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.SamplePages
{
    public partial class BasicControls : System.Web.UI.Page
    {
        //this static variable is being used in this demo example to hang onto the dummy data
        public static List<DDLClass> DataCollection;

        //this method is executed every time the page is processed
        //this event method is executed before any event method is processed
        //this is a good place to do initialization of your controls
        //there is a property to test for postback of your page
        protected void Page_Load(object sender, EventArgs e)
        {
            //clear old messages
            OutputMessage.Text = "";

            if (!Page.IsPostBack)
            {
                //page init
                DataCollection = new List<DDLClass>();

                //load the data collection with dummy data
                //normally this data would come from your database
                DataCollection.Add(new DDLClass(1, "COMP1008"));
                DataCollection.Add(new DDLClass(2, "CPSC1517"));
                DataCollection.Add(new DDLClass(3, "DMIT2018"));
                DataCollection.Add(new DDLClass(4, "DMIT1508"));

                //sort arraylist
                //(x,y)
                //x.field compared to y.field = ascending
                //y.field compared to x.field = decending
                DataCollection.Sort((x, y) => x.DisplayField.CompareTo(y.DisplayField));

                //setup the dropdown list (works for radiobutton or dropdown lists as well)
                //a) assign your data to the control
                CollectionList.DataSource = DataCollection;

                //b) assign the data list field names to the appropriate control properties
                //  i) .DataValueField this is the value of the select option
                //  ii) .DataTextField this is the display of the select option
                CollectionList.DataValueField = "ValueField";
                CollectionList.DataTextField = nameof(DDLClass.DisplayField);

                //c) physically bind the data to the control for show
                CollectionList.DataBind();

                //what about a prompt?
                //one can add a prompt to the start of the BOUND control list
                //one will use the index 0 to position the prompt
                CollectionList.Items.Insert(0, "select...");

            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //this method is executed when the submit button is pressed
            //this method is concerned with the actions needed for the submit button

            //to access the data fo a control, you use the appropriate
            // control (object) property (get, set) and access technique

            //for TextBox, Label, Literal use .Text
            //for a list (DropDownList, RadioButtonlist) use one of:
            // .SelectedIndex - the physical location of the item in the list
            // .SelectedValue - the associated data value of the in the list
            // .SelectedItem - the associated data display text of the in the list

            //for boolean controls (RadioButton, CheckBox) use the .Checked

            //most controls use strings except for boolean controls

            string submitChoice = TextBoxNumericChoice.Text;
            //sample validation (this is incomplete and just for testing)
            if (string.IsNullOrEmpty(submitChoice))
            {
                OutputMessage.Text = "Enter a valid course choice";
            }
            else
            {
                //set the RadioButtonList using the entered data value
                //property: .SelectedValue
                RadioButtonListChoice.SelectedValue = submitChoice;

                //set the checkbox to be on if the choice was a programming language
                if (submitChoice.Equals("2") || submitChoice.Equals("3"))
                {
                    CheckBoxChoice.Checked = true;
                }
                else
                {
                    CheckBoxChoice.Checked = false;
                }

                //position in the dropdownlist
                //use the entered data value to position
                //property: .SelectedValue
                CollectionList.SelectedValue = submitChoice;

                //demonstrate the 3 different access techniques for a list
                //output will be to a label (appearance will eb read only)
                DisplayReadOnly.Text = CollectionList.SelectedItem.Text
                    + " at index " + CollectionList.SelectedIndex
                    + " has a value of " + CollectionList.SelectedValue;

                //OutputMessage.Text = "you pressed the submit choice button";
            }
        }
        protected void dropdownButton_Click(object sender, EventArgs e)
        {
            string submitChoice = CollectionList.SelectedValue;
            //sample validation (this is incomplete and just for testing)
            if (submitChoice.Equals("select..."))
            {
                OutputMessage.Text = "Chose an option";
            }
            else
            {
                TextBoxNumericChoice.Text = submitChoice;
                //set the RadioButtonList using the entered data value
                //property: .SelectedValue
                RadioButtonListChoice.SelectedValue = submitChoice;

                //set the checkbox to be on if the choice was a programming language
                if (submitChoice.Equals("2") || submitChoice.Equals("3"))
                {
                    CheckBoxChoice.Checked = true;
                }
                else
                {
                    CheckBoxChoice.Checked = false;
                }

                //demonstrate the 3 different access techniques for a list
                //output will be to a label (appearance will eb read only)
                DisplayReadOnly.Text = CollectionList.SelectedItem.Text
                    + " at index " + CollectionList.SelectedIndex
                    + " has a value of " + CollectionList.SelectedValue;

                //OutputMessage.Text = "you pressed the submit choice button";
            }
        }
    }
}