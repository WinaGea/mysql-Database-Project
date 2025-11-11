# 💾 MySQL Database Design and Implementation

A relational database project built using **MySQL**, focusing on database design, normalization, and implementation through SQL scripts.  
Developed by **Wina Sorta Maria Gea (13323009)** as part of the *Database Introduction* course at **Institut Teknologi Del**.

---

## 🌟 Project Overview
This project demonstrates the process of designing and developing a structured **relational database**.  
It includes **ERD design**, **normalization (1NF–3NF)**, **DDL/DML SQL scripts**, and sample queries.

---

## 🧱 Key Features
- 🧩 Database schema creation using DDL  
- 🧾 Data insertion, update, and deletion using DML  
- 🔗 Implementation of primary and foreign keys  
- ⚙️ JOIN operations and subqueries  
- ✅ Normalized up to the **Third Normal Form (3NF)**

---

## 🧩 Example SQL Snippet

```sql
CREATE DATABASE proyek_pbd;
USE proyek_pbd;

CREATE TABLE Admin (
  id_Admin INT PRIMARY KEY,
  NO_Telp VARCHAR(25),
  Email_Admin VARCHAR(225),
  Sosial_Media_Admin VARCHAR(225)
);

CREATE TABLE Pengguna (
  id_Pengguna INT PRIMARY KEY,
  Nama_Pengguna VARCHAR(225),
  Email_Pengguna VARCHAR(225)
);

---

👉 Full implementation available in:  
📁 [**Syntax_13323009.sql**](./Syntax_13323009.sql)

---
