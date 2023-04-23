<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FBLA.Register" %>

<%@ Register Assembly="System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" Namespace="System.Windows.Forms" TagPrefix="winforms" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Container fluid  -->
    <!-- -------------------------------------------------------------- -->
    <div class="container-fluid">
        <!-- -------------------------------------------------------------- -->
        <!-- Start Page Content -->
        <!-- -------------------------------------------------------------- -->
        <!-- Row -->
        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="alert alert-success" id="DivSuccess" runat="server" visible="false" role="alert">
                        <strong>Success - </strong>Registration successful! Please check your email to confirm your email address.
                    </div>

                </div>

                <div class="card" runat="server" id="DivReg">
                    <div class="card-body border-bottom">
                        <h4 class="card-title">Register</h4>
                    </div>
                    <form class="form-horizontal" runat="server">
                        <div class="card-body" runat="server" visible="true">
                            <h4 class="card-title"></h4>
                            <div class="mb-3 row">
                                <label
                                    for="fname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    First Name</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>

                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="lname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Last Name</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtlname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label
                                    for="lname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    UserName</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label
                                    for="lname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Password</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label
                                    for="lname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Confirm Password</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtXcfPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label
                                    for="email1"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Email</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="lname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Grade</label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txtgrade" runat="server" CssClass="form-control" placeholder="Grade"></asp:TextBox>
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Country</label>
                                <div class="col-sm-9">
                                    <asp:DropDownList ID="CountryDrp" runat="server" DataSourceID="SqlDataSource1" DataTextField="CountryName" DataValueField="id" CssClass="form-select">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeEventsConnectionString %>" SelectCommand="SELECT [CountryName], [id] FROM [Country]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="p-3 border-top">
                                <div class="text-end">
                                    <asp:Button ID="SubmitButton" runat="server" Text="Register" CssClass="btn btn-rounded btn-success" OnClick="SubmitButton_Click" />
                                    <asp:Button ID="BtnCancel" runat="server" Text="Clear" CssClass="btn btn-rounded btn-secondary" OnClick="BtnCancel_Click" />

                                </div>
                            </div>

                            <div id="error" style="color: red" runat="server"></div>

                            <hr />

                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Row -->
        <!-- Row -->
        <%--  <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Employee Profile</h4>
                        <h6 class="card-subtitle">This is the employee profile form with labels on left and
                    form controls on right in one line two controls. To use add
                    class <mark><code>form-horizontal</code></mark> to the form
                    tag and give class <mark><code>row</code></mark> with mb-3.
                        </h6>
                    </div>
                    <hr />
                    <form class="form-horizontal">
                        <div class="card-body">
                            <h4 class="card-title">Employee User</h4>
                            <div class="row">
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="fname2"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            First Name</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="fname2"
                                                placeholder="First Name Here" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="lname2"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Last Name</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="lname2"
                                                placeholder="Last Name Here" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="uname1"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Username</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="email"
                                                class="form-control"
                                                id="uname1"
                                                placeholder="Username Here" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="nname"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Nick Name</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="nname"
                                                placeholder="Nick Name Here" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="card-body">
                            <h4 class="card-title">Contact Info &amp; Bio</h4>
                            <div class="row">
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="email2"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Email</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="email"
                                                class="form-control"
                                                id="email2"
                                                placeholder="Email Here" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="web1"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Website</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="web1"
                                                placeholder="http://" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="cono12"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Contact No</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="cono12"
                                                placeholder="Contact No Here" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-lg-6">
                                    <div class="mb-3 row">
                                        <label
                                            for="bio1"
                                            class="
                              col-sm-3
                              text-end
                              control-label
                              col-form-label
                            ">
                                            Bio</label>
                                        <div class="col-sm-9">
                                            <input
                                                type="text"
                                                class="form-control"
                                                id="bio1"
                                                placeholder="Bio Here" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                    </form>
                </div>
            </div>
        </div>--%>
        <!-- End Row -->
        <!-- Row -->
        <%--<div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body border-bottom">
                        <h4 class="card-title">Employee Timing</h4>
                        <h6 class="card-subtitle">This is the employee timing form with labels on left and
                    form controls on right in one line. To use add class
                    <mark><code>form-horizontal</code></mark> to the form tag
                    and give class <mark><code>row</code></mark> with mb-3.
                        </h6>
                    </div>
                    <form class="form-horizontal">
                        <div class="card-body">
                            <div class="mb-3 row">
                                <label
                                    for="ename"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Employee Name</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="ename"
                                        placeholder="Employee Name Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="pname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Project Name</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="pname"
                                        placeholder="Project Name Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="date"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Date</label>
                                <div class="col-sm-9">
                                    <input type="date" class="form-control" id="date" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="rate"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Rate Per Hour</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="rate"
                                        placeholder="Rate Per Hour Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="stime"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Start Time</label>
                                <div class="col-sm-9">
                                    <input type="time" class="form-control" id="stime" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="etime"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    End Time</label>
                                <div class="col-sm-9">
                                    <input type="time" class="form-control" id="etime" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="note1"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Notes</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="note1"
                                        placeholder="Notes Here" />
                                </div>
                            </div>
                        </div>
                        <div class="p-3 border-top">
                            <div class="text-end">
                                <button
                                    type="submit"
                                    class="
                          btn btn-info
                          rounded-pill
                          px-4
                          waves-effect waves-light
                        ">
                                    Save
                                </button>
                                <button
                                    type="submit"
                                    class="
                          btn btn-dark
                          rounded-pill
                          px-4
                          waves-effect waves-light
                        ">
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>--%>
        <!-- End Row -->
        <!-- Row -->
        <%--    <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body border-bottom">
                        <h4 class="card-title">Event Registration</h4>
                        <h6 class="card-subtitle">This is the event registration form with labels on left and
                    form controls on right in one line. To use add class
                    <mark><code>form-horizontal</code></mark> to the form tag
                    and give class <mark><code>row</code></mark> with mb-3.
                        </h6>
                    </div>
                    <form class="form-horizontal">
                        <div class="card-body">
                            <div class="mb-3 row">
                                <label
                                    for="fullname"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Full Name</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="fullname"
                                        placeholder="Full Name Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="title1"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Title</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="title1"
                                        placeholder="Title Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="com12"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Company</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="com12"
                                        placeholder="Company Name Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="email20"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Email</label>
                                <div class="col-sm-9">
                                    <input
                                        type="email"
                                        class="form-control"
                                        id="email20"
                                        placeholder="Email Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    for="cono3"
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Contact No</label>
                                <div class="col-sm-9">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="cono3"
                                        placeholder="Contact No Here" />
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label
                                    class="col-sm-3 text-end control-label col-form-label">
                                    Existing Customer</label>
                                <div class="col-sm-9">
                                    <div class="form-check">
                                        <input
                                            type="radio"
                                            class="form-check-input"
                                            id="customControlValidation2"
                                            name="radio-stacked"
                                            required />
                                        <label
                                            class="form-check-label"
                                            for="customControlValidation2">
                                            Yes</label>
                                    </div>
                                    <div class="form-check">
                                        <input
                                            type="radio"
                                            class="form-check-input"
                                            id="customControlValidation3"
                                            name="radio-stacked"
                                            required />
                                        <label
                                            class="form-check-label"
                                            for="customControlValidation3">
                                            No</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-3 border-top">
                            <div class="text-end">
                                <button
                                    type="submit"
                                    class="
                          btn btn-info
                          rounded-pill
                          px-4
                          waves-effect waves-light
                        ">
                                    Save
                                </button>
                                <button
                                    type="submit"
                                    class="
                          btn btn-dark
                          rounded-pill
                          px-4
                          waves-effect waves-light
                        ">
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>--%>
        <!-- End Row -->
        <!-- Row -->
        <%--        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header bg-info">
                        <h4 class="card-title text-white">Other Sample Horizontal form
                        </h4>
                    </div>
                    <form action="#" class="form-horizontal">
                        <div class="form-body">
                            <div class="card-body border-bottom">
                                <h6 class="card-subtitle">This is the sample horizontal form with labels on left
                        and form controls on right in one line. To use add class
                        <mark><code>form-horizontal</code></mark> to the form
                        tag and give class <mark><code>row</code></mark> with
                        mb-3.
                                </h6>
                                <h4 class="card-title">Person Info</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                First Name</label>
                                            <div class="col-md-9">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    placeholder="John doe" />
                                                <small class="form-control-feedback">This is inline help
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="mb-3 has-danger row">
                                            <label class="control-label text-end col-md-3">
                                                Last Name</label>
                                            <div class="col-md-9">
                                                <input
                                                    type="text"
                                                    class="form-control form-control-danger"
                                                    placeholder="12n" />
                                                <small class="form-control-feedback">This field has error.
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Gender</label>
                                            <div class="col-md-9">
                                                <select class="form-control form-select">
                                                    <option value="">Male</option>
                                                    <option value="">Female</option>
                                                </select>
                                                <small class="form-control-feedback">Select your gender.
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Date of Birth</label>
                                            <div class="col-md-9">
                                                <input type="date" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Category</label>
                                            <div class="col-md-9">
                                                <select
                                                    class="form-control form-select"
                                                    data-placeholder="Choose a Category"
                                                    tabindex="1">
                                                    <option value="Category 1">Category 1</option>
                                                    <option value="Category 2">Category 2</option>
                                                    <option value="Category 3">Category 5</option>
                                                    <option value="Category 4">Category 4</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Membership</label>
                                            <div class="col-md-9">
                                                <div class="form-check">
                                                    <input
                                                        type="radio"
                                                        id="customRadio3"
                                                        name="member"
                                                        class="form-check-input" />
                                                    <label
                                                        class="form-check-label"
                                                        for="customRadio3">
                                                        Free</label>
                                                </div>
                                                <div class="form-check">
                                                    <input
                                                        type="radio"
                                                        id="customRadio4"
                                                        name="member"
                                                        class="form-check-input" />
                                                    <label
                                                        class="form-check-label"
                                                        for="customRadio4">
                                                        Paid</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <h4 class="card-title">Address</h4>
                            </div>
                            <hr class="mt-0 mb-5" />
                            <div class="card-body">
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Address 1</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Address 2</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                City</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                State</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Post Code</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-6">
                                        <div class="mb-3 row">
                                            <label class="control-label text-end col-md-3">
                                                Country</label>
                                            <div class="col-md-9">
                                                <select class="form-control form-select">
                                                    <option>Country 1</option>
                                                    <option>Country 2</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <!--/row-->
                            </div>
                            <div class="p-3 border-top">
                                <div class="text-end">
                                    <button
                                        type="submit"
                                        class="
                            btn btn-info
                            rounded-pill
                            px-4
                            waves-effect waves-light
                          ">
                                        Save
                                    </button>
                                    <button
                                        type="submit"
                                        class="
                            btn btn-dark
                            rounded-pill
                            px-4
                            waves-effect waves-light
                          ">
                                        Cancel
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>--%>
        <!-- End Row -->
        <!-- Row -->
        <%--     <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Form with left Icons</h4>
                        <h6 class="card-subtitle">Use Bootstrap's predefined grid classes for horizontal form
                        </h6>
                        <form class="form-horizontal pt-3">
                            <div class="mb-3 row">
                                <label for="username" class="col-sm-3 control-label">
                                    Username*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i data-feather="user" class="feather-sm"></i>
                                        </span>
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="username"
                                            placeholder="Username" />
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="email4" class="col-sm-3 control-label">
                                    Email*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i data-feather="mail" class="feather-sm"></i>
                                        </span>
                                        <input
                                            type="email"
                                            class="form-control"
                                            id="email4"
                                            placeholder="Enter email" />
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="web" class="col-sm-3 control-label">
                                    Website</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i data-feather="globe" class="feather-sm"></i>
                                        </span>
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="web"
                                            placeholder="Enter Website Name" />
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-3 control-label">Password*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i data-feather="lock" class="feather-sm"></i>
                                        </span>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="exampleInputpwd4"
                                            placeholder="Enter pwd" />
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-3 control-label">Re Password*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i data-feather="lock" class="feather-sm"></i>
                                        </span>
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="exampleInputpwd5"
                                            placeholder="Re Enter pwd" />
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <div class="offset-sm-3 col-sm-9">
                                    <div class="form-check mr-sm-2">
                                        <input
                                            type="checkbox"
                                            class="form-check-input"
                                            id="checkbox2"
                                            value="check" />
                                        <label class="form-check-label" for="checkbox2">
                                            Check Me Out !</label>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row mb-0">
                                <div class="offset-sm-3 col-sm-9">
                                    <button
                                        type="submit"
                                        class="
                            btn btn-info
                            rounded-pill
                            px-4
                            waves-effect waves-light
                          ">
                                        <i
                                            data-feather="log-in"
                                            class="fill-white feather-sm me-2"></i>
                                        Sign in
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Form with right Icon</h4>
                        <h6 class="card-subtitle">Use Bootstrap's predefined grid classes for horizontal form
                        </h6>
                        <form class="form-horizontal pt-3">
                            <div class="mb-3 row">
                                <label for="uname" class="col-sm-3 control-label">
                                    Username*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="uname"
                                            placeholder="Username" />
                                        <span class="input-group-text">
                                            <i data-feather="user" class="feather-sm"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="email2" class="col-sm-3 control-label">
                                    Email*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input
                                            type="email"
                                            class="form-control"
                                            id="exampleInputEmail1"
                                            placeholder="Enter email" />
                                        <span class="input-group-text">
                                            <i data-feather="mail" class="feather-sm"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="web10" class="col-sm-3 control-label">
                                    Website</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input
                                            type="text"
                                            class="form-control"
                                            id="web10"
                                            placeholder="Enter Website Name" />
                                        <span class="input-group-text">
                                            <i data-feather="globe" class="feather-sm"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="pass3" class="col-sm-3 control-label">
                                    Password*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="pass3"
                                            placeholder="Enter pwd" />
                                        <span class="input-group-text">
                                            <i data-feather="lock" class="feather-sm"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="pass4" class="col-sm-3 control-label">
                                    Re Password*</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input
                                            type="password"
                                            class="form-control"
                                            id="pass4"
                                            placeholder="Re Enter pwd" />
                                        <span class="input-group-text">
                                            <i data-feather="lock" class="feather-sm"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <div class="offset-sm-3 col-sm-9">
                                    <div class="form-check mr-sm-2">
                                        <input
                                            type="checkbox"
                                            class="form-check-input"
                                            id="checkbox4"
                                            value="check" />
                                        <label class="form-check-label" for="checkbox4">
                                            Check Me Out !</label>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3 row mb-0">
                                <div class="offset-sm-3 col-sm-9">
                                    <button
                                        type="submit"
                                        class="
                            btn btn-info
                            rounded-pill
                            px-4
                            waves-effect waves-light
                          ">
                                        <i
                                            data-feather="log-in"
                                            class="fill-white feather-sm me-2"></i>
                                        Sign in
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- End Row -->
        <!-- -------------------------------------------------------------- -->
        <!-- End PAge Content -->
        <!-- -------------------------------------------------------------- -->
    </div>
    <!-- -------------------------------------------------------------- -->
    <!-- End Container fluid  -->

</asp:Content>
