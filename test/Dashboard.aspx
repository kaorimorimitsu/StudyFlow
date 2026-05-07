<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Dashboard</title>

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
            background-color: #f8fafc;
        }

        .topbar {
            height: 58px;
            background-color: #ffffff;
            border-bottom: 1px solid #e5e7eb;
            display: flex;
            align-items: center;
            justify-content: space-between;
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
            margin-left: 22px;
            font-weight: bold;
        }

        .layout {
            display: flex;
            min-height: 560px;
        }

        .sidebar {
            width: 220px;
            background-color: #ffffff;
            border-right: 1px solid #e5e7eb;
            padding: 18px 18px;
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
            padding: 30px 28px;
        }

        .main h1 {
            margin: 0 0 25px 0;
            font-size: 26px;
            color: #111827;
        }

        .stats {
            display: flex;
            gap: 22px;
            margin-bottom: 25px;
        }

        .stat-card {
            flex: 1;
            background-color: #ffffff;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 18px 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .stat-label {
            font-size: 12px;
            color: #6b7280;
            margin-bottom: 8px;
        }

        .stat-number {
            font-size: 28px;
            font-weight: 800;
            color: #111827;
        }

        .icon-box {
            width: 38px;
            height: 38px;
            background-color: #eff6ff;
            color: #2563eb;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 17px;
        }

        .activity-card {
            background-color: #ffffff;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 22px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .activity-card h2 {
            margin: 0 0 18px 0;
            font-size: 17px;
            color: #111827;
        }

        .activity-item {
            background-color: #f9fafb;
            border-radius: 8px;
            padding: 14px 15px;
            margin-bottom: 12px;
            display: flex;
            align-items: center;
        }

        .activity-icon {
            width: 28px;
            height: 28px;
            background-color: #dbeafe;
            color: #2563eb;
            border-radius: 7px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 14px;
            font-size: 13px;
        }

        .activity-title {
            font-size: 13px;
            font-weight: bold;
            color: #111827;
        }

        .activity-time {
            font-size: 11px;
            color: #6b7280;
            margin-top: 3px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <div class="page">

        <!-- Top Bar -->
        <div class="topbar">
            <div class="logo">StudyFlow</div>

            <div class="top-right">
                Welcome, User
                <a href="Default.aspx">Logout</a>
            </div>
        </div>

        <div class="layout">

            <!-- Sidebar -->
            <div class="sidebar">
                <a class="menu-item active" href="Dashboard.aspx">
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

                <a class="menu-item" href="UserProfile.aspx">
                    <span>♙</span> Profile
                </a>
            </div>

            <!-- Main Content -->
            <div class="main">

                <h1>Dashboard</h1>

                <!-- Stats -->
                <div class="stats">

                    <div class="stat-card">
                        <div>
                            <div class="stat-label">Total Plans</div>
                            <div class="stat-number">12</div>
                        </div>
                        <div class="icon-box">📅</div>
                    </div>

                    <div class="stat-card">
                        <div>
                            <div class="stat-label">Saved Resources</div>
                            <div class="stat-number">48</div>
                        </div>
                        <div class="icon-box">💾</div>
                    </div>

                    <div class="stat-card">
                        <div>
                            <div class="stat-label">Progress</div>
                            <div class="stat-number">78%</div>
                        </div>
                        <div class="icon-box">↗</div>
                    </div>

                </div>

                <!-- Recent Activity -->
                <div class="activity-card">
                    <h2>Recent Activity</h2>

                    <div class="activity-item">
                        <div class="activity-icon">ⓘ</div>
                        <div>
                            <div class="activity-title">Completed JavaScript Basics Study Plan</div>
                            <div class="activity-time">2 hours ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon">ⓘ</div>
                        <div>
                            <div class="activity-title">Saved React Documentation</div>
                            <div class="activity-time">5 hours ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon">ⓘ</div>
                        <div>
                            <div class="activity-title">Created Web Development Roadmap</div>
                            <div class="activity-time">1 day ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon">ⓘ</div>
                        <div>
                            <div class="activity-title">Updated Database Fundamentals Plan</div>
                            <div class="activity-time">2 days ago</div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>

</form>
</body>
</html>