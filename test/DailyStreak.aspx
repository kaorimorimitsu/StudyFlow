<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DailyStreak.aspx.cs" Inherits="DailyStreak" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Daily Streak</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page {
            width: 92%;
            min-height: 760px;
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
            min-height: 700px;
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
            padding: 30px 34px;
        }

        .main h1 {
            margin: 0 0 8px 0;
            font-size: 26px;
            color: #111827;
        }

        .subtitle {
            margin: 0 0 28px 0;
            color: #4b5563;
            font-size: 13px;
        }

        .streak-hero {
            background: linear-gradient(135deg, #ff6a00, #ff4b00);
            border-radius: 12px;
            padding: 34px;
            color: white;
            box-shadow: 0 8px 16px rgba(255, 92, 0, 0.25);
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 28px;
        }

        .hero-label {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .hero-number {
            font-size: 50px;
            font-weight: 900;
            line-height: 1;
        }

        .hero-days {
            font-size: 22px;
            font-weight: bold;
            margin-left: 8px;
        }

        .hero-text {
            margin-top: 18px;
            font-size: 14px;
            font-weight: bold;
        }

        .hero-fire {
            width: 105px;
            height: 105px;
            border-radius: 50%;
            background-color: rgba(255,255,255,0.22);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 48px;
        }

        .card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 12px;
            padding: 26px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
            margin-bottom: 26px;
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 22px;
        }

        .card-title {
            font-size: 17px;
            font-weight: 800;
            color: #111827;
        }

        .legend {
            font-size: 12px;
            color: #6b7280;
        }

        .legend span {
            margin-left: 18px;
        }

        .legend .green-dot,
        .legend .gray-dot {
            display: inline-block;
            width: 11px;
            height: 11px;
            border-radius: 3px;
            margin-right: 6px;
            vertical-align: middle;
        }

        .green-dot {
            background-color: #22c55e;
        }

        .gray-dot {
            background-color: #e5e7eb;
        }

        .days-row {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 14px;
            margin-bottom: 20px;
        }

        .day-box {
            position: relative;
            background-color: #f9fafb;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            min-height: 115px;
            text-align: center;
            padding-top: 16px;
        }

        .day-box.done {
            background-color: #f0fdf4;
            border: 2px solid #22c55e;
        }

        .day-box.today {
            background-color: #eff6ff;
            border: 2px solid #3b82f6;
        }

        .today-badge {
            position: absolute;
            top: -12px;
            right: 8px;
            background-color: #2563eb;
            color: white;
            font-size: 10px;
            font-weight: bold;
            border-radius: 10px;
            padding: 3px 8px;
        }

        .day-name {
            font-size: 11px;
            color: #374151;
            font-weight: bold;
        }

        .day-num {
            font-size: 24px;
            font-weight: 900;
            color: #111827;
            margin: 6px 0 8px 0;
        }

        .circle {
            width: 34px;
            height: 34px;
            border-radius: 50%;
            margin: 0 auto 8px auto;
            background-color: #d1d5db;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }

        .circle.done {
            background-color: #22c55e;
        }

        .month {
            font-size: 10px;
            color: #6b7280;
        }

        .completion {
            background-color: #f9fafb;
            border-radius: 8px;
            padding: 14px 16px;
            display: flex;
            justify-content: space-between;
            font-size: 14px;
            font-weight: 800;
            color: #374151;
        }

        .completion strong {
            font-size: 26px;
            color: #111827;
        }

        .progress-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 22px;
        }

        .progress-title-left {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .small-icon {
            width: 34px;
            height: 34px;
            border-radius: 8px;
            background-color: #dbeafe;
            color: #2563eb;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }

        .status-pill {
            background-color: #fef3c7;
            color: #d97706;
            font-size: 12px;
            font-weight: bold;
            padding: 7px 13px;
            border-radius: 99px;
        }

        .goal-row {
            display: flex;
            justify-content: space-between;
            font-size: 13px;
            font-weight: bold;
            color: #374151;
            margin-bottom: 10px;
        }

        .bar-bg {
            width: 100%;
            height: 11px;
            background-color: #f1f5f9;
            border-radius: 99px;
            overflow: hidden;
            margin-bottom: 8px;
        }

        .bar {
            width: 75%;
            height: 100%;
            background: linear-gradient(90deg, #3b82f6, #22c55e);
            border-radius: 99px;
        }

        .task-title {
            margin: 24px 0 12px 0;
            font-size: 15px;
            font-weight: 800;
            color: #111827;
        }

        .task {
            border-radius: 8px;
            padding: 13px 15px;
            margin-bottom: 10px;
            font-size: 13px;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .task.done {
            background-color: #ecfdf5;
            border: 1px solid #86efac;
            color: #374151;
            text-decoration: line-through;
        }

        .task.todo {
            background-color: #f9fafb;
            border: 1px solid #e5e7eb;
            color: #374151;
        }

        .task-check {
            width: 21px;
            height: 21px;
            border-radius: 50%;
            background-color: #22c55e;
            color: white;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            font-size: 12px;
        }

        .task-empty {
            width: 21px;
            height: 21px;
            border-radius: 50%;
            background-color: #e5e7eb;
            display: inline-block;
        }

        .bottom-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .stat-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 22px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .stat-top {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 14px;
            font-weight: 800;
            color: #111827;
            margin-bottom: 18px;
        }

        .stat-icon {
            width: 32px;
            height: 32px;
            border-radius: 8px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .orange {
            background-color: #fff7ed;
            color: #f97316;
        }

        .mint {
            background-color: #dcfce7;
            color: #22c55e;
        }

        .lightblue {
            background-color: #dbeafe;
            color: #2563eb;
        }

        .stat-number {
            font-size: 25px;
            font-weight: 900;
            color: #111827;
            margin-bottom: 4px;
        }

        .stat-sub {
            font-size: 12px;
            color: #6b7280;
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

                <a class="menu-item active" href="DailyStreak.aspx">
                    <span>♨</span> Daily Streak
                </a>

                <a class="menu-item" href="UserProfile.aspx">
                    <span>♙</span> Profile
                </a>
            </div>

            <div class="main">

                <h1>Daily Streak</h1>
                <p class="subtitle">Track your learning consistency and build lasting habits</p>

                <div class="streak-hero">
                    <div>
                        <div class="hero-label">♨ &nbsp; Current Streak</div>
                        <div>
                            <span class="hero-number">5</span>
                            <span class="hero-days">days</span>
                        </div>
                        <div class="hero-text">Keep it going! You're on fire! 🔥</div>
                    </div>

                    <div class="hero-fire">♨</div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <div class="card-title">Last 7 Days</div>
                        <div class="legend">
                            <span><i class="green-dot"></i>Completed</span>
                            <span><i class="gray-dot"></i>Missed</span>
                        </div>
                    </div>

                    <div class="days-row">
                        <div class="day-box">
                            <div class="day-name">Sat</div>
                            <div class="day-num">14</div>
                            <div class="circle">•</div>
                            <div class="month">Mar</div>
                        </div>

                        <div class="day-box">
                            <div class="day-name">Sun</div>
                            <div class="day-num">15</div>
                            <div class="circle">•</div>
                            <div class="month">Mar</div>
                        </div>

                        <div class="day-box done">
                            <div class="day-name">Mon</div>
                            <div class="day-num">16</div>
                            <div class="circle done">✓</div>
                            <div class="month">Mar</div>
                        </div>

                        <div class="day-box done">
                            <div class="day-name">Tue</div>
                            <div class="day-num">17</div>
                            <div class="circle done">✓</div>
                            <div class="month">Mar</div>
                        </div>

                        <div class="day-box">
                            <div class="day-name">Wed</div>
                            <div class="day-num">18</div>
                            <div class="circle">•</div>
                            <div class="month">Mar</div>
                        </div>

                        <div class="day-box done">
                            <div class="day-name">Thu</div>
                            <div class="day-num">19</div>
                            <div class="circle done">✓</div>
                            <div class="month">Mar</div>
                        </div>

                        <div class="day-box today">
                            <span class="today-badge">Today</span>
                            <div class="day-name">Fri</div>
                            <div class="day-num">20</div>
                            <div class="circle">•</div>
                            <div class="month">Mar</div>
                        </div>
                    </div>

                    <div class="completion">
                        <span>This week's completion</span>
                        <strong>3/7</strong>
                    </div>
                </div>

                <div class="card">
                    <div class="progress-header">
                        <div class="progress-title-left">
                            <div class="small-icon">◎</div>
                            <div class="card-title">Today's Progress</div>
                        </div>

                        <div class="status-pill">In Progress</div>
                    </div>

                    <div class="goal-row">
                        <span>Study Goal Completion</span>
                        <span>75%</span>
                    </div>

                    <div class="bar-bg">
                        <div class="bar"></div>
                    </div>

                    <div style="font-size:12px; color:#6b7280; font-weight:600;">
                        3 of 4 tasks completed
                    </div>

                    <div class="task-title">Today's Tasks</div>

                    <div class="task done">
                        <span class="task-check">✓</span>
                        Complete JavaScript lesson
                    </div>

                    <div class="task done">
                        <span class="task-check">✓</span>
                        Practice coding challenges
                    </div>

                    <div class="task done">
                        <span class="task-check">✓</span>
                        Read documentation
                    </div>

                    <div class="task todo">
                        <span class="task-empty"></span>
                        Work on personal project
                    </div>
                </div>

                <div class="bottom-stats">
                    <div class="stat-card">
                        <div class="stat-top">
                            <div class="stat-icon orange">♨</div>
                            Best Streak
                        </div>
                        <div class="stat-number">12 days</div>
                        <div class="stat-sub">Your personal record</div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-top">
                            <div class="stat-icon mint">▣</div>
                            Total Days
                        </div>
                        <div class="stat-number">48 days</div>
                        <div class="stat-sub">Days you've studied</div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-top">
                            <div class="stat-icon lightblue">↗</div>
                            Consistency
                        </div>
                        <div class="stat-number">89%</div>
                        <div class="stat-sub">This month's rate</div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</form>
</body>
</html>