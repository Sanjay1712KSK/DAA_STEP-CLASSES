# 📊 DAA - DATA ANALYTICS AND ANALYSIS (MySQL)
## STEP Classes - Database & SQL Practice Repository

> **Beginner to Advanced SQL Learning Journey** | *Data Analytics & Database Design*

---

## 📋 Overview

This repository contains comprehensive **SQL practice materials** and **real-world database scenarios** for learning Data Analytics and Analysis using MySQL. It's designed for step-by-step progression from basic SELECT queries to complex nested subqueries, JOINs, and analytical queries.

The course material is built around a **real-world movie booking and management system** (UNOX Cinema Database) that covers essential data analytics concepts.

---

## 🎯 Course Structure & Topics

### **Level 1: SQL Fundamentals**
- ✅ **SELECT & Column Selection** - Retrieve specific data
- ✅ **WHERE Clause** - Filter data with conditions
- ✅ **LIKE & Pattern Matching** - Text search operations
- ✅ **IN & NOT IN** - Multiple value filtering
- ✅ **NULL Handling** - IS NULL / IS NOT NULL operations
- ✅ **ORDER BY** - Sort query results

### **Level 2: Intermediate Concepts**
- ✅ **BETWEEN** - Range filtering
- ✅ **Aggregate Functions** - COUNT(), SUM(), AVG()
- ✅ **GROUP BY** - Data aggregation and summarization
- ✅ **HAVING** - Filtering aggregated results
- ✅ **DISTINCT** - Remove duplicates

### **Level 3: Advanced Techniques**
- ✅ **SQL JOINs** - INNER, LEFT, RIGHT, FULL OUTER, CROSS JOINs
- ✅ **Subqueries** - Basic, Correlated, and Nested
- ✅ **EXISTS & NOT EXISTS** - Existence checks
- ✅ **Complex Multi-layer Queries** - Advanced data retrieval

---

## 📁 Repository Contents

### **SQL Practice Files**

| File | Topic | Level | Description |
|------|-------|-------|-------------|
| `Day1.sql` | SELECT, WHERE, LIKE, IN | Beginner | Introduction to data retrieval and filtering |
| `Day2.sql` | SELECT, WHERE, Aliases, BETWEEN | Beginner-Intermediate | Movie, screen, and user queries with multiple scenarios |
| `ordby.sql` | ORDER BY | Beginner | Sorting and ordering query results |
| `isnull.sql` | NULL Handling | Beginner | Working with NULL values |
| `grpby.sql` | GROUP BY & Aggregation | Intermediate | Data grouping and summarization queries |
| `sqljoins.sql` | All Types of JOINs | Intermediate-Advanced | Multi-table data combinations (INNER, LEFT, RIGHT, FULL, CROSS) |
| `subquery.sql` | Subqueries & EXISTS | Advanced | Complex nested queries and existence checks |

### **Database Dumps**

| File | Size | Description |
|------|------|-------------|
| `Dump20251008.sql` | ~26.5 MB | Complete UNOX database schema and sample data |
| `UNOX.sql` | ~10 MB | UNOX database backup |
| `C1.pdf` | 1.36 MB | Course materials and documentation |
| `index.pdf` | 104 KB | Database schema index |
| `dump.pdf` | 1.79 MB | Database structure documentation |
| `dump 2 unox 2.pdf` | 1.93 MB | Additional database documentation |

### **Data Directory**
- `Uploaded files in GCR/` - Cloud-uploaded materials and resources

---

## 🎬 Database Schema: UNOX Cinema System

The practice queries use a **real-world movie theater management database** with the following tables:

### Core Tables:
- **user** - Customer/member information
- **movie** - Movie catalog with ratings
- **screen** - Theater screens and capacities
- **show** - Movie show times and schedules
- **booking** - Customer bookings and reservations
- **seat** - Theater seat details
- **payment** - Transaction records
- **review** - Customer reviews and ratings
- **fooditem** - Snack menu items
- **foodorder** - Food ordering records
- **membership** - Loyalty program details
- **moviecast** - Movie cast information

---

## 📚 Example Queries by Topic

### **SELECT & Filtering**
```sql
-- Get all movies with action genre
SELECT * FROM movie WHERE genre = 'Action';

-- Find customers who spent over ₹1000
SELECT * FROM booking WHERE total_cost > 1000;
```

### **GROUP BY & Aggregation**
```sql
-- Count movies by genre
SELECT genre, COUNT(*) AS Number_Of_Movies 
FROM movie 
GROUP BY genre;

-- Total revenue by food delivery method
SELECT delivery_method, SUM(total_amount) AS Total_Revenue 
FROM foodorder 
GROUP BY delivery_method;
```

### **JOINs**
```sql
-- Movies with their show times
SELECT m.title, s.show_datetime 
FROM movie m 
INNER JOIN show s ON m.movie_id = s.movie_id;

-- All users with membership info (including those without membership)
SELECT u.name, m.current_points 
FROM user u 
LEFT JOIN membership m ON u.user_id = m.user_id;
```

### **Subqueries**
```sql
-- Movies with above-average ratings
SELECT * FROM movie 
WHERE rating > (SELECT AVG(rating) FROM movie);

-- Users who booked highly-rated movies (>8.5)
SELECT * FROM user 
WHERE user_id IN (
    SELECT b.user_id FROM booking b 
    WHERE b.show_id IN (
        SELECT show_id FROM show 
        WHERE movie_id IN (
            SELECT movie_id FROM movie WHERE rating > 8.5
        )
    )
);
```

---

## 🚀 Getting Started

### Prerequisites:
- MySQL Server (5.7 or higher)
- MySQL Client or Workbench
- Basic understanding of databases

### Setup Instructions:

1. **Import the database dump:**
   ```bash
   mysql -u username -p < Dump20251008.sql
   ```

2. **Connect to the database:**
   ```bash
   mysql -u username -p unox
   ```

3. **Run SQL queries:**
   - Open `Day1.sql` in MySQL Workbench or CLI
   - Execute queries step by step
   - Follow the progression from basic to advanced

4. **Practice actively:**
   - Write your own variations of queries
   - Modify WHERE clauses and JOIN conditions
   - Experiment with GROUP BY combinations

---

## 📖 How to Use This Repository

### For Beginners:
1. Start with `Day1.sql` - Learn SELECT and WHERE
2. Progress to `ordby.sql` and `isnull.sql`
3. Move to `Day2.sql` for intermediate concepts
4. Practice each topic before moving forward

### For Intermediate Learners:
1. Study `grpby.sql` - Understand data aggregation
2. Practice with `sqljoins.sql` - Master different JOIN types
3. Work through multi-table queries

### For Advanced Learners:
1. Tackle `subquery.sql` - Complex nested queries
2. Solve real-world scenarios from the comments
3. Create your own analytical queries

---

## 💡 Learning Approach

Each SQL file includes:
- ✅ **Real-world scenarios** - Business context for each query
- ✅ **Question-answer format** - Clear problem statements
- ✅ **Complete comments** - Detailed explanations
- ✅ **Progressive difficulty** - Gradual skill building
- ✅ **Author attribution** - Student name and registration number

**All queries are contextualized with practical cinema/movie theater scenarios** to make learning engaging and relatable.

---

## 🎓 Learning Outcomes

After completing this course, you will be able to:

- ✅ Write efficient SELECT queries with multiple conditions
- ✅ Filter and sort data effectively
- ✅ Perform data aggregation and summarization
- ✅ Combine data from multiple tables using various JOIN types
- ✅ Create complex subqueries for advanced analysis
- ✅ Analyze real-world data scenarios
- ✅ Optimize queries for performance
- ✅ Generate business-relevant reports

---

## 📊 Query Complexity Progression

```
Level 1: Single-table queries (SELECT, WHERE, LIKE)
         ↓
Level 2: Aggregation (GROUP BY, HAVING, COUNT, SUM)
         ↓
Level 3: Multi-table queries (JOINs)
         ↓
Level 4: Complex nested queries (Subqueries, EXISTS)
         ↓
Level 5: Real-world data analytics
```

---

## 🔗 Related Topics Covered

- **Data Filtering** - WHERE, IN, BETWEEN, LIKE
- **Data Sorting** - ORDER BY (ASC, DESC)
- **Data Aggregation** - GROUP BY, HAVING, COUNT, SUM, AVG
- **Data Combination** - INNER/LEFT/RIGHT/FULL JOINs, UNION
- **Advanced Retrieval** - Subqueries, Correlated Queries, EXISTS
- **Null Handling** - IS NULL, IS NOT NULL, COALESCE
- **Data Transformation** - CASE statements, Casting

---

## 👤 Author & Credit

**Student Name:** Sanjay Kumar S  
**Registration No.:** RA2311026010321  
**Course:** DAA - Data Analytics and Analysis  
**Institution:** STEP Classes

---

## 📝 Notes

- All SQL files are tested on MySQL 5.7+
- Database schemas are normalized for realistic scenarios
- Queries include detailed comments explaining the business logic
- Sample data reflects real-world cinema operations

---

## 🎯 Quick Reference

### Command Summary:
```sql
-- Basic Selection
SELECT column1, column2 FROM table;

-- Filtering
SELECT * FROM table WHERE condition;

-- Sorting
SELECT * FROM table ORDER BY column DESC;

-- Aggregation
SELECT genre, COUNT(*) FROM movie GROUP BY genre;

-- Joining Tables
SELECT * FROM table1 t1 INNER JOIN table2 t2 ON t1.id = t2.id;

-- Subqueries
SELECT * FROM table WHERE id IN (SELECT id FROM other_table);
```

---

## 📞 Support & Resources

- Review the PDF documentation included in the repository
- Check query comments for detailed explanations
- Use the provided database dumps for practice
- Follow the step-by-step progression

---

## 📄 License

This educational material is provided for learning purposes.

---

**Happy Learning! 🚀 Master SQL and Data Analytics through practical, real-world scenarios!**

