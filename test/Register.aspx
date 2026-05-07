<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Create Account</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page-area {
            width: 92%;
            min-height: 620px;
            margin: 35px auto;
            background-color: #f8fafc;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-card {
            width: 360px;
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .title {
            text-align: center;
            font-size: 24px;
            margin-bottom: 10px;
            color: #111827;
        }

        .subtitle {
            text-align: center;
            font-size: 12px;
            color: #6b7280;
            margin-bottom: 25px;
        }

        .label {
            font-size: 12px;
            font-weight: bold;
            color: #374151;
            margin-bottom: 5px;
            display: block;
        }

        .textbox {
            width: 100%;
            height: 40px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            padding-left: 12px;
            margin-bottom: 16px;
        }

        .blue-button {
            width: 100%;
            height: 42px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
        }

        .login-link {
            text-align: center;
            font-size: 12px;
            margin-top: 20px;
            color: #6b7280;
        }

        .login-link a {
            color: #2563eb;
            font-weight: bold;
            text-decoration: none;
        }

        .error {
            color: #dc2626;
            font-size: 12px;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }


    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="page-area">

        <div class="register-card">

            <h1 class="title">Create Account</h1>
            <p class="subtitle">Join StudyFlow and start learning smarter</p>

            <label class="label">Full Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="textbox" placeholder="John Doe"></asp:TextBox>

            <label class="label">Email Address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" placeholder="you@example.com"></asp:TextBox>

            <label class="label">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>

            <label class="label">Confirm Password</label>
            <asp:TextBox ID="txtConfirm" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>

            <button type="button" class="blue-button" onclick="createAccount()">Create Account</button>

            <div id="errorMessage" class="error"></div>

            <div class="login-link">
                Already have an account?
                <a href="Dashboard.aspx">Login here</a>
            </div>

        </div>

    </div>

</form>


    <script>
    function createAccount() {
        const name = document.getElementById("txtName").value.trim();
        const email = document.getElementById("txtEmail").value.trim();
        const password = document.getElementById("txtPassword").value.trim();
        const confirm = document.getElementById("txtConfirm").value.trim();

        if (name === "" || email === "" || password === "" || confirm === "") {
            document.getElementById("errorMessage").innerText = "Please fill in all fields.";
            return;
        }

        if (password !== confirm) {
            document.getElementById("errorMessage").innerText = "Passwords do not match.";
            return;
        }

        localStorage.setItem("userName", name);
        localStorage.setItem("userEmail", email);
        localStorage.setItem("userPassword", password);

        alert("Account created successfully!");
        window.location.href = "Login.aspx";
    }
    </script>

</body>
</html>