<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mithun Technologies - Home</title>
    <link href="images/mithunlogo.jpg" rel="icon">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            color: #222;
        }

        header {
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            color: white;
            padding: 30px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 36px;
        }

        header p {
            margin: 8px 0;
            font-size: 18px;
        }

        .container {
            width: 85%;
            margin: auto;
            padding: 30px 0;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
            margin-bottom: 25px;
        }

        .card h2 {
            color: #2c5364;
            margin-top: 0;
        }

        .highlight {
            font-weight: bold;
            color: #0f2027;
        }

        .info {
            font-size: 18px;
            line-height: 1.8;
        }

        .btn {
            display: inline-block;
            padding: 12px 18px;
            background: #2c5364;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0f2027;
        }

        footer {
            background: #0f2027;
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: 20px;
        }

        footer a {
            color: #ffcc00;
            text-decoration: none;
        }

        .logo-section {
            text-align: center;
        }

        .logo-section img {
            width: 120px;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<header>
    <h1>Welcome to Mithun Technologies</h1>
    <p>📞 Phone Number: +91 9980923216</p>
    <p>A Best Training Center for AWS DevOps, Jenkins, Docker, Kubernetes, GitOps, ArgoCD, Terraform & AWS</p>
    <p><b>Trainer:</b> Bhaskar Reddy Lacchannagari</p>
</header>

<div class="container">

    <div class="card">
        <h2>🌐 Server Side Details</h2>
        <div class="info">
            <%
                InetAddress inetAddress = InetAddress.getLocalHost();
                String serverIP = inetAddress.getHostAddress();
                String serverHost = inetAddress.getHostName();
            %>

            <p><span class="highlight">Server Host Name:</span> <%= serverHost %></p>
            <p><span class="highlight">Server IP Address:</span> <%= serverIP %></p>
        </div>
    </div>

    <div class="card">
        <h2>💻 Client Side Details</h2>
        <div class="info">
            <p><span class="highlight">Client IP Address:</span> <%= request.getRemoteAddr() %></p>
            <p><span class="highlight">Client Host Name:</span> <%= request.getRemoteHost() %></p>
        </div>
    </div>

    <div class="card logo-section">
        <img src="images/mithunlogo.jpg" alt="Mithun Logo">
        <p class="info">
            <b>Mithun Technologies</b><br>
            Marathahalli, Bengaluru<br>
            📞 +91 9980923216<br>
            📧 Devopstrainingblr@gmail.com<br><br>

            <a class="btn" href="mailto:Devopstrainingblr@gmail.com">📩 Mail to Mithun Technologies</a>
        </p>
    </div>

    <div class="card" style="text-align:center;">
        <h2>🛠 Services</h2>
        <p class="info">Click below to view Employee Details</p>
        <a class="btn" href="services/employee/getEmployeeDetails">Get Employee Details</a>
    </div>

</div>

<footer>
    <p>Mithun Technologies - Consultant, Training and Development Center.</p>
    <p>
        <small>
            Copyright © 2025 |
            <a href="http://mithuntechnologies.com/" target="_blank">Mithun Technologies, Bengaluru</a>
        </small>
    </p>
</footer>

</body>
</html>
