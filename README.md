# Blood-Donation-Management-System

🩸 Blood Donation Management System

📌 Overview
The Blood Donation Management System is a database project designed to efficiently manage blood donation activities. It helps track donors, donations, hospitals, blood inventory, and hospital requests. This system ensures proper monitoring of available blood units, donor details, and hospital requirements, which can be vital during emergencies.
This project is built using MySQL and contains SQL scripts for creating tables, inserting sample data, and performing queries to generate useful insights.

🎯 Features
Donor Management – Store donor details like name, age, gender, blood group, contact info, city, and registration date.
Blood Inventory – Maintain available blood stock by type and update automatically with donations and requests.
Hospital Records – Keep hospital details and manage their blood requests.
Donation Tracking – Record donation events with donor details, date, and reason for donation.
Hospital Requests – Track requests made by hospitals with approval, rejection, or pending status.

Reports & Queries – Predefined SQL queries to analyze data, such as:
Total blood donated by blood type
Top 5 donors by quantity donated
Donor count by city
Hospitals with pending requests
Inventory status below a threshold

🗂️ Database Schema
The system includes the following tables:
blood_types – Stores different blood groups
donors – Contains donor details
donations – Records donation history
inventory – Maintains available blood stock
hospitals – Stores hospital details
hospital_requests – Tracks blood requests from hospitals

🚀 How to Run
Install MySQL on your system.
Open your MySQL client (Workbench / Command Line).
Run the SQL script:
source Blood Donation Management System.sql;
The database blood_donation_management will be created with tables and sample data.
Execute the provided SQL queries for analysis and reporting.

📊 Sample SQL Queries Included
Total donated blood quantity by type
Donor count by city
Top donors by total blood donated
Hospitals with pending requests
Available inventory by blood type
Average donor age by gender

🔮 Future Enhancements
Add a web-based front-end (PHP/Java/Python) for user interaction
Build dashboards using Power BI/Tableau for visualization
Add authentication for hospitals and donors
Automate inventory updates with triggers

🤝 Contributing
Feel free to fork this repository, open issues, and submit pull requests if you want to improve the system or add new features.

📜 License
This project is open-source and available under the MIT License.
