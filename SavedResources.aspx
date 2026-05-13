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
            height: 42px;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            padding-left: 14px;
            box-sizing: border-box;
            margin-bottom: 24px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
            margin-top: 8px;
        }

        .resource-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 12px;
            padding: 22px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.06);
            cursor: pointer;
            min-height: 210px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .resource-card:hover {
            border-color: #2563eb;
            box-shadow: 0 8px 18px rgba(0,0,0,0.10);
            transform: translateY(-2px);
        }

        .resource-category {
            display: inline-block;
            width: fit-content;
            background-color: #eef4ff;
            color: #2563eb;
            font-size: 11px;
            font-weight: bold;
            padding: 5px 9px;
            border-radius: 8px;
            margin-bottom: 14px;
        }

        .resource-card h3 {
            margin: 0 0 10px 0;
            font-size: 16px;
            color: #111827;
        }

        .resource-card p {
            font-size: 12px;
            color: #4b5563;
            line-height: 1.45;
            margin-bottom: 12px;
        }

        .save-status {
            margin-top: 8px;
            font-size: 12px;
            font-weight: bold;
            color: #6b7280;
        }

        .save-status.saved-text {
            color: #16a34a;
        }

        .save-btn {
            margin-top: 12px;
            background-color: #2563eb;   /* Blue */
            color: white;
            border: none;
            border-radius: 6px;
            padding: 8px 12px;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
            align-self: flex-start;
            transition: all 0.2s ease;
        }

        .save-btn:hover {
            background-color: #1d4ed8;
        }

        .save-btn.saved {
            background-color: #16a34a;   /* Green */
            color: white;
        }

        .save-btn.saved:hover {
            background-color: #15803d;
        }

        .pagination {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 35px;
        }

        .page-btn {
            width: 38px;
            height: 38px;
            border-radius: 8px;
            background-color: white;
            border: 1px solid #d1d5db;
            color: #374151;
            font-weight: bold;
            cursor: pointer;
        }

        .page-btn:hover {
            background-color: #2563eb;
            color: white;
        }

        .page-btn.active {
            background-color: #2563eb;
            color: white;
        }

        .empty-state {
            grid-column: 1 / 4;
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 12px;
            padding: 40px;
            text-align: center;
            color: #6b7280;
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
            <a class="menu-item" href="Dashboard.aspx">
                <span>▦</span> Dashboard
            </a>

            <a class="menu-item active" href="SavedResources.aspx">
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

        <div class="main">
            <h1>Saved Resources</h1>
            <div class="sub">Saved resources are displayed first. Click a resource card to view details.</div>

            <input id="searchInput" class="search" type="text" placeholder="Search resources..." />

            <div id="resourceContainer" class="grid"></div>

            <div id="pagination" class="pagination"></div>
        </div>

    </div>

</div>

<script>
    /* ==========================================================
   PAGINATION SETTINGS
   1 page = 6 resources
========================================================== */
    const ITEMS_PER_PAGE = 6;
    let currentPage = 1;


    /* ==========================================================
       USER HELPERS
    ========================================================== */
    function getCurrentUserEmail() {
        return localStorage.getItem("currentUserEmail") ||
            localStorage.getItem("userEmail");
    }

    function userKey(baseKey) {
        const email = getCurrentUserEmail();
        return baseKey + "_" + email;
    }


    /* ==========================================================
       RESOURCE DATA
       - allResources : master data managed by admin
       - savedResources : per-user saved IDs
    ========================================================== */
    function getAllResources() {
        const stored = localStorage.getItem("resources");

        if (stored !== null) {
            return JSON.parse(stored);
        }

        return [];
    }

    function getSavedResources() {
        const stored = localStorage.getItem(userKey("savedResources"));
        return stored ? JSON.parse(stored) : [];
    }

    function saveSavedResources(savedIds) {
        localStorage.setItem(
            userKey("savedResources"),
            JSON.stringify(savedIds)
        );
    }


    /* ==========================================================
       FILTER
    ========================================================== */
    function getFilteredResources() {
        const allResources = getAllResources();
        const savedIds = getSavedResources();

        /* Saved page only shows resources saved by current user */
        let filtered = allResources;

        /* Search */
        const searchInput = document.getElementById("searchInput");
        if (searchInput) {
            const keyword = searchInput.value.trim().toLowerCase();

            if (keyword !== "") {
                filtered = filtered.filter(resource =>
                    resource.title.toLowerCase().includes(keyword) ||
                    resource.description.toLowerCase().includes(keyword) ||
                    resource.category.toLowerCase().includes(keyword)
                );
            }
        }

        return filtered;
    }


    /* ==========================================================
       TOGGLE SAVE
    ========================================================== */
    function toggleSave(resourceId) {
        let savedIds = getSavedResources();

        if (savedIds.includes(resourceId)) {
            savedIds = savedIds.filter(id => id !== resourceId);
        } else {
            savedIds.push(resourceId);
        }

        saveSavedResources(savedIds);

        /* If unsaved on SavedResources page, it disappears */
        renderResources();
    }


    /* ==========================================================
       RENDER RESOURCE CARDS
    ========================================================== */
    function renderResources() {
        const container = document.getElementById("resourceContainer");
        if (!container) return;

        const resources = getFilteredResources();

        /* total pages */
        const totalPages = Math.max(
            1,
            Math.ceil(resources.length / ITEMS_PER_PAGE)
        );

        /* keep current page in valid range */
        if (currentPage > totalPages) {
            currentPage = totalPages;
        }

        /* calculate page slice */
        const startIndex = (currentPage - 1) * ITEMS_PER_PAGE;
        const endIndex = startIndex + ITEMS_PER_PAGE;

        const pageResources = resources.slice(startIndex, endIndex);

        /* no resources */
        if (resources.length === 0) {
            container.innerHTML = `
            <div class="empty-state">
                <h3>No saved resources</h3>
                <p>Save resources from the Resources page.</p>
            </div>
        `;

            renderPagination(1);
            return;
        }

        const savedIds = getSavedResources();

        let html = "";

        pageResources.forEach(resource => {
            const isSaved = savedIds.includes(resource.id);

            const buttonClass = isSaved ? "save-btn saved" : "save-btn";
            const buttonText = isSaved ? "Saved" : "Save Resource";

            html += `
        <div class="resource-card">
            <div class="resource-category">${resource.category}</div>

            <h3>${resource.title}</h3>

            <p>${resource.description}</p>


            <button class="${buttonClass}"
                    onclick="toggleSave('${resource.id}')">
                ${buttonText}
            </button>
        </div>
    `;
        });

        container.innerHTML = html;

        /* render page numbers */
        renderPagination(totalPages);
    }


    /* ==========================================================
       RENDER PAGINATION BUTTONS
    ========================================================== */
    function renderPagination(totalPages) {
        const pagination = document.getElementById("pagination");
        if (!pagination) return;

        let html = "";

        for (let i = 1; i <= totalPages; i++) {
            html += `
            <button class="page-btn ${i === currentPage ? "active" : ""}"
                    onclick="goToPage(${i})">
                ${i}
            </button>
        `;
        }

        pagination.innerHTML = html;
    }


    /* ==========================================================
       CHANGE PAGE
    ========================================================== */
    function goToPage(page) {
        currentPage = page;
        renderResources();
    }


    /* ==========================================================
       SEARCH
    ========================================================== */
    function setupSearch() {
        const searchInput = document.getElementById("searchInput");

        if (!searchInput) return;

        searchInput.addEventListener("input", function () {
            currentPage = 1;
            renderResources();
        });
    }


    /* ==========================================================
       PAGE LOAD
    ========================================================== */
    document.addEventListener("DOMContentLoaded", function () {
        setupSearch();
        renderResources();
    });
</script>

</body>
</html>