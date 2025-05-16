# Library Management System

A relational database for managing library operations with:
- Book catalog
- Member management
- Loan tracking
- Author relationships

## Setup
1. Install MariaDB
2. Create database:
   mysql -u root -p -e "CREATE DATABASE library_db;"
3. Import schema:
   mysql -u root -p library_db < library.sql

## ER Diagram
See erd.txt
