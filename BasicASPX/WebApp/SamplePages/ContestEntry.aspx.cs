using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.SamplePages
{
    public partial class ContestEntry : System.Web.UI.Page
    {
        //this would be a database normally
        public static List<ApplicationInfo> DataCollection;

        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = "";
            if (!Page.IsPostBack)
            {
                //init
                DataCollection = new List<ApplicationInfo>();
            }
            else
            {

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //https://docs.microsoft.com/en-us/previous-versions/dotnet/articles/aa479013(v=msdn.10)

            if (Page.IsValid)
            {
                if (Terms.Checked)
                {
                    DataCollection.Add(new ApplicationInfo(
                        FirstName.Text,
                        LastName.Text,
                        StreetAddress1.Text,
                        StreetAddress2.Text,
                        City.Text,
                        Province.SelectedValue,
                        PostalCode.Text,
                        EmailAddress.Text
                        )
                    );
                    ContestEntryList.DataSource = DataCollection;
                    ContestEntryList.DataBind();
                }
                else
                {
                    Message.Text = "must agree to terms";
                }
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            FirstName.Text = "";
            LastName.Text = "";
            StreetAddress1.Text = "";
            StreetAddress2.Text = "";
            City.Text = "";
            Province.SelectedIndex = 0;
            PostalCode.Text = "";
            EmailAddress.Text = "";
            CheckAnswer.Text = "";
            Terms.Checked = false;
        }
    }
}