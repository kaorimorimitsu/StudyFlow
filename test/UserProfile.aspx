<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Profile Settings</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page {
            width: 92%;
            min-height: 720px;
            margin: 20px auto;
            background-color: #f8fafc;
        }

        .topbar {
            height: 58px;
            background-color: white;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 28px;
        }

        .logo {
            color: #2563eb;
            font-size: 18px;
            font-weight: bold;
        }

        .top-right {
            font-size: 12px;
            color: #374151;
        }

        .top-right a {
            color: #2563eb;
            text-decoration: none;
            font-weight: bold;
            margin-left: 22px;
        }

        .layout {
            display: flex;
            min-height: 660px;
        }

        .sidebar {
            width: 220px;
            background-color: white;
            border-right: 1px solid #e5e7eb;
            padding: 18px;
        }

        .menu-item {
            display: block;
            padding: 13px 14px;
            margin-bottom: 8px;
            border-radius: 7px;
            color: #374151;
            text-decoration: none;
            font-size: 13px;
            font-weight: 600;
        }

        .menu-item span {
            margin-right: 10px;
        }

        .menu-item.active {
            background-color: #eef4ff;
            color: #2563eb;
        }

        .main {
            flex: 1;
            padding: 35px 70px;
        }

        .main h1 {
            margin: 0 0 28px 0;
            font-size: 26px;
            color: #111827;
        }

        .profile-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 32px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .profile-header {
            display: flex;
            align-items: center;
            gap: 24px;
            padding-bottom: 26px;
            border-bottom: 1px solid #e5e7eb;
            margin-bottom: 26px;
        }

        .avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background-color: #2563eb;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 28px;
            font-weight: bold;
        }

        .profile-name {
            font-size: 22px;
            font-weight: 800;
            color: #111827;
            margin-bottom: 6px;
        }

        .profile-email {
            color: #374151;
            font-size: 13px;
            margin-bottom: 6px;
        }

        .profile-small {
            color: #6b7280;
            font-size: 12px;
        }

        .section-title {
            font-size: 16px;
            font-weight: 800;
            color: #111827;
            margin: 0 0 18px 0;
        }

        .label {
            display: block;
            color: #374151;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 7px;
        }

        .textbox-wrap {
            position: relative;
            margin-bottom: 18px;
        }

        .field-icon {
            position: absolute;
            left: 14px;
            top: 12px;
            color: #9ca3af;
            font-size: 15px;
        }

        .textbox {
            width: 100%;
            height: 42px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            padding-left: 42px;
            box-sizing: border-box;
            color: #111827;
            background-color: white;
            font-weight: 600;
        }

        .separator {
            height: 1px;
            background-color: #e5e7eb;
            margin: 26px 0;
        }

        .button-row {
            text-align: right;
            margin-top: 28px;
        }

        .update-btn {
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 13px 20px;
            font-size: 13px;
            font-weight: bold;
            cursor: pointer;
        }

        .security-card {
            background-color: #eef6ff;
            border: 1px solid #dbeafe;
            border-radius: 10px;
            padding: 20px 24px;
            margin-top: 24px;
        }

        .security-card h2 {
            margin: 0 0 8px 0;
            color: #1d4ed8;
            font-size: 15px;
        }

        .security-card p {
            margin: 0;
            color: #2563eb;
            font-size: 12px;
            font-weight: 600;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="page">

        <div class="topbar">
            <div class="logo">StudyFlow</div>
            <div class="top-right">
                Welcome, User
                <a href="Default.aspx">Logout</a>
            </div>
        </div>

        <div class="layout">

            <div class="sidebar">
                <a class="menu-item" href="Dashboard.aspx">
                    <span>▦</span> Dashboard
                </a>

                <a class="menu-item" href="SavedResources.aspx">
                    <span>▣</span> Saved Resources
                </a>

                <a class="menu-item" href="StudyPlans.aspx">
                    <span>▤</span> Study Plans
                </a>

                <a class="menu-item" href="Progress.aspx">
                    <span>⌁</span> Progress
                </a>

                <a class="menu-item" href="DailyStreak.aspx">
                    <span>♨</span> Daily Streak
                </a>

                <a class="menu-item active" href="UserProfile.aspx">
                    <span>♙</span> Profile
                </a>
            </div>

            <div class="main">

                <h1>Profile Settings</h1>

                <div class="profile-card">

                    <div class="profile-header">
                        <div class="avatar">AJ</div>

                        <div>
                            <div class="profile-name">Alex Johnson</div>
                            <div class="profile-email">alex.johnson@example.com</div>
                            <div class="profile-small">Member since March 2024</div>
                        </div>
                    </div>

                    <h2 class="section-title">Personal Information</h2>

                    <label class="label">Full Name</label>
                    <div class="textbox-wrap">
                        <span class="field-icon">♙</span>
                        <asp:TextBox ID="txtFullName" runat="server"
                            CssClass="textbox"
                            Text="Alex Johnson">
                        </asp:TextBox>
                    </div>

                    <label class="label">Email Address</label>
                    <div class="textbox-wrap">
                        <span class="field-icon">✉</span>
                        <asp:TextBox ID="txtEmail" runat="server"
                            CssClass="textbox"
                            Text="alex.johnson@example.com">
                        </asp:TextBox>
                    </div>

                    <div class="separator"></div>

                    <h2 class="section-title">Change Password</h2>

                    <label class="label">Current Password</label>
                    <div class="textbox-wrap">
                        <span class="field-icon">▢</span>
                        <asp:TextBox ID="txtCurrentPassword" runat="server"
                            CssClass="textbox"
                            TextMode="Password"
                            placeholder="Enter current password">
                        </asp:TextBox>
                    </div>

                    <label class="label">New Password</label>
                    <div class="textbox-wrap">
                        <span class="field-icon">▢</span>
                        <asp:TextBox ID="txtNewPassword" runat="server"
                            CssClass="textbox"
                            TextMode="Password"
                            placeholder="Enter new password">
                        </asp:TextBox>
                    </div>

                    <label class="label">Confirm New Password</label>
                    <div class="textbox-wrap">
                        <span class="field-icon">▢</span>
                        <asp:TextBox ID="txtConfirmPassword" runat="server"
                            CssClass="textbox"
                            TextMode="Password"
                            placeholder="Confirm new password">
                        </asp:TextBox>
                    </div>

                    <div class="button-row">
                        <asp:Button ID="btnUpdateProfile" runat="server"
                            Text="▣  Update Profile"
                            CssClass="update-btn" />
                    </div>

                </div>

                <div class="security-card">
                    <h2>Account Security</h2>
                    <p>Keep your account secure by using a strong password and updating it regularly. Never share your password with anyone.</p>
                </div>

            </div>

        </div>

    </div>

</form>
</body>
</html>