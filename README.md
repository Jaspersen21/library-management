# 📚 Library Management System

A relational database project designed to manage a library's core operations, including:

- 📖 Book cataloging
- 👥 Member registration and tracking
- 🔄 Loan issuance and return management
- ✍️ Book-author relationships (many-to-many)
- 🗂️ Categorization of books

---

## 🚀 Setup Instructions

1. **Install MariaDB or MySQL** on your system.

2. **Create the database**:
   ```bash
   mysql -u root -p -e "CREATE DATABASE library_db;"
3. **Import the schema and sample data**:
    ```bash
     mysql -u root -p library_db < library.sql
4. **📄 Text-Based ERD (erd.txt)**:
        Table Authors {
  author_id INT [pk]
  name VARCHAR(100) [not null]
  nationality VARCHAR(50)
  birth_date DATE
}

Table Books {
  book_id INT [pk]
  title VARCHAR(200) [not null]
  isbn VARCHAR(13) [not null, unique]
  publication_year YEAR
  category_id INT
}

Table Book_Authors {
  book_id INT [fk]
  author_id INT [fk]
}

5.**📁 Project Structure**:
library-project/
├── library.sql       # Schema & sample data
├── README.md         # This file
├── erd.txt           # DBML-formatted ERD
└── erd.png           # (Optional) Visual diagram

6.**🛠️ Technologies Used**:
    MariaDB/MySQL (RDBMS)
    SQL (DDL/DML)
    DBML (ERD format)
    dbdiagram.io (ERD visualization)
   
