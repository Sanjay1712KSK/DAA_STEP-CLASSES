# 📊 DAA - DATA ANALYTICS AND ANALYSIS (MySQL)
## STEP Classes - Database & SQL Practice Repository

> **Beginner to Advanced SQL Learning Journey** | *Data Analytics & Database Design*

---

## 📋 Overview

This comprehensive repository contains **SQL practice materials**, **real-world database scenarios**, **Knime data workflows**, and **analytics solutions** for learning Data Analytics and Analysis using MySQL and modern BI tools. It's designed for step-by-step progression from fundamental SQL concepts to advanced data analytics techniques.

The course material is built around a **real-world movie booking and management system** (UNOX Cinema Database) that covers essential data analytics concepts alongside practical workflow implementations using Knime and GDP360.

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

### **Level 4: Data Analytics & Visualization**
- ✅ **Knime Workflows** - Data processing and transformation
- ✅ **GDP360 Analytics** - Business intelligence dashboards
- ✅ **Hackathon Solutions** - Real-world problem solving

---

## 📁 Repository Structure

```
DAA_STEP-CLASSES/
├── README.md                          # This file
├── MySQL/                             # SQL Practice & Database Files
│   ├── Day1.sql                      # SELECT, WHERE, LIKE, IN queries
│   ├── Day2.sql                      # Aliases, BETWEEN, intermediate queries
│   ├── ordby.sql                     # ORDER BY sorting
│   ├── isnull.sql                    # NULL handling
│   ├── grpby.sql                     # GROUP BY & aggregation
│   ├── sqljoins.sql                  # JOIN operations
│   ├── subquery.sql                  # Subqueries & EXISTS
│   ├── hackathon1scriipts.sql        # Hackathon challenge solutions
│   ├── testhackfile.sql              # Additional test queries
│   ├── Dump20251008.sql              # Complete UNOX database dump (~26.5 MB)
│   ├── UNOX.sql                      # UNOX database backup (~10 MB)
│   ├── C1.pdf                        # Course materials & documentation
│   ├── index.pdf                     # Database schema index
│   ├── dump.pdf                      # Database structure documentation
│   ├── Hackathon Solutions/          # Hackathon solution files
│   ├── Uploaded files in GCR/        # Cloud resources
│   └── [Additional PDFs]             # Support documentation
├── Knime/                            # Data Workflow & Analytics
│   ├── knimedatabasequeries.sql     # Knime-specific database queries
│   └── Knime Workflow-GDP360/       # GDP360 Knime workflow files
├── gdp360/                           # GDP360 Analytics Project
│   ├── workflow.knime                # Knime workflow definition
│   ├── workflow.svg                  # Workflow visualization
│   ├── workflow-metadata.xml         # Workflow metadata
│   ├── .artifacts/                   # Generated artifacts
│   └── workflowset.meta              # Workflow configuration
├── GDP360 - Solution/                # GDP360 solution files
└── .gitignore                        # Git ignore rules
```

---

## 📚 Detailed File Guide

### **MySQL SQL Practice Files**

| File | Topic | Level | Description |
|------|-------|-------|-------------|
| `Day1.sql` | SELECT, WHERE, LIKE, IN | Beginner | Introduction to data retrieval and filtering with cinema scenarios |
| `Day2.sql` | SELECT, WHERE, Aliases, BETWEEN | Beginner-Intermediate | Movie, screen, and user queries with multiple scenarios |
| `ordby.sql` | ORDER BY | Beginner | Sorting and ordering query results |
| `isnull.sql` | NULL Handling | Beginner | Working with NULL values in queries |
| `grpby.sql` | GROUP BY & Aggregation | Intermediate | Data grouping, COUNT, SUM, AVG operations |
| `sqljoins.sql` | All Types of JOINs | Intermediate-Advanced | INNER, LEFT, RIGHT, FULL OUTER, CROSS JOIN operations |
| `subquery.sql` | Subqueries & EXISTS | Advanced | Complex nested queries and existence checks |
| `hackathon1scriipts.sql` | Hackathon Challenges | Advanced | Real-world problem-solving with advanced SQL |
| `testhackfile.sql` | Test & Practice | Intermediate-Advanced | Additional test scenarios and queries |

### **Database Files**

| File | Size | Description |
|------|------|-------------|
| `Dump20251008.sql` | ~26.5 MB | Complete UNOX database schema with sample data |
| `UNOX.sql` | ~10 MB | UNOX database backup |
| `C1.pdf` | 1.36 MB | Comprehensive course materials and documentation |
| `index.pdf` | 104 KB | Database schema index and reference |
| `dump.pdf` | 1.79 MB | Detailed database structure documentation |

### **Analytics & Workflows**

| Directory | Purpose | Contents |
|-----------|---------|----------|
| `Knime/` | Data processing workflows | Knime-based ETL and analytics workflows |
| `gdp360/` | GDP360 project files | Workflow definitions, metadata, visualizations |
| `Hackathon Solutions/` | Challenge solutions | Solved hackathon queries and approaches |
| `GDP360 - Solution/` | Solution repository | GDP360 specific solutions |

---

## 🎬 Database Schema: UNOX Cinema System

The practice queries use a **real-world movie theater management database** with the following structure:

### Core Tables:
- **user** - Customer/member information and profiles
- **movie** - Movie catalog with ratings and details
- **screen** - Theater screens and seating capacities
- **show** - Movie show times and schedules
- **booking** - Customer bookings and reservations
- **seat** - Theater seat details and availability
- **payment** - Transaction records and payment info
- **review** - Customer reviews and ratings
- **fooditem** - Snack menu items and pricing
- **foodorder** - Food ordering records
- **membership** - Loyalty program details
- **moviecast** - Movie cast and crew information

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
Level 5: Analytics workflows (Knime, GDP360)
```

---

## 🚀 Getting Started

### Prerequisites:
- **MySQL Server** (5.7 or higher)
- **MySQL Client or Workbench**
- **Knime Analytics Platform** (for workflow files)
- **Basic understanding** of databases
- **GDP360** (optional, for analytics dashboards)

### Setup Instructions:

#### 1. **Database Setup**
```bash
# Import the complete UNOX database
mysql -u username -p < MySQL/Dump20251008.sql

# Or use the backup version
mysql -u username -p < MySQL/UNOX.sql

# Connect to the database
mysql -u username -p unox
```

#### 2. **SQL Practice**
```bash
# Method 1: Using MySQL Workbench
# Open MySQL/Day1.sql in Workbench and execute queries

# Method 2: Using MySQL CLI
mysql -u username -p unox < MySQL/Day1.sql
```

#### 3. **Knime Workflows**
- Open Knime Analytics Platform
- Import the workflow from `gdp360/` directory
- Configure database connections
- Execute the workflow for data processing

#### 4. **Progressive Learning**
- Start with `Day1.sql` - Learn SELECT and WHERE
- Progress through ordering, NULL handling
- Move to grouping and aggregation
- Master JOINs and subqueries
- Explore analytics workflows

---

## 📖 How to Use This Repository

### For Complete Beginners:
1. **Start Here**: `MySQL/Day1.sql` - Learn SELECT and WHERE clauses
2. **Next**: `MySQL/ordby.sql` - Master sorting
3. **Then**: `MySQL/isnull.sql` - Handle NULL values
4. **Progress**: `MySQL/Day2.sql` - Intermediate concepts
5. **Practice**: Write your own queries using the scenarios
6. **Review**: Check PDF documentation for explanations

### For Intermediate Learners:
1. **Study**: `MySQL/grpby.sql` - Data aggregation techniques
2. **Master**: `MySQL/sqljoins.sql` - Different JOIN types
3. **Practice**: Multi-table complex queries
4. **Challenge**: Hackathon problem files
5. **Explore**: Knime workflows for data processing

### For Advanced Learners:
1. **Tackle**: `MySQL/subquery.sql` - Nested and correlated queries
2. **Solve**: `MySQL/hackathon1scriipts.sql` - Real-world challenges
3. **Build**: `gdp360/` - Analytics workflows
4. **Create**: Custom analytical queries
5. **Optimize**: Performance tuning and complex aggregations

### For Analytics Focus:
1. **Database**: Import UNOX and explore structure
2. **Workflows**: Study the `gdp360/` workflow
3. **Processing**: Understand Knime data pipelines
4. **Visualization**: Explore GDP360 dashboards
5. **Practice**: Build your own analytics workflows

---

## 💡 Learning Approach

Each component in this repository includes:

### SQL Files:
- ✅ **Real-world scenarios** - Cinema/movie theater context
- ✅ **Question-answer format** - Clear problem statements
- ✅ **Complete comments** - Detailed explanations
- ✅ **Progressive difficulty** - Gradual skill building
- ✅ **Author attribution** - Student credit

### Workflows:
- ✅ **Data processing pipelines** - ETL demonstrations
- ✅ **Visual workflow design** - Understanding data flow
- ✅ **Practical examples** - Real analytics scenarios
- ✅ **Documentation** - Metadata and configurations

---

## 🎓 Learning Outcomes

After completing this course, you will be able to:

- ✅ Write efficient SELECT queries with multiple conditions
- ✅ Filter, sort, and manipulate data effectively
- ✅ Perform data aggregation and complex summarization
- ✅ Combine data from multiple tables using various JOIN types
- ✅ Create complex subqueries for advanced analysis
- ✅ Analyze real-world data scenarios from the cinema domain
- ✅ Optimize queries for performance
- ✅ Generate business-relevant reports
- ✅ Design and execute data workflows
- ✅ Visualize data analytics using BI tools

---

## 🔗 Key Topics Covered

### SQL Fundamentals:
- Data Filtering (WHERE, IN, BETWEEN, LIKE)
- Data Sorting (ORDER BY - ASC, DESC)
- NULL Handling (IS NULL, IS NOT NULL, COALESCE)

### Intermediate SQL:
- Data Aggregation (GROUP BY, HAVING)
- Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
- Advanced Filtering (Multiple conditions, CASE)

### Advanced SQL:
- Data Combination (INNER/LEFT/RIGHT/FULL JOINs)
- Complex Queries (Subqueries, Correlated queries)
- Existence Checks (EXISTS, NOT EXISTS)

### Analytics & Workflows:
- Data Pipeline Design (Knime)
- ETL Processes (Extract, Transform, Load)
- Dashboard Creation (GDP360)
- BI Implementation

---

## 📊 Repository Statistics

- **Total Size**: ~39.3 MB
- **SQL Files**: 9 practice files
- **Database Dumps**: 2 complete backups
- **PDF Documentation**: 4 comprehensive guides
- **Workflow Files**: Knime & GDP360 configurations
- **Target Audience**: Beginners to Intermediate learners
- **Created**: June 2026
- **Maintained**: STEP Classes - SRM University

---

## 👤 Author & Credit

**Student Name:** Sanjay Kumar S  
**Registration No.:** RA2311026010321  
**Course:** DAA - Data Analytics and Analysis  
**Institution:** SRM UNIVERSITY - STEP CLASSES - JUNE MONTH  
**Repository:** Comprehensive learning material for SQL, Data Analytics, and BI Tools

---

## 📝 Important Notes

- ✅ All SQL files are tested on MySQL 5.7+
- ✅ Database schemas are normalized for realistic scenarios
- ✅ Queries include detailed comments explaining business logic
- ✅ Sample data reflects real-world cinema operations
- ✅ Workflows are compatible with latest Knime versions
- ✅ GDP360 files include complete configurations
- ✅ Step-by-step learning progression for all levels
- ✅ Hackathon solutions demonstrate advanced techniques

---

## 🎯 Quick SQL Reference

### Basic Selection
```sql
SELECT column1, column2 FROM table;
SELECT * FROM table;
SELECT DISTINCT column FROM table;
```

### Filtering & Conditions
```sql
SELECT * FROM table WHERE condition;
SELECT * FROM table WHERE column BETWEEN value1 AND value2;
SELECT * FROM table WHERE column IN (val1, val2, val3);
SELECT * FROM table WHERE column LIKE 'pattern%';
```

### Sorting & Ordering
```sql
SELECT * FROM table ORDER BY column ASC;
SELECT * FROM table ORDER BY column DESC;
SELECT * FROM table ORDER BY col1, col2;
```

### Aggregation & Grouping
```sql
SELECT COUNT(*) FROM table;
SELECT genre, COUNT(*) FROM movie GROUP BY genre;
SELECT SUM(amount), AVG(amount) FROM booking GROUP BY user_id;
SELECT column, COUNT(*) FROM table GROUP BY column HAVING COUNT(*) > 5;
```

### Joining Tables
```sql
SELECT * FROM t1 INNER JOIN t2 ON t1.id = t2.id;
SELECT * FROM t1 LEFT JOIN t2 ON t1.id = t2.id;
SELECT * FROM t1 RIGHT JOIN t2 ON t1.id = t2.id;
SELECT * FROM t1 FULL OUTER JOIN t2 ON t1.id = t2.id;
```

### Subqueries & Advanced
```sql
SELECT * FROM table WHERE id IN (SELECT id FROM other_table);
SELECT * FROM table WHERE EXISTS (SELECT 1 FROM other WHERE condition);
SELECT * FROM table WHERE rating > (SELECT AVG(rating) FROM table);
```

---

## 📞 Support & Resources

### Documentation:
- 📄 `MySQL/C1.pdf` - Complete course materials
- 📄 `MySQL/index.pdf` - Database schema reference
- 📄 `MySQL/dump.pdf` - Detailed structure guide

### Practice Files:
- 💻 Start with SQL files in progressive order
- 🔍 Review PDF documentation for context
- 🧪 Experiment with query variations
- 📝 Write custom queries based on scenarios

### Workflows:
- 🔧 Import Knime workflows from `gdp360/`
- 📊 Execute and modify for practice
- 🎯 Build your own analytics pipelines
- 📈 Generate insights using GDP360

---

## 📄 License

This educational material is provided for learning purposes within STEP Classes, SRM University.

---

## 🌟 Key Highlights

✨ **Comprehensive Learning Path** - From SQL basics to advanced analytics  
✨ **Real-World Database** - Cinema management system for practical learning  
✨ **Multiple Tools** - MySQL, Knime, and GDP360 coverage  
✨ **Hackathon Solutions** - Challenge problems with detailed solutions  
✨ **Complete Documentation** - PDFs and inline comments throughout  
✨ **Progressive Structure** - Level-based learning approach  
✨ **Practical Workflows** - Ready-to-use analytics pipelines  

---

**Happy Learning! 🚀 Master SQL, Data Analytics, and BI Tools through practical, real-world scenarios!**

*For questions or clarifications, refer to the PDF documentation or review the inline comments in SQL files.*
