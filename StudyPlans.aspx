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

        .cancel-btn {
            background-color: #e5e7eb;
            color: #374151;
            border: none;
            border-radius: 7px;
            padding: 13px 18px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            margin-left: 8px;
        }

        .form-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 22px;
            margin-bottom: 24px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .form-card h2 {
            margin: 0 0 18px 0;
            font-size: 18px;
            color: #111827;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 16px;
        }

        .form-card label {
            display: block;
            font-size: 12px;
            font-weight: bold;
            margin-bottom: 6px;
            color: #374151;
        }

        .input-box {
            width: 100%;
            height: 40px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            padding-left: 12px;
            box-sizing: border-box;
        }

        .message {
            margin-top: 12px;
            font-size: 12px;
            font-weight: bold;
            color: #16a34a;
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

        .delete-btn {
            background-color: #dc2626;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 11px;
            font-size: 11px;
            font-weight: bold;
            cursor: pointer;
        }

        .edit-btn {
            background-color: #f59e0b;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 11px;
            font-size: 11px;
            font-weight: bold;
            cursor: pointer;
            margin-right: 6px;
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

                    <button type="button" class="create-btn" onclick="showPlanForm()">+ Create New Plan</button>
                </div>

                <div id="planForm" class="form-card" style="display:none;">
                    <h2 id="formTitle">Create New Study Plan</h2>

                    <div class="form-grid">
                        <div>
                            <label>Title</label>
                            <input id="planTitle" class="input-box" type="text" placeholder="Example: JavaScript Mastery" />
                        </div>

                        <div>
                            <label>Progress (%)</label>
                            <input id="planProgress" class="input-box" type="number" min="0" max="100" placeholder="Example: 50" />
                        </div>

                        <div>
                            <label>Goal</label>
                            <input id="planGoal" class="input-box" type="text" placeholder="Example: Complete JavaScript fundamentals" />
                        </div>

                        <div>
                            <label>Duration</label>
                            <input id="planDuration" class="input-box" type="text" placeholder="Example: 2026-03-01 to 2026-04-15" />
                        </div>
                    </div>

                    <button type="button" id="savePlanButton" class="create-btn" onclick="addPlan()">Add Plan</button>
                    <button type="button" class="cancel-btn" onclick="hidePlanForm()">Cancel</button>

                    <div id="planMessage" class="message"></div>
                </div>

                <div class="table-card">
                    <table>
                        <thead>
                            <tr>
                                <th style="width:20%;">Title</th>
                                <th style="width:28%;">Goal</th>
                                <th style="width:22%;">Duration</th>
                                <th style="width:12%;">Progress</th>
                                <th style="width:12%;">Status</th>
                                <th style="width:6%;">Action</th>
                            </tr>
                        </thead>

                        <tbody id="planTableBody"></tbody>
                        </tbody>
                    </table>
                </div>

            </div>

        </div>

    </div>

</form>

<script>
    let editingPlanId = null;

    // ==========================================
    // Default study plans (used only on first visit)
    // ==========================================
    function getDefaultPlans() {
        return [
            {
                id: "plan-js",
                title: "JavaScript Mastery",
                goal: "Complete JavaScript fundamentals",
                duration: "2026-03-01 to 2026-04-15",
                progress: 66
            },
            {
                id: "plan-react",
                title: "React Development",
                goal: "Build 5 React projects",
                duration: "2026-03-10 to 2026-05-01",
                progress: 40
            },
            {
                id: "plan-database",
                title: "Database Fundamentals",
                goal: "Learn SQL and NoSQL databases",
                duration: "2026-02-15 to 2026-03-20",
                progress: 100
            },
            {
                id: "plan-uiux",
                title: "UI/UX Design Basics",
                goal: "Design 10 landing pages",
                duration: "2026-03-20 to 2026-04-30",
                progress: 20
            }
        ];
    }

    function getCurrentUserEmail() {
        return localStorage.getItem("currentUserEmail") || localStorage.getItem("userEmail");
    }

    function userKey(baseKey) {
        return baseKey + "_" + getCurrentUserEmail();
    }

    // ==========================================
    // Get study plans from Local Storage
    // IMPORTANT:
    // - If key does not exist -> create default data
    // - If key exists and value is [] -> keep it as empty
    // ==========================================
    function getPlans() {
        const key = userKey("studyPlans");
        const stored = localStorage.getItem(key);

        if (stored !== null) {
            return JSON.parse(stored);
        }

        localStorage.setItem(key, JSON.stringify([]));
        return [];
    }

    function savePlans(plans) {
        localStorage.setItem(userKey("studyPlans"), JSON.stringify(plans));
    }

    // ==========================================
    // Show create/edit form
    // ==========================================
    function showPlanForm() {
        document.getElementById("planForm").style.display = "block";
        document.getElementById("planMessage").innerText = "";
    }

    // ==========================================
    // Hide form
    // ==========================================
    function hidePlanForm() {
        document.getElementById("planForm").style.display = "none";
        clearInputs();

        editingPlanId = null;

        document.getElementById("formTitle").innerText =
            "Create New Study Plan";

        document.getElementById("savePlanButton").innerText =
            "Add Plan";

        document.getElementById("planMessage").innerText = "";
    }

    // ==========================================
    // Clear input fields
    // ==========================================
    function clearInputs() {
        document.getElementById("planTitle").value = "";
        document.getElementById("planGoal").value = "";
        document.getElementById("planDuration").value = "";
        document.getElementById("planProgress").value = "";
    }

    // ==========================================
    // Add or update a study plan
    // ==========================================
    function addPlan() {
        const title =
            document.getElementById("planTitle").value.trim();

        const goal =
            document.getElementById("planGoal").value.trim();

        const duration =
            document.getElementById("planDuration").value.trim();

        const progressValue =
            document.getElementById("planProgress").value.trim();

        // Validation
        if (
            title === "" ||
            goal === "" ||
            duration === "" ||
            progressValue === ""
        ) {
            document.getElementById("planMessage").style.color =
                "#dc2626";

            document.getElementById("planMessage").innerText =
                "Please fill in all fields.";

            return;
        }

        let progress = Number(progressValue);

        if (isNaN(progress)) {
            progress = 0;
        }

        if (progress < 0) progress = 0;
        if (progress > 100) progress = 100;

        let plans = getPlans();

        // Update existing plan
        if (editingPlanId !== null) {
            plans = plans.map(plan => {
                if (plan.id === editingPlanId) {
                    return {
                        id: editingPlanId,
                        title: title,
                        goal: goal,
                        duration: duration,
                        progress: progress
                    };
                }
                return plan;
            });

            editingPlanId = null;

            document.getElementById("formTitle").innerText =
                "Create New Study Plan";

            document.getElementById("savePlanButton").innerText =
                "Add Plan";

            document.getElementById("planMessage").innerText =
                "Study plan updated successfully.";
        }
        // Add new plan
        else {
            plans.push({
                id: "plan-" + Date.now(),
                title: title,
                goal: goal,
                duration: duration,
                progress: progress
            });

            document.getElementById("planMessage").innerText =
                "Study plan added successfully.";
        }

        document.getElementById("planMessage").style.color =
            "#16a34a";

        savePlans(plans);
        clearInputs();
        displayPlans();
    }

    // ==========================================
    // Edit existing plan
    // ==========================================
    function editPlan(id) {
        const plans = getPlans();
        const plan = plans.find(item => item.id === id);

        if (!plan) return;

        editingPlanId = id;

        document.getElementById("planForm").style.display = "block";

        document.getElementById("planTitle").value =
            plan.title;

        document.getElementById("planGoal").value =
            plan.goal;

        document.getElementById("planDuration").value =
            plan.duration;

        document.getElementById("planProgress").value =
            plan.progress;

        document.getElementById("formTitle").innerText =
            "Edit Study Plan";

        document.getElementById("savePlanButton").innerText =
            "Update Plan";

        document.getElementById("planMessage").innerText = "";
    }

    // ==========================================
    // Delete one plan
    // ==========================================
    function deletePlan(id) {
        if (!confirm(
            "Are you sure you want to delete this study plan?"
        )) {
            return;
        }

        let plans = getPlans();

        plans = plans.filter(plan => plan.id !== id);

        savePlans(plans);
        displayPlans();
    }

    // ==========================================
    // Display all plans
    // ==========================================
    function displayPlans() {
        const plans = getPlans();
        const tableBody =
            document.getElementById("planTableBody");

        tableBody.innerHTML = "";

        // If no plans exist
        if (plans.length === 0) {
            tableBody.innerHTML = `
                <tr>
                    <td colspan="6"
                        style="
                            text-align:center;
                            padding:40px;
                            color:#9ca3af;
                            font-style:italic;
                        ">
                        No study plans found.
                        Click "Create New Plan" to add one.
                    </td>
                </tr>
            `;
            return;
        }

        // Display each plan
        plans.forEach(plan => {
            const status =
                plan.progress >= 100
                    ? "Completed"
                    : "In Progress";

            const statusClass =
                plan.progress >= 100
                    ? "status-green"
                    : "status-blue";

            tableBody.innerHTML += `
                <tr>
                    <td class="title-cell">
                        ${plan.title}
                    </td>

                    <td>
                        ${plan.goal}
                    </td>

                    <td>
                        ${plan.duration}
                    </td>

                    <td>
                        <div class="progress-wrap">
                            <span class="dot"></span>
                            <span>${plan.progress}%</span>
                        </div>
                    </td>

                    <td>
                        <span class="status ${statusClass}">
                            ${status}
                        </span>
                    </td>

                    <td>
                        <button
                            type="button"
                            class="edit-btn"
                            onclick="editPlan('${plan.id}')">
                            Edit
                        </button>

                        <button
                            type="button"
                            class="delete-btn"
                            onclick="deletePlan('${plan.id}')">
                            Delete
                        </button>
                    </td>
                </tr>
            `;
        });
    }

    // ==========================================
    // Initial page load
    // ==========================================
    displayPlans();
</script>

</body>
</html>