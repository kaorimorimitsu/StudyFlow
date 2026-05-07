<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudyPlans.aspx.cs" Inherits="StudyPlans" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Study Plans</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page {
            width: 92%;
            min-height: 620px;
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

        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
        }

        .page-header h1 {
            margin: 0;
            font-size: 26px;
            color: #111827;
        }

        .create-btn {
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 13px 18px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
        }

        .table-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #ffffff;
            color: #111827;
            font-size: 12px;
            text-align: left;
            padding: 18px 20px;
            border-bottom: 1px solid #e5e7eb;
        }

        td {
            color: #374151;
            font-size: 13px;
            padding: 17px 20px;
            border-bottom: 1px solid #e5e7eb;
            vertical-align: middle;
        }

        tr:last-child td {
            border-bottom: none;
        }

        .title-cell {
            color: #111827;
            font-weight: bold;
        }

        .progress-wrap {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .dot {
            width: 8px;
            height: 8px;
            background-color: #2563eb;
            border-radius: 50%;
            display: inline-block;
        }

        .status {
            display: inline-block;
            padding: 5px 8px;
            border-radius: 8px;
            font-size: 11px;
            font-weight: bold;
            line-height: 1.1;
        }

        .status-blue {
            background-color: #dbeafe;
            color: #2563eb;
        }

        .status-green {
            background-color: #dcfce7;
            color: #16a34a;
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

                <a class="menu-item active" href="StudyPlans.aspx">
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

            <div class="main">

                <div class="page-header">
                    <h1>Study Plans</h1>

                    <asp:Button ID="btnCreatePlan" runat="server"
                        Text="+ Create New Plan"
                        CssClass="create-btn" />
                </div>

                <div class="table-card">
                    <table>
                        <tr>
                            <th style="width:22%;">Title</th>
                            <th style="width:30%;">Goal</th>
                            <th style="width:24%;">Duration</th>
                            <th style="width:12%;">Progress</th>
                            <th style="width:12%;">Status</th>
                        </tr>

                        <tr>
                            <td class="title-cell">JavaScript Mastery</td>
                            <td>Complete JavaScript<br />fundamentals</td>
                            <td>2026-03-01 to 2026-04-15</td>
                            <td>
                                <div class="progress-wrap">
                                    <span class="dot"></span>
                                    <span>66%</span>
                                </div>
                            </td>
                            <td>
                                <span class="status status-blue">In<br />Progress</span>
                            </td>
                        </tr>

                        <tr>
                            <td class="title-cell">React Development</td>
                            <td>Build 5 React projects</td>
                            <td>2026-03-10 to 2026-05-01</td>
                            <td>
                                <div class="progress-wrap">
                                    <span class="dot"></span>
                                    <span>40%</span>
                                </div>
                            </td>
                            <td>
                                <span class="status status-blue">In<br />Progress</span>
                            </td>
                        </tr>

                        <tr>
                            <td class="title-cell">Database<br />Fundamentals</td>
                            <td>Learn SQL and NoSQL databases</td>
                            <td>2026-02-15 to 2026-03-20</td>
                            <td>
                                <div class="progress-wrap">
                                    <span class="dot"></span>
                                    <span>100%</span>
                                </div>
                            </td>
                            <td>
                                <span class="status status-green">Completed</span>
                            </td>
                        </tr>

                        <tr>
                            <td class="title-cell">UI/UX Design Basics</td>
                            <td>Design 10 landing pages</td>
                            <td>2026-03-20 to 2026-04-30</td>
                            <td>
                                <div class="progress-wrap">
                                    <span class="dot"></span>
                                    <span>20%</span>
                                </div>
                            </td>
                            <td>
                                <span class="status status-blue">In<br />Progress</span>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

        </div>

    </div>

</form>
</body>
</html>