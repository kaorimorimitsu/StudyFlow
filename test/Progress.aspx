<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Progress.aspx.cs" Inherits="Progress" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Progress Tracker</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page {
            width: 92%;
            min-height: 620px;
            margin: 22px auto;
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
            min-height: 560px;
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
            padding: 30px 28px;
        }

        .main h1 {
            margin: 0 0 24px 0;
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
            background-color: white;
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
            font-weight: 600;
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
            justify-content: center;
            align-items: center;
            font-size: 17px;
        }

        .icon-box.orange {
            background-color: #fff7ed;
            color: #f97316;
        }

        .card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 22px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
            margin-bottom: 25px;
        }

        .card h2 {
            margin: 0 0 20px 0;
            color: #111827;
            font-size: 17px;
        }

        .progress-item {
            margin-bottom: 22px;
        }

        .progress-title-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 4px;
        }

        .progress-title {
            font-size: 13px;
            color: #111827;
            font-weight: 800;
        }

        .progress-percent {
            font-size: 12px;
            color: #111827;
            font-weight: 800;
        }

        .progress-sub {
            font-size: 11px;
            color: #6b7280;
            margin-bottom: 9px;
        }

        .bar-bg {
            width: 100%;
            height: 9px;
            background-color: #f1f5f9;
            border-radius: 99px;
            overflow: hidden;
        }

        .bar {
            height: 100%;
            border-radius: 99px;
        }

        .green {
            background-color: #22c55e;
        }

        .blue {
            background-color: #3b82f6;
        }

        .yellow {
            background-color: #f5b400;
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
            border-radius: 7px;
            margin-right: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 13px;
            font-weight: bold;
        }

        .activity-icon.done {
            background-color: #d1fae5;
            color: #10b981;
        }

        .activity-icon.info {
            background-color: #dbeafe;
            color: #2563eb;
        }

        .activity-title {
            font-size: 13px;
            color: #111827;
            font-weight: 800;
        }

        .activity-sub {
            font-size: 11px;
            color: #6b7280;
            margin-top: 4px;
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

                <a class="menu-item" href="Resources.aspx">
                    <span>▣</span> Saved Resources
                </a>

                <a class="menu-item" href="StudyPlans.aspx">
                    <span>▤</span> Study Plans
                </a>

                <a class="menu-item active" href="Progress.aspx">
                    <span>⌁</span> Progress
                </a>

                <a class="menu-item" href="DailyStreak.aspx">
                    <span>♨</span> Daily Streak
                </a>

                <a class="menu-item" href="UserProfile.aspx">
                    <span>♙</span> Profile
                </a>
            </div>

            <div class="main">

                <h1>Progress Tracker</h1>

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
                            <div class="stat-label">Completed</div>
                            <div class="stat-number">68%</div>
                        </div>
                        <div class="icon-box">↗</div>
                    </div>

                    <div class="stat-card">
                        <div>
                            <div class="stat-label">Study Streak</div>
                            <div class="stat-number">7 days</div>
                        </div>
                        <div class="icon-box orange">🔥</div>
                    </div>
                </div>

                <div class="card">
                    <h2>Study Plans Progress</h2>

                    <div class="progress-item">
                        <div class="progress-title-row">
                            <div class="progress-title">JavaScript Fundamentals</div>
                            <div class="progress-percent">85%</div>
                        </div>
                        <div class="progress-sub">17 of 20 tasks completed · Programming</div>
                        <div class="bar-bg">
                            <div class="bar green" style="width:85%;"></div>
                        </div>
                    </div>

                    <div class="progress-item">
                        <div class="progress-title-row">
                            <div class="progress-title">React Development</div>
                            <div class="progress-percent">60%</div>
                        </div>
                        <div class="progress-sub">9 of 15 tasks completed · Framework</div>
                        <div class="bar-bg">
                            <div class="bar blue" style="width:60%;"></div>
                        </div>
                    </div>

                    <div class="progress-item">
                        <div class="progress-title-row">
                            <div class="progress-title">Database Design</div>
                            <div class="progress-percent">45%</div>
                        </div>
                        <div class="progress-sub">5 of 12 tasks completed · Backend</div>
                        <div class="bar-bg">
                            <div class="bar yellow" style="width:45%;"></div>
                        </div>
                    </div>

                    <div class="progress-item">
                        <div class="progress-title-row">
                            <div class="progress-title">UI/UX Principles</div>
                            <div class="progress-percent">92%</div>
                        </div>
                        <div class="progress-sub">9 of 10 tasks completed · Design</div>
                        <div class="bar-bg">
                            <div class="bar green" style="width:92%;"></div>
                        </div>
                    </div>

                    <div class="progress-item" style="margin-bottom:0;">
                        <div class="progress-title-row">
                            <div class="progress-title">Node.js Backend</div>
                            <div class="progress-percent">30%</div>
                        </div>
                        <div class="progress-sub">5 of 18 tasks completed · Backend</div>
                        <div class="bar-bg">
                            <div class="bar yellow" style="width:30%;"></div>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <h2>Recent Activity</h2>

                    <div class="activity-item">
                        <div class="activity-icon done">✓</div>
                        <div>
                            <div class="activity-title">Completed task</div>
                            <div class="activity-sub">Finished 'Async/Await in JavaScript'<br />JavaScript Fundamentals · 2 hours ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon info">ⓘ</div>
                        <div>
                            <div class="activity-title">Started task</div>
                            <div class="activity-sub">Working on 'React Hooks Deep Dive'<br />React Development · 5 hours ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon done">✓</div>
                        <div>
                            <div class="activity-title">Completed task</div>
                            <div class="activity-sub">Finished 'SQL Query Optimization'<br />Database Design · 1 day ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon info">ⓘ</div>
                        <div>
                            <div class="activity-title">Updated plan</div>
                            <div class="activity-sub">Modified timeline for Node.js Backend<br />Node.js Backend · 2 days ago</div>
                        </div>
                    </div>

                    <div class="activity-item">
                        <div class="activity-icon done">✓</div>
                        <div>
                            <div class="activity-title">Completed task</div>
                            <div class="activity-sub">Finished 'Color Theory Basics'<br />UI/UX Principles · 3 days ago</div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>

</form>
</body>
</html>