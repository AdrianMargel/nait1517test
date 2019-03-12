﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContestEntry.aspx.cs" Inherits="WebApp.SamplePages.ContestEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h1>Contest Entry</h1>
    </div>

    <div class="row col-md-12">
        <div class="alert alert-info">
            <blockquote style="font-style: italic">
                This illustrates some simple controls to fill out an entry form for a contest. 
                This form will use basic bootstrap formatting and illustrate Validation.
            </blockquote>
            <p>
                Please fill out the following form to enter the contest. This contest is only available to residents in Western Canada.
            </p>

        </div>
    </div>
  
    <%--all validation controls in one area--%>
    
    <asp:RequiredFieldValidator ID="RequiredFieldFirstName" runat="server" ErrorMessage="first name is required" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="FirstName" ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldLastName" runat="server" ErrorMessage="last name is required" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="LastName" ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldStreet1" runat="server" ErrorMessage="street address 1 is required" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="StreetAddress1" ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldCity" runat="server" ErrorMessage="city is required" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="City" ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredPostalCode" runat="server" ErrorMessage="postal code is required" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="PostalCode" ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldEmail" runat="server" ErrorMessage="email is required" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="EmailAddress" ></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID="RequiredFieldCheckAnswer" runat="server" ErrorMessage="you must give an answer to the skill testing question" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="CheckAnswer" ></asp:RequiredFieldValidator>

    <%--since we have no control to demonstrate a range on we will put a range on street2 instead--%>

    <asp:RangeValidator ID="RangeStreet2" runat="server" ErrorMessage="street 2 must be 1 to 5" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="StreetAddress2"
        MaximumValue ="5" MinimumValue="1"></asp:RangeValidator>

    <asp:RegularExpressionValidator ID="RegularExpressionPostalCode" runat="server" ErrorMessage="postal code must be A#A#A#" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="PostalCode" ValidationExpression="[a-zA-z][0-9][a-zA-z][0-9][a-zA-z][0-9]">
        </asp:RegularExpressionValidator>

    <asp:CompareValidator ID="CompareEmail" runat="server" ErrorMessage="Invalid email" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="EmailAddress" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>

    <asp:CompareValidator ID="CompareCheckAnswer" runat="server" ErrorMessage="Incorrect answer to question" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="CheckAnswer" Type="Integer" Operator="Equal" ValueToCompare="15"></asp:CompareValidator>

    <%--<asp:CompareValidator ID="CompareConfirmPassword" runat="server" ErrorMessage="Passwords don't match" Display ="None"
        SetFocusOnError="true" ForeColor="Firebrick" ControlToValidate="ConfirmPassword" Type="String" Operator="Equal" ControlToCompare="Password"></asp:CompareValidator>--%>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        HeaderText="correct the following:"
        CssClass="alert alert-danger"/>

    <div class="row">
        <div class ="col-md-6">
            <fieldset class="form-horizontal">
                <legend>Application Form</legend>

                <asp:Label ID="Label1" runat="server" Text="First Name"
                     AssociatedControlID="FirstName"></asp:Label>
                <asp:TextBox ID="FirstName" runat="server" 
                    ToolTip="Enter your first name." MaxLength="25"></asp:TextBox> 
                  
                 <asp:Label ID="Label6" runat="server" Text="Last Name"
                     AssociatedControlID="LastName"></asp:Label>
                <asp:TextBox ID="LastName" runat="server" 
                    ToolTip="Enter your last name." MaxLength="25"></asp:TextBox> 
                        
                <asp:Label ID="Label3" runat="server" Text="Street Address 1"
                     AssociatedControlID="StreetAddress1"></asp:Label>
                <asp:TextBox ID="StreetAddress1" runat="server" 
                    ToolTip="Enter your street address." MaxLength="75"></asp:TextBox> 
                  
                  <asp:Label ID="Label7" runat="server" Text="Street Address 2"
                     AssociatedControlID="StreetAddress2"></asp:Label>
                <asp:TextBox ID="StreetAddress2" runat="server" 
                    ToolTip="Enter your additional street address." MaxLength="75"></asp:TextBox> 
                  <br />
                 <asp:Label ID="Label8" runat="server" Text="City"
                     AssociatedControlID="City"></asp:Label>
                <asp:TextBox ID="City" runat="server" 
                    ToolTip="Enter your City name" MaxLength="50"></asp:TextBox> 
                  
                 <asp:Label ID="Label9" runat="server" Text="Province"
                     AssociatedControlID="Province"></asp:Label>
                <asp:DropDownList ID="Province" runat="server" Width="75px">
                    <asp:ListItem Value="AB" Text="AB"></asp:ListItem>
                     <asp:ListItem Value="BC" Text="BC"></asp:ListItem>
                     <asp:ListItem Value="MN" Text="MN"></asp:ListItem>
                     <asp:ListItem Value="SK" Text="SK"></asp:ListItem>
                </asp:DropDownList>
                  
                 <asp:Label ID="Label10" runat="server" Text="Postal Code"
                     AssociatedControlID="PostalCode"></asp:Label>
                <asp:TextBox ID="PostalCode" runat="server" 
                    ToolTip="Enter your postal code"  MaxLength="6"></asp:TextBox> 
                 
                <asp:Label ID="Label2" runat="server" Text="Email"
                     AssociatedControlID="EmailAddress"></asp:Label>
                <asp:TextBox ID="EmailAddress" runat="server" 
                    ToolTip="Enter your email address"
                     TextMode="Email"></asp:TextBox> 
                  
              </fieldset>   
           <p>Note: You must agree to the contest terms in order to be entered.
               <br />
               <asp:CheckBox ID="Terms" runat="server" Text="I agree to the terms of the contest" />
           </p>

            <p>
                Enter your answer to the following calculation instructions:<br />
                Multiply 15 times 6<br />
                Add 240<br />
                Divide by 11<br />
                Subtract 15<br />
                <asp:TextBox ID="CheckAnswer" runat="server" ></asp:TextBox>
            </p>
        </div>
        <div class="col-md-6">   
            <div class="col-md-offset-2">
                <p>
                    <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Submit_Click" />&nbsp;&nbsp;
                    <asp:Button ID="Clear" runat="server" CssClass="btn" Text="Clear" CausesValidation="true" OnClick="Clear_Click"  />
                </p>
                <asp:Label ID="Message" runat="server" ></asp:Label><br />
                <hr style="width:5px" />
                <asp:GridView ID="ContestEntryList" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
