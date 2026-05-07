<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Resources</title>

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
            background-color: white;
        }

        .topbar {
            height: 55px;
            background-color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 32px;
            border-bottom: 1px solid #eef2f7;
        }

        .logo {
            color: #2563eb;
            font-size: 16px;
            font-weight: bold;
        }

        .nav a {
            color: #111827;
            text-decoration: none;
            font-size: 12px;
            margin-left: 24px;
        }

        .hero {
            text-align: center;
            padding: 55px 20px;
            background: linear-gradient(#f4f8ff, #ffffff);
        }

        .hero h1 {
            font-size: 34px;
            margin-bottom: 12px;
        }

        .hero p {
            font-size: 14px;
            color: #4b5563;
            line-height: 1.5;
        }

        .content {
            padding: 35px 42px;
        }

        .category-row {
            text-align: center;
            margin-bottom: 28px;
        }

        .category {
            display: inline-block;
            padding: 9px 14px;
            margin: 5px;
            border-radius: 7px;
            background-color: #eff6ff;
            color: #2563eb;
            font-size: 12px;
            font-weight: bold;
        }

        .resource-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .card {
            border: 1px solid #dbe1ea;
            border-radius: 10px;
            padding: 24px;
            background-color: white;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .tag {
            display: inline-block;
            background-color: #eef4ff;
            color: #2563eb;
            padding: 5px 8px;
            border-radius: 8px;
            font-size: 11px;
            font-weight: bold;
            margin-bottom: 14px;
        }

        .card h3 {
            margin: 0 0 10px 0;
            font-size: 16px;
        }

        .card p {
            font-size: 12px;
            color: #4b5563;
            line-height: 1.5;
        }

        .btn {
            display: inline-block;
            margin-top: 12px;
            background-color: #2563eb;
            color: white;
            padding: 9px 13px;
            border-radius: 6px;
            font-size: 12px;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
</head>

<body>

<div class="page">

    <div class="topbar">
        <div class="logo">StudyFlow</div>

        <div class="nav">
            <a href="Default.aspx">Home</a>
            <a href="Resources.aspx">Resources</a>
            <a href="About.aspx">About</a>
            <a href="Register.aspx">Login</a>
        </div>
    </div>

    <div class="hero">
        <h1>Learning Resources</h1>
        <p>
            Explore free learning materials to support your study journey.<br />
            These resources help students learn programming, design, databases, and study skills.
        </p>
    </div>

    <div class="content">

        <div class="category-row">
            <span class="category">Programming</span>
            <span class="category">Web Development</span>
            <span class="category">Database</span>
            <span class="category">UI/UX Design</span>
            <span class="category">Cybersecurity</span>
            <span class="category">Study Skills</span>
        </div>

        <div class="resource-grid">

            <div class="card">
                <span class="tag">Programming</span>
                <h3>JavaScript Basics</h3>
                <p>Learn variables, functions, conditions, loops, and basic programming logic.</p>
                <button class="btn" onclick="saveResource('js')">Save Resource</button>
            </div>

            <div class="card">
                <span class="tag">Web Development</span>
                <h3>HTML & CSS Fundamentals</h3>
                <p>Understand how to create simple web pages using structure and design.</p>
                <button class="btn" onclick="saveResource('js')">Save Resource</button>
            </div>

            <div class="card">
                <span class="tag">Database</span>
                <h3>Database Introduction</h3>
                <p>Learn tables, records, primary keys, SQL basics, and database concepts.</p>
                <button class="btn" onclick="saveResource('js')">Save Resource</button>
            </div>

            <div class="card">
                <span class="tag">Design</span>
                <h3>UI/UX Design Principles</h3>
                <p>Learn how to create simple, clear, and user-friendly interfaces.</p>
                <button class="btn" onclick="saveResource('js')">Save Resource</button>
            </div>

            <div class="card">
                <span class="tag">Cybersecurity</span>
                <h3>Cybersecurity Awareness</h3>
                <p>Understand passwords, phishing, suspicious links, and safe online behavior.</p>
                <button class="btn" onclick="saveResource('js')">Save Resource</button>
            </div>

            <div class="card">
                <span class="tag">Study Skills</span>
                <h3>Study Planning Guide</h3>
                <p>Learn how to organize study goals, tasks, deadlines, and progress.</p>
                <button class="btn" onclick="saveResource('js')">Save Resource</button>
            </div>

        </div>
    </div>

</div>

    <script>
    function getSavedResources() {
        const saved = localStorage.getItem("savedResources");
        return saved ? JSON.parse(saved) : [];
    }

    function saveResource(id) {
        let savedList = getSavedResources();

        if (!savedList.includes(id)) {
            savedList.push(id);
        }

        localStorage.setItem("savedResources", JSON.stringify(savedList));

        alert("Resource saved successfully!");
    }
    </script>

</body>
</html>