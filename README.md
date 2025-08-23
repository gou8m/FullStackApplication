# Three-Tier Application Deployment on Ubuntu & Amazon Linux 2023

A **three-tier architecture** separates the application into:  

**Frontend → Backend → Database**  

- **Frontend:** User interface of the application.  
- **Backend:** Handles business logic and API endpoints.  
- **Database:** Stores and retrieves application data.  

This deployment uses **Ubuntu 22.04/20.04** and **Amazon Linux 2023**, with AWS RDS for MySQL.

---

## 1. Frontend Deployment

The frontend is built with **Node.js + React** and served via **Apache2 (Ubuntu)** or **httpd (Amazon Linux)**.  

**Key Points:**  
- React build files must be copied to the web server directory for serving.  
- PM2 is used for running Node.js applications in production.  
- Corepack manages package managers like Yarn.  

*For step-by-step commands, refer to the [Medium blog](#).*

---

## 2. Backend Deployment

The backend is a **Node.js API server**, managed using **PM2**, without requiring a web server.  

**Key Points:**  
- PM2 ensures the backend runs continuously and restarts automatically on reboot.  
- Backend communicates with both frontend and database via APIs.  

*Commands and setup instructions are detailed in the [Medium blog](#).*

---

## 3. Database Connectivity

The application uses **AWS RDS MySQL**.  

**Key Points:**  
- Install the MySQL client appropriate for your OS (Ubuntu: apt, Amazon Linux: dnf/yum).  
- Connect to the RDS instance using the endpoint, username, and password.  

*Detailed instructions available in the [Medium blog](#).*

---

## 4. Summary

- **Frontend:** Served using Apache/httpd; static files from React build.  
- **Backend:** Node.js API server managed by PM2.  
- **Database:** AWS RDS MySQL accessed via MySQL client.  
- This setup ensures separation of concerns, scalability, and maintainability.  

*Full deployment guide and commands are on [Medium](#).*
