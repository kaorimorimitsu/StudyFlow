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
            display: inline-block;
            width: 20px;
            text-align: center;
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

        .status-pill.completed {
            background-color: #dcfce7;
            color: #16a34a;
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
            width: 0%;
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
            cursor: pointer;
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
                            <span class="hero-number" id="currentStreak">0</span>
                            <span class="hero-days">days</span>
                        </div>
                        <div class="hero-text" id="heroMessage">Complete today's tasks to build your streak 🔥</div>
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

                    <div class="days-row" id="last7Days"></div>

                    <div class="completion">
                        <span>This week's completion</span>
                        <strong id="weeklyCompletion">0/7</strong>
                    </div>
                </div>

                <div class="card">
                    <div class="progress-header">
                        <div class="progress-title-left">
                            <div class="small-icon">◎</div>
                            <div class="card-title">Today's Progress</div>
                        </div>

                        <div class="status-pill" id="progressStatus">In Progress</div>
                    </div>

                    <div class="goal-row">
                        <span>Study Goal Completion</span>
                        <span id="todayPercent">0%</span>
                    </div>

                    <div class="bar-bg">
                        <div class="bar" id="todayBar"></div>
                    </div>

                    <div style="font-size:12px; color:#6b7280; font-weight:600;" id="taskSummary">
                        0 of 4 tasks completed
                    </div>

                    <div class="task-title">Today's Tasks</div>
                    <div id="todayTasks"></div>
                </div>

                <div class="bottom-stats">
                    <div class="stat-card">
                        <div class="stat-top">
                            <div class="stat-icon orange">♨</div>
                            Best Streak
                        </div>
                        <div class="stat-number" id="bestStreak">0 days</div>
                        <div class="stat-sub">Your personal record</div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-top">
                            <div class="stat-icon mint">▣</div>
                            Total Days
                        </div>
                        <div class="stat-number" id="totalDays">0 days</div>
                        <div class="stat-sub">Days you've studied</div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-top">
                            <div class="stat-icon lightblue">↗</div>
                            Consistency
                        </div>
                        <div class="stat-number" id="consistency">0%</div>
                        <div class="stat-sub">This month's rate</div>
                    </div>
                </div>

            </div>

        </div>

    </div>

</form>

<script>
    const DEFAULT_TASKS = [
        "Complete JavaScript lesson",
        "Practice coding challenges",
        "Read documentation",
        "Work on personal project"
    ];

    function todayKey() {
        return new Date().toISOString().split("T")[0];
    }

    function getCurrentUserEmail() {
        return localStorage.getItem("currentUserEmail") || localStorage.getItem("userEmail");
    }

    function userKey(baseKey) {
        return baseKey + "_" + getCurrentUserEmail();
    }

    function getTasks() {
        const key = userKey("dailyTasks_" + todayKey());
        const stored = localStorage.getItem(key);

        if (stored) {
            return JSON.parse(stored);
        }

        const tasks = DEFAULT_TASKS.map(text => {
            return { text: text, completed: false };
        });

        localStorage.setItem(key, JSON.stringify(tasks));
        return tasks;
    }

    function saveTasks(tasks) {
        const key = userKey("dailyTasks_" + todayKey());
        localStorage.setItem(key, JSON.stringify(tasks));
    }

    function getStreakDates() {
        const stored = localStorage.getItem(userKey("streakDates"));
        return stored ? JSON.parse(stored) : [];
    }

    function saveStreakDates(dates) {
        localStorage.setItem(userKey("streakDates"), JSON.stringify(dates));
    }

    function toggleTask(index) {
        const tasks = getTasks();
        tasks[index].completed = !tasks[index].completed;
        saveTasks(tasks);
        updateTodayStreakDate();
        renderAll();
    }

    function updateTodayStreakDate() {
        const tasks = getTasks();
        const allCompleted = tasks.every(task => task.completed);

        let dates = getStreakDates();
        const today = todayKey();

        if (allCompleted) {
            if (!dates.includes(today)) {
                dates.push(today);
            }
        } else {
            dates = dates.filter(date => date !== today);
        }

        saveStreakDates(dates);
    }

    function calculateCurrentStreak() {
        const dates = getStreakDates();
        let streak = 0;

        for (let i = 0; ; i++) {
            const date = new Date();
            date.setDate(date.getDate() - i);
            const key = date.toISOString().split("T")[0];

            if (dates.includes(key)) {
                streak++;
            } else {
                break;
            }
        }

        return streak;
    }

    function calculateBestStreak() {
        const dates = getStreakDates().sort();

        if (dates.length === 0) {
            return 0;
        }

        let best = 1;
        let current = 1;

        for (let i = 1; i < dates.length; i++) {
            const previousDate = new Date(dates[i - 1]);
            const currentDate = new Date(dates[i]);

            const difference =
                (currentDate - previousDate) / (1000 * 60 * 60 * 24);

            if (difference === 1) {
                current++;
            } else {
                current = 1;
            }

            if (current > best) {
                best = current;
            }
        }

        return best;
    }

    function renderTasks() {
        const tasks = getTasks();
        const container = document.getElementById("todayTasks");

        container.innerHTML = "";

        tasks.forEach((task, index) => {
            const taskClass = task.completed ? "done" : "todo";
            const icon = task.completed
                ? '<span class="task-check">✓</span>'
                : '<span class="task-empty"></span>';

            container.innerHTML += `
                <div class="task ${taskClass}" onclick="toggleTask(${index})">
                    ${icon}
                    ${task.text}
                </div>
            `;
        });
    }

    function renderProgress() {
        const tasks = getTasks();
        const completed = tasks.filter(task => task.completed).length;
        const percent = Math.round((completed / tasks.length) * 100);

        document.getElementById("todayPercent").innerText = percent + "%";
        document.getElementById("todayBar").style.width = percent + "%";

        document.getElementById("taskSummary").innerText =
            completed + " of " + tasks.length + " tasks completed";

        const status = document.getElementById("progressStatus");

        if (percent === 100) {
            status.innerText = "Completed";
            status.classList.add("completed");
            document.getElementById("heroMessage").innerText =
                "Great job! Today's study goal is completed 🔥";
        } else {
            status.innerText = "In Progress";
            status.classList.remove("completed");
            document.getElementById("heroMessage").innerText =
                "Complete today's tasks to build your streak 🔥";
        }
    }

    function renderLast7Days() {
        const dates = getStreakDates();
        const container = document.getElementById("last7Days");

        container.innerHTML = "";

        let completedCount = 0;

        for (let i = 6; i >= 0; i--) {
            const date = new Date();
            date.setDate(date.getDate() - i);

            const key = date.toISOString().split("T")[0];
            const completed = dates.includes(key);

            if (completed) {
                completedCount++;
            }

            const isToday = i === 0;

            const dayName = date.toLocaleDateString("en-US", {
                weekday: "short"
            });

            const month = date.toLocaleDateString("en-US", {
                month: "short"
            });

            let classes = "day-box";

            if (completed) {
                classes += " done";
            }

            if (isToday) {
                classes += " today";
            }

            container.innerHTML += `
                <div class="${classes}">
                    ${isToday ? '<span class="today-badge">Today</span>' : ''}
                    <div class="day-name">${dayName}</div>
                    <div class="day-num">${date.getDate()}</div>
                    <div class="circle ${completed ? 'done' : ''}">
                        ${completed ? '✓' : '•'}
                    </div>
                    <div class="month">${month}</div>
                </div>
            `;
        }

        document.getElementById("weeklyCompletion").innerText =
            completedCount + "/7";
    }

    function renderStats() {
        const dates = getStreakDates();
        const currentStreak = calculateCurrentStreak();
        const bestStreak = calculateBestStreak();

        document.getElementById("currentStreak").innerText = currentStreak;
        document.getElementById("bestStreak").innerText = bestStreak + " days";
        document.getElementById("totalDays").innerText = dates.length + " days";

        const last30Days = [];

        for (let i = 0; i < 30; i++) {
            const date = new Date();
            date.setDate(date.getDate() - i);
            last30Days.push(date.toISOString().split("T")[0]);
        }

        const completedInLast30 = dates.filter(date =>
            last30Days.includes(date)
        ).length;

        const consistency = Math.round((completedInLast30 / 30) * 100);

        document.getElementById("consistency").innerText =
            consistency + "%";
    }

    function renderAll() {
        renderTasks();
        renderProgress();
        renderLast7Days();
        renderStats();
    }

    updateTodayStreakDate();
    renderAll();
</script>

</body>
</html>