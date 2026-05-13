<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>About StudyFlow</title>

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
            padding: 60px 20px;
            background: linear-gradient(#f4f8ff, #ffffff);
        }

        .hero h1 {
            font-size: 34px;
            margin-bottom: 12px;
        }

        .hero p {
            font-size: 14px;
            color: #4b5563;
            line-height: 1.6;
        }

        .content {
            padding: 40px 70px;
        }

        .section {
            margin-bottom: 34px;
        }

        .section h2 {
            color: #111827;
            font-size: 22px;
            margin-bottom: 12px;
        }

        .section p {
            color: #4b5563;
            font-size: 14px;
            line-height: 1.7;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
            margin-top: 25px;
        }

        .card {
            border: 1px solid #dbe1ea;
            border-radius: 10px;
            padding: 24px;
            background-color: white;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .card h3 {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 12px;
            color: #4b5563;
            line-height: 1.5;
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
            <a href="Login.aspx">Login</a>
            <a href="AdminLogin.aspx">Admin</a>
        </div>
    </div>

    <div class="hero">
        <h1>About StudyFlow</h1>
        <p>
            StudyFlow is a learning platform designed to help students organize resources,<br />
            create study plans, and track their learning progress.
        </p>
    </div>

    <div class="content">

        <div class="section">
            <h2>Who We Are</h2>
            <p>
                StudyFlow is a student-focused digital learning service. It supports learners by bringing
                study resources, planning tools, progress tracking, and habit-building features into one simple platform.
            </p>
        </div>

        <div class="section">
            <h2>Our Mission</h2>
            <p>
                Our mission is to make self-learning easier, more organized, and more consistent.
                We aim to help students reduce confusion, manage their study materials, and stay motivated.
            </p>
        </div>

        <div class="section">
            <h2>Our Vision</h2>
            <p>
                Our vision is to become a simple and reliable study companion for students who want to learn smarter,
                build better habits, and achieve their academic goals.
            </p>
        </div>

        <div class="grid">

            <div class="card">
                <h3>Resource Organization</h3>
                <p>Students can explore, save, and manage useful learning materials in one place.</p>
            </div>

            <div class="card">
                <h3>Study Planning</h3>
                <p>Students can create learning plans with clear goals, duration, and progress status.</p>
            </div>

            <div class="card">
                <h3>Progress Tracking</h3>
                <p>Students can monitor their learning activities, completion rate, and daily streak.</p>
            </div>

        </div>

    </div>

</div>

</body>
</html>