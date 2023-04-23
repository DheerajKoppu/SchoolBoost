<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="EventGallery.aspx.cs" Inherits="FBLA.EventGallery" %>

<%@ Register Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .fixed-size-image {
            width: 250px; /* Adjust the width as needed */
            height: 250px; /* Adjust the height as needed */
            object-fit: cover; /* To maintain the aspect ratio of the image */
        }
    </style>
    <div class="container-fluid">
        <div class="row">
            <!-- Column -->
            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs profile-tab nav-justified" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active text-center" data-bs-toggle="tab" href="#home" role="tab">
                                <i data-feather="activity" class="fill-white feather-sm"></i>
                                <span class="d-none d-md-inline-block fw-normal">Activity</span>
                            </a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="home" role="tabpanel">
                            <div class="card-body">
                                <div class="profiletimeline position-relative">
                                    <form runat="server">
                                        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <asp:Repeater ID="Repeater1" OnItemDataBound="Repeater1_ItemDataBound" runat="server">
                                                    <ItemTemplate>
                                                        <div class="sl-item mt-2 mb-3">
                                                            <div class="sl-left float-left me-3">
                                                                <img src='<%# ResolveUrl(Eval("FileLocation").ToString()) %>' alt="user" class="rounded-circle" />
                                                            </div>
                                                            <div class="sl-right">
                                                                <div>
                                                                    <div class="d-md-flex align-items-center">
                                                                        <h5 class="mb-0 font-weight-medium"><a href="#" class="link"><%# Eval("Name") %></a></h5>
                                                                        <span class="sl-date text-muted ms-1"><%# Eval("DatePosted") %></span>
                                                                    </div>
                                                                    <img src="<%# Eval("FileLocation") %>" alt="uploaded image" class="img-fluid fixed-size-image" />

                                                                    <div class="text-nowrap">
                                                                        <a href="javascript:void(0)" class="link me-2 font-weight-medium"><i data-feather="message-circle" class="fill-white feather-sm text-info"></i>0 comments</a>
                                                                        <asp:LinkButton ID="likeBtn" runat="server" OnClick="ToggleLike" CommandArgument='<%# Eval("PostId") %>' CssClass='<%# Convert.ToBoolean(Eval("AlreadyLiked")) ? "text-danger" : "text-muted" %>'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart fill-white feather-sm text-danger"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg> <%# Eval("LikeCount") %> Likes</asp:LinkButton>
                                                                        <asp:LinkButton ID="deleteBtn" runat="server" OnClick="DeletePost" CommandArgument='<%# Eval("PostId") %>' CssClass="link me-2 font-weight-medium text-danger"><i data-feather="trash-2" class="fill-white feather-sm"></i>Delete</asp:LinkButton>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                                <%--                                                <div class="mb-3" style="width: 300px;">
                                                    <asp:FileUpload ID="fileUpload2" runat="server" CssClass="form-control" Text="Upload Picture" />
                                                </div>--%>
                                                <div class="input-group mb-3">
                                                    <div class="custom-file">
                                                        <asp:FileUpload ID="fileUpload2" runat="server" class="form-control" />
                                                    </div>
                                                </div>

                                                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="submitBtn_Click" CssClass="btn btn-primary" />
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:PostBackTrigger ControlID="Button2" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </form>
                                </div>
                            </div>
                            <!-- JavaScript Bundle with Popper -->
                            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.3/umd/popper.min.js"></script>
                            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.min.js"></script>
                            <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
                            <script src="js/app.js"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
