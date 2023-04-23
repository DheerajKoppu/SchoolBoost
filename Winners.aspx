<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Winners.aspx.cs" Inherits="FBLA.Winners" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../../dist/css/style.min.css" rel="stylesheet" />
    <style>
        .table-responsive {
            display: block;
            width: 100%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
        }

        .table-hover tbody tr:hover {
            background-color: #f0f0f0;
        }
    </style>

    <form id="mainForm" runat="server">
        <div id="winners" runat="server">
            <asp:Panel runat="server">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 d-flex align-items-stretch">
                            <div class="card w-100">
                                <div class="card-body">
                                    <h4 class="card-title" style="color: black;">Top Students by Grade for Each Quarter</h4>
                                    <div class="ms-auto">
                                        <asp:DropDownList ID="quarterSelect" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="quarterSelect_SelectedIndexChanged" runat="server">
                                            <asp:ListItem Value="1">Quarter 1</asp:ListItem>
                                            <asp:ListItem Value="2">Quarter 2</asp:ListItem>
                                            <asp:ListItem Value="3">Quarter 3</asp:ListItem>
                                            <asp:ListItem Value="4">Quarter 4</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="table-responsive mt-3">
                                        <asp:Repeater ID="TopStudentsRepeater" runat="server">
                                            <HeaderTemplate>
                                                <table class="table v-middle table-borderless table-hover">
                                                    <thead class="table-dark">
                                                        <tr>
                                                            <th>Username</th>
                                                            <th>Grade</th>
                                                            <th>Quarter</th>
                                                            <th>Total Score</th>
                                                            <th>Winner Type</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Username") %></td>
                                                    <td><%# Eval("Grade") %></td>
                                                    <td><%# Eval("Quarter") %></td>
                                                    <td><%# Eval("sumscore") %></td>
                                                    <td><%# Eval("winner_type") %></td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <tr>
                                                    <td>End of records
                                                    </td>
                                                </tr>
                                                </table>  
                                            </FooterTemplate>
                                        </asp:Repeater>
                                        <div id="divwinnersinfo" runat="server" visible="false">
                                            <div class="alert alert-info" role="alert">
                                                <strong>Info - </strong>The winners for this quarter are currently unavailable. We will announce the winners at the end of the selected quarter. 
                 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>

    </form>
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../dist/js/custom.min.js"></script>
</asp:Content>
