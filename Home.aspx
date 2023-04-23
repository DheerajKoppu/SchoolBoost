<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FBLA.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-200 col-md-100">
        <div class="card earning-widget">
            <div class="card-header bg-white d-flex align-items-center">
                <h4 class="card-title mb-0">Points Leaderboard</h4>
                <asp:HyperLink ID="ViewWinnersLink" runat="server" NavigateUrl="~/Winners.aspx" CssClass="btn btn-primary ms-4">View Winners</asp:HyperLink>
                <div class="card-actions ms-auto">
                    <a class="text-muted" data-action="collapse"><i class="ti-minus"></i></a>
                    <a class="text-muted btn-minimize" data-action="expand"><i class="mdi mdi-arrow-expand"></i></a>
                    <a class="btn-close ms-1" data-action="close"></a>
                </div>
            </div>

            <div class="card-body border-top collapse show table-responsive no-wrap">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table class="table v-middle table-borderless">
                            <thead class="table-dark">
                                <tr>
                                    <th>Rank</th>
                                    <th>Username</th>
                                    <th>Grade</th>
                                    <th>Total Points</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr <%# Eval("Username").ToString() == User.Identity.Name ? "class=\"table-row-hover bg-light\"" : "class=\"table-row-hover\"" %>>
                            <td><%# Eval("Rank") %></td>
                            <td><%# Eval("Username") %></td>
                            <td><%# Eval("grade") %></td>
                            <td><%# Eval("totalmarks") %></td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </tbody>
                        </table>
                        <asp:Label ID="EmptyLabel" runat="server" Text="No data available." Visible="false" />
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <style>
        .table-row-hover:hover {
            background-color: #f0f0f0;
        }
    </style>
</asp:Content>
