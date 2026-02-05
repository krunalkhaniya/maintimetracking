<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time Tracking Dashboard</title>

<style>
body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background-color: #f4f6f9;
}

/* Sidebar */
.sidebar {
    width: 220px;
    height: 100vh;
    background: #1e293b;
    color: white;
    position: fixed;
}

.sidebar h2 {
    text-align: center;
    padding: 20px;
    border-bottom: 1px solid #334155;
}

.sidebar a {
    display: block;
    padding: 14px 20px;
    color: #cbd5e1;
    text-decoration: none;
}

.sidebar a:hover {
    background: #334155;
    color: white;
}

/* Main content */
.main {
    margin-left: 220px;
    padding: 25px;
}

/* Top bar */
.topbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 30px;
}

.topbar h1 {
    margin: 0;
}

/* Timer card */
.timer-card {
    background: white;
    padding: 30px;
    border-radius: 10px;
    text-align: center;
    box-shadow: 0 4px 10px rgba(0,0,0,0.08);
}

.timer {
    font-size: 48px;
    font-weight: bold;
    margin-bottom: 20px;
}

.timer button {
    padding: 12px 30px;
    border: none;
    border-radius: 6px;
    background: #2563eb;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

.timer button:hover {
    background: #1e40af;
}

/* Summary cards */
.cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    margin-top: 30px;
}

.card {
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.08);
}

.card h3 {
    margin-top: 0;
    color: #475569;
}

/* Table */
table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    margin-top: 30px;
    border-radius: 10px;
    overflow: hidden;
}

th, td {
    padding: 14px;
    text-align: left;
}

th {
    background: #2563eb;
    color: white;
}

tr:nth-child(even) {
    background: #f1f5f9;
}
</style>

<script>
let seconds = 0;
let running = false;
let timer;

function startPause() {
    if (!running) {
        running = true;
        timer = setInterval(() => {
            seconds++;
            document.getElementById("timer").innerText = formatTime(seconds);
        }, 1000);
    } else {
        running = false;
        clearInterval(timer);
    }
}

function formatTime(sec) {
    let h = Math.floor(sec / 3600);
    let m = Math.floor((sec % 3600) / 60);
    let s = sec % 60;
    return String(h).padStart(2,'0') + ":" +
           String(m).padStart(2,'0') + ":" +
           String(s).padStart(2,'0');
}
</script>

</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2>Time Tracker</h2>
 
<a href="Projects">Projects</a>
<a href="Reports">Reports</a>
<a href="Users">Users</a>
<a href="Settings">Settings</a>
<a href="Logout">Logout</a>

</div>

<!-- Main -->
<div class="main">

    <div class="topbar">
        <h1>Dashboard</h1>
        <p>Welcome, Admin</p>
    </div>

    <!-- Timer -->
    <div class="timer-card">
        <div id="timer" class="timer">00:00:00</div>
        <button onclick="startPause()">Start / Pause</button>
    </div>

    <!-- Summary -->
    <div class="cards">
        <div class="card">
            <h3>Today</h3>
            <p>03:45 hrs</p>
        </div>
        <div class="card">
            <h3>This Week</h3>
            <p>12:30 hrs</p>
        </div>
        <div class="card">
            <h3>This Month</h3>
            <p>28:15 hrs</p>
        </div>
    </div>

    <!-- Project Table -->
    <table>
        <tr>
            <th>Project Name</th>
            <th>Client</th>
            <th>Status</th>
            <th>Total Time</th>
        </tr>
        <tr>
            <td>Design Project</td>
            <td>Acme Inc.</td>
            <td>Active</td>
            <td>12:30 hrs</td>
        </tr>
        <tr>
            <td>Marketing Campaign</td>
            <td>Beta Corp</td>
            <td>Active</td>
            <td>08:15 hrs</td>
        </tr>
    </table>

</div>

</body>
</html>
