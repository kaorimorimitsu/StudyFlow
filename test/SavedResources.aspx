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
            margin-bottom: 8px;
        }

        .sub {
            color: #6b7280;
            font-size: 13px;
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
            cursor: pointer;
            position: relative;
        }

        .card:hover {
            border-color: #2563eb;
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

        .status {
            margin-top: 12px;
            font-size: 12px;
            font-weight: bold;
        }

        .saved {
            color: #16a34a;
        }

        .not-saved {
            color: #6b7280;
        }

        .save-btn {
            margin-top: 12px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 12px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
        }

        .unsave-btn {
            margin-top: 12px;
            background-color: #e5e7eb;
            color: #374151;
            border: none;
            border-radius: 6px;
            padding: 8px 12px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
        }

        .pagination {
            text-align: center;
            margin-top: 35px;
        }

        .pagination button {
            width: 38px;
            height: 38px;
            margin: 0 6px;
            border: none;
            border-radius: 8px;
            background-color: white;
            border: 1px solid #d1d5db;
            color: #374151;
            font-weight: bold;
            cursor: pointer;
        }

        .pagination button:hover {
            background-color: #2563eb;
            color: white;
        }

        .pagination .active-page {
            background-color: #2563eb;
            color: white;
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
            <div class="sub">Saved resources are displayed first. Click a resource card to view details.</div>

            <input id="searchBox" class="search" type="text" placeholder="Search resources..." onkeyup="displayResources()" />

            <div id="resourceList" class="grid"></div>

            <div class="pagination">
                <button onclick="changePage(1)" id="page1">1</button>
                <button onclick="changePage(2)" id="page2">2</button>
                <button onclick="changePage(3)" id="page3">3</button>
            </div>
        </div>

    </div>

</div>

<script>
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

    const resources = getResources();
   

    let currentPage = 1;
    const itemsPerPage = 2;

    function getSavedResources() {
        const saved = localStorage.getItem("savedResources");
        return saved ? JSON.parse(saved) : ["js", "uiux", "python"];
    }

    function saveSavedResources(savedList) {
        localStorage.setItem("savedResources", JSON.stringify(savedList));
    }

    function toggleSave(event, id) {
        event.stopPropagation();

        let savedList = getSavedResources();

        if (savedList.includes(id)) {
            savedList = savedList.filter(item => item !== id);
        } else {
            savedList.push(id);
        }

        saveSavedResources(savedList);
        displayResources();
    }

    function openDetail(id) {
        localStorage.setItem("selectedResourceId", id);
        localStorage.setItem("allResources", JSON.stringify(resources));
        window.location.href = "ResourceDetail.aspx";
    }

    function changePage(page) {
        currentPage = page;
        displayResources();
    }

    function updatePagination() {
        for (let i = 1; i <= 3; i++) {
            document.getElementById("page" + i).classList.remove("active-page");
        }

        document.getElementById("page" + currentPage).classList.add("active-page");
    }

    function displayResources() {
        const savedList = getSavedResources();
        const keyword = document.getElementById("searchBox").value.toLowerCase();

        const sortedResources = [...resources].sort((a, b) => {
            const aSaved = savedList.includes(a.id);
            const bSaved = savedList.includes(b.id);

            if (aSaved && !bSaved) return -1;
            if (!aSaved && bSaved) return 1;

            return a.title.localeCompare(b.title);
        });

        const filteredResources = sortedResources.filter(resource =>
            resource.title.toLowerCase().includes(keyword) ||
            resource.category.toLowerCase().includes(keyword) ||
            resource.description.toLowerCase().includes(keyword)
        );

        const startIndex = (currentPage - 1) * itemsPerPage;
        const endIndex = startIndex + itemsPerPage;
        const paginatedResources = filteredResources.slice(startIndex, endIndex);

        const container = document.getElementById("resourceList");
        container.innerHTML = "";

        paginatedResources.forEach(resource => {
            const isSaved = savedList.includes(resource.id);

            container.innerHTML += `
                <div class="card" onclick="openDetail('${resource.id}')">
                    <span class="tag">${resource.category}</span>
                    <h3>${resource.title}</h3>
                    <p>${resource.description}</p>

                    <div class="status ${isSaved ? "saved" : "not-saved"}">
                        ${isSaved ? "Saved" : "Not Saved"}
                    </div>

                    <button 
                        class="${isSaved ? "unsave-btn" : "save-btn"}"
                        onclick="toggleSave(event, '${resource.id}')">
                        ${isSaved ? "Remove Save" : "Save Resource"}
                    </button>
                </div>
            `;
        });

        updatePagination();
    }

    displayResources();
</script>

</body>
</html>