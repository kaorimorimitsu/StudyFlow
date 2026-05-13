<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

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

        .register-link {
            text-align: center;
            font-size: 12px;
            margin-top: 20px;
            color: #6b7280;
        }

        .register-link a {
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

<div class="page-area">

    <div class="login-card">

        <h1 class="title">Login</h1>
        <p class="subtitle">Welcome back to StudyFlow</p>

        <label class="label">Email Address</label>
        <input id="email" class="textbox" type="email" placeholder="you@example.com" />

        <label class="label">Password</label>
        <input id="password" class="textbox" type="password" placeholder="Enter password" />

        <button type="button" class="blue-button" onclick="loginUser()">Login</button>

        <div id="errorMessage" class="error"></div>

        <div class="register-link">
            Don't have an account?
            <a href="Register.aspx">Create account</a>
        </div>

    </div>

</div>

<script>
    function getUsers() {
        const storedUsers = localStorage.getItem("users");

        if (storedUsers) {
            try {
                return JSON.parse(storedUsers);
            } catch (error) {
                return [];
            }
        }

        return [];
    }

    function saveUsers(users) {
        localStorage.setItem("users", JSON.stringify(users));
    }

    function migrateOldSingleUser() {
        let users = getUsers();

        const oldEmail = localStorage.getItem("userEmail");
        const oldPassword = localStorage.getItem("userPassword");
        const oldName = localStorage.getItem("userName");
        const oldMemberSince = localStorage.getItem("memberSince");

        if (oldEmail && oldPassword) {
            const alreadyExists = users.some(user => user.email === oldEmail);

            if (!alreadyExists) {
                users.push({
                    name: oldName || "User",
                    email: oldEmail,
                    password: oldPassword,
                    memberSince: oldMemberSince || "May 2026"
                });

                saveUsers(users);
            }
        }

        return users;
    }

    function loginUser() {
        const email = document.getElementById("email").value.trim();
        const password = document.getElementById("password").value.trim();
        const errorMessage = document.getElementById("errorMessage");

        errorMessage.innerText = "";

        if (email === "" || password === "") {
            errorMessage.innerText = "Please enter email and password.";
            return;
        }

        const users = migrateOldSingleUser();

        const user = users.find(function (u) {
            return u.email === email && u.password === password;
        });

        if (!user) {
            errorMessage.innerText = "Invalid email or password.";
            return;
        }

        localStorage.setItem("isLoggedIn", "true");

        localStorage.setItem("currentUserEmail", user.email);
        localStorage.setItem("currentUserName", user.name);
        localStorage.setItem("currentMemberSince", user.memberSince || "May 2026");

        localStorage.setItem("userName", user.name);
        localStorage.setItem("userEmail", user.email);
        localStorage.setItem("userPassword", user.password);
        localStorage.setItem("memberSince", user.memberSince || "May 2026");

        if (user.email === "admin@studyflow.com") {
            localStorage.setItem("isAdminLoggedIn", "true");
            window.location.href = "AdminResources.aspx";
        } else {
            localStorage.removeItem("isAdminLoggedIn");
            window.location.href = "Dashboard.aspx";
        }
    }

    document.addEventListener("DOMContentLoaded", function () {
        const emailBox = document.getElementById("email");
        const passwordBox = document.getElementById("password");

        function handleEnter(event) {
            if (event.key === "Enter") {
                loginUser();
            }
        }

        emailBox.addEventListener("keydown", handleEnter);
        passwordBox.addEventListener("keydown", handleEnter);
    });
</script>

</body>
</html>