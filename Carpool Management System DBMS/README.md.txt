# Carpool Management System - DBMS Project

[cite_start]A comprehensive backend database system engineered to manage the complete operational lifecycle of a modern carpool service, built with Microsoft SQL Server[cite: 3, 26].

This project was developed for the **CSE 211: Database Systems** course at the **University of Asia Pacific**.

![Schema Diagram](diagrams/Schema_Diagram.png)

---

## Project Information

| | |
| :--- | :--- |
| **Course** | CSE 211: Database Systems |
| **Institution** | University of Asia Pacific |
| **Instructor** | Nadeem Ahmed, Assistant Professor |
| **Authors** | MD FATAHARUL ISLAM - 23201062 |
| | INTISAR RAHMAN KHAN - 23201097 |
| | MD JUBAIR BIN HASAN - 23201065 |
| | SHIRIN AKTER - 23201056 |

---

## 1. Project Summary

[cite_start]This project is a robust, scalable, and reliable relational database (RDBMS) that serves as the "single source of truth" for all application activities[cite: 4]. [cite_start]It is designed to handle complex, real-time interactions between passengers, drivers, and support administrators[cite: 5].

### Core Objectives
[cite_start]The primary goal is to provide a normalized (3NF), high-integrity database schema that ensures data consistency and reliability[cite: 7, 27]. The system is engineered to solve key business challenges:

* [cite_start]**Reliable Bookings**: Ensuring that a ride booking is an atomic (all-or-nothing) transaction[cite: 9, 18].
* [cite_start]**Fair Matching**: Logically matching passengers with the nearest suitable driver[cite: 10].
* [cite_start]**Financial Integrity**: Accurately managing financial transactions and balances for all users[cite: 11].
* [cite_start]**User Trust**: Providing a reliable system for reviews, ratings, and support[cite: 12].

---

## 2. Key Features & Technical Logic

The schema is designed to handle complex engineering problems through several key features:

* [cite_start]**Role-Based User Management**: The schema distinguishes between a base `User`, a `Passenger`, and a `Driver`, using foreign keys to link specialized roles to a central identity[cite: 15].
* [cite_start]**Geospatial Ride Matching**: The system is built to find the nearest driver using the **Haversine formula** by comparing the passenger's latitude/longitude with available driver locations[cite: 17, 312].
* [cite_start]**Transactional Ride Lifecycle**: The entire ride booking process is wrapped in a single, atomic **SQL transaction**[cite: 18]. [cite_start]This ensures that fare calculation, passenger balance deduction, driver balance addition, and ride record creation all succeed or fail together, preventing data corruption[cite: 19].
* **Dynamic Fare & Rating Models**:
    * [cite_start]**Fare**: Calculated dynamically based on distance (via Haversine) and vehicle type[cite: 21].
    * [cite_start]**Rating**: The driver's `avg_rating` is a weighted average, recalculated after each ride to provide a fair representation of their performance[cite: 22, 394].
* **Integrated Support Module**: A complete subsystem for accountability. [cite_start]The `Report` and `Customer_Support` tables allow users to file tickets, which are then managed and resolved by the `Support_Team`[cite: 23, 24].

---

## 3. Technology Used

* [cite_start]**Database**: Microsoft SQL Server [cite: 26]
* [cite_start]**Design**: 3rd Normal Form (3NF) [cite: 27]
* [cite_start]**Logic**: T-SQL, Stored Procedures, and Atomic Transactions [cite: 27]

---

## 4. How to Use This Project

1.  **Clone the Repository**
    ```sh
    git clone [https://github.com/YOUR_USERNAME/Carpool-Management-System-DBMS.git](https://github.com/YOUR_USERNAME/Carpool-Management-System-DBMS.git)
    ```
2.  **Set Up the Database**
    * Open Microsoft SQL Server Management Studio (SSMS).
    * Create a new database named `Carpool`.
    * Open and execute the SQL files in the following order:

3.  **Run the SQL Scripts**
    * [cite_start]**`sql/01_Schema_DDL.sql`**: Creates all the required tables, keys, and constraints [cite: 30-163].
    * [cite_start]**`sql/02_Data_DML.sql`**: Populates the database with sample data for users, drivers, vehicles, etc. [cite: 164-252].
    * **`sql/03_Business_Logic.sql`**: Contains the main transactional queries. [cite_start]You can execute the "Ride Booking" or "Support Ticket" blocks to test the system's core functionality [cite: 254-457, 462-484, 486-551].
    * [cite_start]**`sql/04_Verification.sql`**: Contains various `SELECT` statements to check ride history, user balances, and report status after running the business logic queries [cite: 552-593].

---

## 5. Database Diagrams

### Entity-Relationship (ER) Diagram
This diagram shows the conceptual model and relationships between entities.

![ER Diagram](diagrams/ER_Diagram.jpg)

### Schema Diagram (Relational Model)
This diagram shows the final physical database schema with tables, columns, data types, and foreign key relationships.

![Schema Diagram](diagrams/Schema_Diagram.png)