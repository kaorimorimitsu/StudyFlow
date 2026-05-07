<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Resource Detail</title>

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

        .content {
            padding: 45px 70px;
        }

        .back {
            display: inline-block;
            margin-bottom: 22px;
            color: #2563eb;
            font-size: 13px;
            font-weight: bold;
            text-decoration: none;
        }

        .detail-card {
            background-color: white;
            border: 1px solid #e5e7eb;
            border-radius: 12px;
            padding: 35px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .tag {
            display: inline-block;
            background-color: #eef4ff;
            color: #2563eb;
            font-size: 12px;
            font-weight: bold;
            padding: 7px 10px;
            border-radius: 8px;
            margin-bottom: 18px;
        }

        h1 {
            margin: 0 0 14px 0;
            font-size: 30px;
            color: #111827;
        }

        p {
            color: #4b5563;
            font-size: 14px;
            line-height: 1.7;
        }

        .section-title {
            margin-top: 28px;
            font-size: 18px;
            font-weight: bold;
            color: #111827;
        }

        .save-btn {
            margin-top: 24px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 7px;
            padding: 12px 18px;
            font-size: 13px;
            font-weight: bold;
            cursor: pointer;
        }

        .unsave-btn {
            margin-top: 24px;
            background-color: #e5e7eb;
            color: #374151;
            border: none;
            border-radius: 7px;
            padding: 12px 18px;
            font-size: 13px;
            font-weight: bold;
            cursor: pointer;
        }

        .status {
            margin-top: 16px;
            font-size: 13px;
            font-weight: bold;
        }

        .saved {
            color: #16a34a;
        }

        .not-saved {
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

    <div class="content">

        <a class="back" href="SavedResources.aspx">← Back to Resources</a>

        <div class="detail-card">
            <span id="category" class="tag"></span>

            <h1 id="title"></h1>

            <p id="description"></p>

            <div class="section-title">Resource Details</div>
            <p id="details"></p>

            <div id="statusText" class="status"></div>

            <button id="saveButton" onclick="toggleSave()"></button>
        </div>

    </div>

</div>

<script>
    const resources = JSON.parse(localStorage.getItem("resources")) || [];
    const selectedId = localStorage.getItem("selectedResourceId");

    const resource = resources.find(item => item.id === selectedId);

    function getSavedResources() {
        const saved = localStorage.getItem("savedResources");
        return saved ? JSON.parse(saved) : ["js", "uiux", "python"];
    }

    function saveSavedResources(savedList) {
        localStorage.setItem("savedResources", JSON.stringify(savedList));
    }

    function displayDetail() {
        if (!resource) {
            document.getElementById("title").innerText = "Resource not found";
            document.getElementById("description").innerText = "Please go back and select a resource again.";
            return;
        }

        const savedList = getSavedResources();
        const isSaved = savedList.includes(resource.id);

        document.getElementById("category").innerText = resource.category;
        document.getElementById("title").innerText = resource.title;
        document.getElementById("description").innerText = resource.description;
        document.getElementById("details").innerText = resource.details;

        document.getElementById("statusText").innerText = isSaved ? "This resource is saved." : "This resource is not saved yet.";
        document.getElementById("statusText").className = isSaved ? "status saved" : "status not-saved";

        const button = document.getElementById("saveButton");
        button.innerText = isSaved ? "Remove from Saved Resources" : "Save Resource";
        button.className = isSaved ? "unsave-btn" : "save-btn";
    }

    function toggleSave() {
        let savedList = getSavedResources();

        if (savedList.includes(resource.id)) {
            savedList = savedList.filter(item => item !== resource.id);
        } else {
            savedList.push(resource.id);
        }

        saveSavedResources(savedList);
        displayDetail();
    }

    displayDetail();
</script>

</body>
</html>