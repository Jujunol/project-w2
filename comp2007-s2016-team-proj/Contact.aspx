﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="comp2007_s2016_team_proj.Contact" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!--
        Authors: Lucy, John
        Purpose: This page will be used if they wish to provide feedback or concerns about the site.
        Date Created: 06/04/16
        Last Modified: 06/04/16
        -->
    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3>Contact Info</h3>
                </div>
                <div class="panel-body">
                    <address>
                        <strong>Lucy</strong><br />
                        1011 Georgian Drive<br />
                        Barrie, ON L9L 2A6<br />
                        <abbr title="Phone">P: </abbr>
                        (705) 555-5163
                    </address>
                    <address>
                        <strong>John Horne</strong><br />
                        1 Toronto Drive<br />
                        Barrie, ON L9L 1L0<br />
                        <abbr title="Phone">P: </abbr>
                        (705) 555-5555
                    </address>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="page-header">
                <h1>Contact Us</h1>
            </div>
            <pre>* - indicates a required field</pre>
            <div class="form-group">
                <label class="control-label" for="Firstname">Firstname: *</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="Firstname" placeholder="Firstname" required="true" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="error" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Firstname is required" ControlToValidate="Firstname"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="Lastname">Lastname: *</label>
                <asp:Textbox runat="server" CssClass="form-control" ID="Lastname" placeholder="Lastname" required="true" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="error" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Lastname is required" ControlToValidate="Lastname"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="Email">Email: *</label>
                <asp:Textbox runat="server" TextMode="Email" CssClass="form-control" ID="Email" placeholder="Email" required="true" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="error" SetFocusOnError="true" Display="Dynamic" ErrorMessage="An email is required" ControlToValidate="Email"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="Phone">Phone: </label>
                <asp:Textbox runat="server" TextMode="Phone" CssClass="form-control" ID="Phone" placeholder="Phone #" />
            </div>
            <div class="form-group">
                <label class="control-label" for="Message">Message: *</label>
                <asp:Textbox runat="server" TextMode="MultiLine" CssClass="form-control" ID="Message" placeholder="Your Message" required="true" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="error" SetFocusOnError="true" Display="Dynamic" ErrorMessage="A message is required" ControlToValidate="Message"></asp:RequiredFieldValidator>
            </div>
            <div class="text-right">
                <a href="/" class="btn btn-warning">Cancel</a>
                <asp:Button runat="server" CssClass="btn btn-primary" ID="Submit" Text="Send" OnClick="Submit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
