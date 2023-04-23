<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifyEmail.aspx.cs" Inherits="FBLA.VerifyEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Verification</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row mt-5">
                <div class="col-12 text-center">
                    <h1>Email Verification</h1>
                    <p class="lead" id="message"></p>
                    <asp:Button ID="btnGoToHome" runat="server" CssClass="btn btn-primary" Text="Go to Home Page" OnClick="btnGoToHome_Click" />
                </div>
            </div>
        </div>
        <asp:HiddenField ID="hfEmailVerified" runat="server" />
    </form>

    <script>
        const emailVerified = '<%= hfEmailVerified.Value %>';

        if (emailVerified === '1') {
            document.getElementById('message').innerText = 'Your email has been successfully verified. Thank you!';
        } else {
            document.getElementById('message').innerText = 'Email verification failed. Please check the link in the email you received.';
        }
    </script>
</body>
</html>
