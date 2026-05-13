<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>

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

        .login-card {
            width: 360px;
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .title {
            text-align: center;
            font-size: 24px;
            color: #111827;
            margin-bottom: 8px;
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
            margin-bottom: 6px;
            display: block;
        }

        .textbox {
            width: 100%;
            height: 40px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            padding-left: 12px;
            margin-bottom: 16px;
            box-sizing: border-box;
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

        .error {
            color: #dc2626;
            font-size: 12px;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
        }

        .back-link a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

<div class="page-area">

    <div class="login-card">
        <h1 class="title">Admin Login</h1>
        <p class="subtitle">Manage StudyFlow learning resources</p>

        <label class="label">Admin Email</label>
        <input id="adminEmail" class="textbox" type="email" placeholder="admin@studyflow.com" />

        <label class="label">Password</label>
        <input id="adminPassword" class="textbox" type="password" placeholder="Enter password" />

        <button class="blue-button" onclick="adminLogin()">Login as Admin</button>

        <div id="errorMessage" class="error"></div>

        <div class="back-link">
            <a href="Default.aspx">Back to Home</a>
        </div>
    </div>

</div>

<script>
    function adminLogin() {
        const email = document.getElementById("adminEmail").value.trim();
        const password = document.getElementById("adminPassword").value.trim();

        if (email === "admin@studyflow.com" && password === "admin123") {
            localStorage.setItem("isAdminLoggedIn", "true");
            window.location.href = "AdminResources.aspx";
        } else {
            document.getElementById("errorMessage").innerText = "Invalid admin email or password.";
        }
    }
</script>

</body>
</html>