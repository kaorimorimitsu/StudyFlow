<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Resource Management</title>

    <style>
        body {
            margin: 0;
            background-color: #0b43b8;
            font-family: Arial, Helvetica, sans-serif;
        }

        .page {
            width: 92%;
            min-height: 680px;
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
            min-height: 620px;
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
            margin: 0 0 8px 0;
            color: #111827;
        }

        .sub {
            color: #6b7280;
            font-size: 13px;
            margin-bottom: 24px;
        }

        .card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 22px;
            margin-bottom: 24px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .card h2 {
            margin: 0 0 18px 0;
            font-size: 17px;
            color: #111827;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 16px;
        }

        .label {
            display: block;
            font-size: 12px;
            font-weight: bold;
            color: #374151;
            margin-bottom: 6px;
        }

        .textbox, .textarea, .select {
            width: 100%;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            padding: 11px;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        .textarea {
            min-height: 75px;
            resize: vertical;
        }

        .full {
            grid-column: 1 / 3;
        }

        .blue-button {
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 12px 18px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 16px;
        }

        .gray-button {
            background-color: #e5e7eb;
            color: #374151;
            border: none;
            border-radius: 7px;
            padding: 12px 18px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 16px;
            margin-left: 8px;
        }

        .resource-list {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 18px;
        }

        .resource-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 18px;
            position: relative;
        }

        .tag {
            display: inline-block;
            background-color: #eef4ff;
            color: #2563eb;
            font-size: 11px;
            font-weight: bold;
            padding: 5px 8px;
            border-radius: 8px;
            margin-bottom: 12px;
        }

        .resource-card h3 {
            margin: 0 0 8px 0;
            font-size: 15px;
            color: #111827;
        }

        .resource-card p {
            color: #4b5563;
            font-size: 12px;
            line-height: 1.45;
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
            margin-right: 8px;
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
        }

        .message {
            color: #16a34a;
            font-size: 12px;
            font-weight: bold;
            margin-top: 14px;
        }
    </style>
</head>

<body>

<div class="page">

    <div class="topbar">
        <div class="logo">StudyFlow Admin</div>
        <div class="top-right">
            Welcome, Admin
            <a href="#" onclick="adminLogout()">Logout</a>
        </div>
    </div>

    <div class="layout">

        <div class="sidebar">
            <a class="menu-item active" href="AdminResources.aspx">▣ Manage Resources</a>
            <a class="menu-item" href="Default.aspx">← Public Site</a>
        </div>

        <div class="main">
            <h1>Resource Management</h1>
            <div class="sub">Admin can add, edit, and delete learning resources.</div>

            <div class="card">
                <h2 id="formTitle">Add New Resource</h2>

                <div class="form-grid">
                    <div>
                        <label class="label">Resource Title</label>
                        <input id="resourceTitle" class="textbox" type="text" placeholder="Example: JavaScript Basics" />
                    </div>

                    <div>
                        <label class="label">Category</label>
                        <select id="resourceCategory" class="select">
                            <option value="Programming">Programming</option>
                            <option value="Web Development">Web Development</option>
                            <option value="Database">Database</option>
                            <option value="Design">Design</option>
                            <option value="Cybersecurity">Cybersecurity</option>
                            <option value="Study Skills">Study Skills</option>
                        </select>
                    </div>

                    <div class="full">
                        <label class="label">Short Description</label>
                        <textarea id="resourceDescription" class="textarea" placeholder="Write a short description shown on the card."></textarea>
                    </div>

                    <div class="full">
                        <label class="label">Resource Details</label>
                        <textarea id="resourceDetails" class="textarea" placeholder="Write detailed explanation for the resource detail page."></textarea>
                    </div>
                </div>

                <button class="blue-button" onclick="saveResource()">Save Resource</button>
                <button class="gray-button" onclick="clearForm()">Clear</button>

                <div id="message" class="message"></div>
            </div>

            <div class="card">
                <h2>Current Resources</h2>
                <div id="adminResourceList" class="resource-list"></div>
            </div>
        </div>

    </div>

</div>

<script>
    let editingId = null;

    function checkAdminLogin() {
        const isAdmin = localStorage.getItem("isAdminLoggedIn");

        if (isAdmin !== "true") {
            alert("Please login as admin first.");
            window.location.href = "AdminLogin.aspx";
        }
    }

    function getDefaultResources() {
        return [
            {
                id: "js",
                category: "Programming",
                title: "JavaScript Complete Guide",
                description: "Comprehensive JavaScript tutorial covering basics to advanced concepts.",
                details: "This resource helps students learn JavaScript fundamentals such as variables, functions, loops, conditions, arrays, objects, and DOM manipulation."
            },
            {
                id: "uiux",
                category: "Design",
                title: "UI/UX Design Principles",
                description: "Learn the fundamentals of user interface and experience design.",
                details: "This resource introduces basic design principles such as consistency, simplicity, visibility, feedback, and user-friendly layout design."
            },
            {
                id: "python",
                category: "Programming",
                title: "Python Data Science",
                description: "Complete Python course focused on data science and machine learning.",
                details: "This resource covers Python basics, data handling, simple analysis, visualization, and beginner-friendly data science concepts."
            },
            {
                id: "database",
                category: "Database",
                title: "Database Introduction",
                description: "Learn tables, records, SQL basics, and database concepts.",
                details: "This resource explains relational databases, tables, rows, columns, primary keys, and basic SQL queries."
            },
            {
                id: "cyber",
                category: "Cybersecurity",
                title: "Cybersecurity Awareness",
                description: "Understand passwords, phishing, suspicious links, and safe online behavior.",
                details: "This resource teaches password safety, phishing detection, and safe browsing habits."
            },
            {
                id: "study",
                category: "Study Skills",
                title: "Study Planning Guide",
                description: "Learn how to organize study goals, tasks, deadlines, and progress.",
                details: "This resource helps students create study plans, manage deadlines, track progress, and build consistent learning habits."
            }
        ];
    }

    function getResources() {
        const stored = localStorage.getItem("resources");

        if (stored) {
            return JSON.parse(stored);
        }

        const defaultResources = getDefaultResources();
        localStorage.setItem("resources", JSON.stringify(defaultResources));
        return defaultResources;
    }

    function saveResources(resources) {
        localStorage.setItem("resources", JSON.stringify(resources));
    }

    function createId(title) {
        return title.toLowerCase()
            .replace(/[^a-z0-9]+/g, "-")
            .replace(/^-|-$/g, "") + "-" + Date.now();
    }

    function saveResource() {
        const title = document.getElementById("resourceTitle").value.trim();
        const category = document.getElementById("resourceCategory").value;
        const description = document.getElementById("resourceDescription").value.trim();
        const details = document.getElementById("resourceDetails").value.trim();

        if (title === "" || description === "" || details === "") {
            document.getElementById("message").style.color = "#dc2626";
            document.getElementById("message").innerText = "Please fill in all fields.";
            return;
        }

        let resources = getResources();

        if (editingId) {
            resources = resources.map(resource => {
                if (resource.id === editingId) {
                    return {
                        id: editingId,
                        title: title,
                        category: category,
                        description: description,
                        details: details
                    };
                }
                return resource;
            });

            document.getElementById("message").style.color = "#16a34a";
            document.getElementById("message").innerText = "Resource updated successfully.";
        } else {
            const newResource = {
                id: createId(title),
                title: title,
                category: category,
                description: description,
                details: details
            };

            resources.push(newResource);

            document.getElementById("message").style.color = "#16a34a";
            document.getElementById("message").innerText = "Resource added successfully.";
        }

        saveResources(resources);
        clearForm();
        displayAdminResources();
    }

    function displayAdminResources() {
        const resources = getResources();
        const container = document.getElementById("adminResourceList");

        container.innerHTML = "";

        resources.forEach(resource => {
            container.innerHTML += `
                <div class="resource-card">
                    <span class="tag">${resource.category}</span>
                    <h3>${resource.title}</h3>
                    <p>${resource.description}</p>

                    <button class="delete-btn" onclick="deleteResource('${resource.id}')">Delete</button>
                    <button class="edit-btn" onclick="editResource('${resource.id}')">Edit</button>
                </div>
            `;
        });
    }

    function editResource(id) {
        const resources = getResources();
        const resource = resources.find(item => item.id === id);

        if (!resource) return;

        editingId = id;

        document.getElementById("formTitle").innerText = "Edit Resource";
        document.getElementById("resourceTitle").value = resource.title;
        document.getElementById("resourceCategory").value = resource.category;
        document.getElementById("resourceDescription").value = resource.description;
        document.getElementById("resourceDetails").value = resource.details;

        window.scrollTo(0, 0);
    }

    function deleteResource(id) {
        if (!confirm("Are you sure you want to delete this resource?")) {
            return;
        }

        let resources = getResources();
        resources = resources.filter(resource => resource.id !== id);

        saveResources(resources);

        let savedList = JSON.parse(localStorage.getItem("savedResources")) || [];
        savedList = savedList.filter(savedId => savedId !== id);
        localStorage.setItem("savedResources", JSON.stringify(savedList));

        displayAdminResources();
    }

    function clearForm() {
        editingId = null;

        document.getElementById("formTitle").innerText = "Add New Resource";
        document.getElementById("resourceTitle").value = "";
        document.getElementById("resourceCategory").value = "Programming";
        document.getElementById("resourceDescription").value = "";
        document.getElementById("resourceDetails").value = "";
    }

    function adminLogout() {
        localStorage.removeItem("isAdminLoggedIn");
        window.location.href = "AdminLogin.aspx";
    }

    checkAdminLogin();
    displayAdminResources();
</script>

</body>
</html>