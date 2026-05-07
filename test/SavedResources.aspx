<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Saved Resources</title>

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

        .menu-item.active {
            background-color: #eef4ff;
            color: #2563eb;
        }

        .main {
            flex: 1;
            padding: 30px 28px;
        }

        h1 {
            font-size: 26px;
            margin-bottom: 22px;
        }

        .search {
            width: 100%;
            height: 40px;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            padding-left: 14px;
            box-sizing: border-box;
            margin-bottom: 22px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .tag {
            display: inline-block;
            background-color: #eef4ff;
            color: #2563eb;
            font-size: 11px;
            font-weight: bold;
            padding: 5px 8px;
            border-radius: 8px;
            margin-bottom: 14px;
        }

        .card h3 {
            margin: 0 0 10px 0;
            font-size: 15px;
        }

        .card p {
            font-size: 12px;
            color: #4b5563;
            line-height: 1.45;
        }

        .saved {
            color: #16a34a;
            font-size: 12px;
            font-weight: bold;
            margin-top: 12px;
        }
    </style>
</head>

<body>

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
            <a class="menu-item" href="Dashboard.aspx">▦ Dashboard</a>
            <a class="menu-item active" href="SavedResources.aspx">▣ Saved Resources</a>
            <a class="menu-item" href="StudyPlans.aspx">▤ Study Plans</a>
            <a class="menu-item" href="Progress.aspx">⌁ Progress</a>
            <a class="menu-item" href="DailyStreak.aspx">♨ Daily Streak</a>
            <a class="menu-item" href="UserProfile.aspx">♙ Profile</a>
        </div>

        <div class="main">
            <h1>Saved Resources</h1>

            <input class="search" type="text" placeholder="Search saved resources..." />

            <div class="grid">

                <div class="card">
                    <span class="tag">Programming</span>
                    <h3>JavaScript Complete Guide</h3>
                    <p>Comprehensive JavaScript tutorial covering basics to advanced concepts.</p>
                    <div class="saved">Saved</div>
                </div>

                <div class="card">
                    <span class="tag">Design</span>
                    <h3>UI/UX Design Principles</h3>
                    <p>Learn the fundamentals of user interface and experience design.</p>
                    <div class="saved">Saved</div>
                </div>

                <div class="card">
                    <span class="tag">Programming</span>
                    <h3>Python Data Science</h3>
                    <p>Complete Python course focused on data science and machine learning.</p>
                    <div class="saved">Saved</div>
                </div>

            </div>
        </div>

    </div>

</div>

</body>
</html>