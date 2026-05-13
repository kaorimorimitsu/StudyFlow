<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>StudyFlow Home</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page {
            width: 92%;
            min-height: 620px;
            margin: 28px auto;
            background-color: white;
        }

        .topbar {
            height: 55px;
            background-color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 32px;
            border-bottom: 1px solid #eef2f7;
        }

        .logo {
            color: #2563eb;
            font-size: 16px;
            font-weight: bold;
        }

        .nav a {
            color: #111827;
            text-decoration: none;
            font-size: 12px;
            margin-left: 24px;
        }

        .hero {
            text-align: center;
            padding: 78px 20px 100px 20px;
            background: linear-gradient(#f4f8ff, #ffffff);
        }

        .hero h1 {
            margin: 0 0 14px 0;
            color: #111827;
            font-size: 34px;
            font-weight: 900;
        }

        .hero p {
            color: #4b5563;
            font-size: 14px;
            line-height: 1.5;
            margin: 0 0 28px 0;
        }

        .start-btn {
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 13px 24px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 5px 12px rgba(37, 99, 235, 0.35);
        }

        .features {
            background-color: white;
            padding: 34px 38px 38px 38px;
        }

        .features h2 {
            text-align: center;
            color: #111827;
            font-size: 19px;
            margin: 0 0 34px 0;
            font-weight: 900;
        }

        .feature-row {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 24px;
        }

        .feature-card {
            background-color: white;
            border: 1px solid #dbe1ea;
            border-radius: 8px;
            padding: 24px;
            min-height: 118px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .icon-box {
            width: 34px;
            height: 34px;
            background-color: #eff6ff;
            color: #2563eb;
            border-radius: 7px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 17px;
            font-size: 15px;
            font-weight: bold;
        }

        .feature-card h3 {
            margin: 0 0 8px 0;
            color: #111827;
            font-size: 14px;
            font-weight: 900;
        }

        .feature-card p {
            margin: 0;
            color: #4b5563;
            font-size: 11px;
            line-height: 1.45;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="page">

        <div class="topbar">
            <div class="logo">StudyFlow</div>

            <div class="nav">
                <a href="Default.aspx">Home</a>
                <a href="Resources.aspx">Resources</a>
                <a href="About.aspx">About</a>
                <a href="Login.aspx">Login</a>
                <a href="AdminLogin.aspx">Admin</a>
            </div>
        </div>

        <div class="hero">
            <h1>Study Smarter, Not Harder</h1>

            <p>
                The ultimate platform for organizing your learning resources and creating<br />
                effective study plans
            </p>

            <asp:Button ID="btnGetStarted" runat="server"
                Text="Get Started"
                CssClass="start-btn"
                OnClick="btnGetStarted_Click" />
        </div>

        <div class="features">
            <h2>Everything You Need to Succeed</h2>

            <div class="feature-row">

                <div class="feature-card">
                    <div class="icon-box">↗</div>
                    <h3>Track Progress</h3>
                    <p>Monitor your learning journey with detailed analytics and progress tracking.</p>
                </div>

                <div class="feature-card">
                    <div class="icon-box">▣</div>
                    <h3>Save Resources</h3>
                    <p>Organize and bookmark your favorite learning materials in one place.</p>
                </div>

                <div class="feature-card">
                    <div class="icon-box">▤</div>
                    <h3>Plan Study</h3>
                    <p>Create personalized study plans and stick to your learning schedule.</p>
                </div>

            </div>
        </div>

    </div>

</form>
</body>
</html>