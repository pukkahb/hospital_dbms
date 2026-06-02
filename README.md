# 🏥 Hospital Management Database System (HMDB)

A fully normalised relational database for managing hospital operations — built in SQL from ground up, progressing through every stage of normalisation (1NF → 2NF → 3NF → BCNF) and extended with stored procedures, triggers, and advanced queries.

---

## 📁 Project Structure

```
hospital_dbms/
├── assets/                         # ERDs and schema diagrams
│   ├── HMDB.svg                    # Entity-Relationship Diagram (vector)
│   ├── HMDB.png                    # ERD (raster)
│   ├── HMDB1.png                   # Alternate ERD view
│   └── HMDB crttable.png           # CREATE TABLE visualisation
│
├── docs/                           # Design documentation
│   ├── HMDB.doc                    # Full project write-up
│   ├── HMDB 1nf.doc                # First Normal Form analysis
│   ├── HMDB 2nf.doc                # Second Normal Form analysis
│   ├── HMDB 3nf.doc                # Third Normal Form analysis
│   ├── HMDB bcnf.doc               # Boyce-Codd Normal Form analysis
│   └── 17CG023178_23PBF02622.pdf   # Project report
│
└── sql/
    ├── 1_initial_schema_and_data/  # Base schema + seed data
    │   ├── hmsdb.sql               # Original schema definition
    │   ├── hmsdbs.sql              # Schema with constraints
    │   ├── hmsdbins.sql            # Initial data inserts
    │   └── hmsdb_insaft1nf.sql     # Data inserts post-1NF
    │
    ├── 2_normalization/            # Progressive normalisation steps
    │   ├── hmsdb1nf.sql            # First Normal Form
    │   ├── hmsdb2nf.sql            # Second Normal Form
    │   ├── hmsdb3nf.sql            # Third Normal Form
    │   └── hmsdbbcnf.sql           # Boyce-Codd Normal Form
    │
    └── 3_advanced_features/        # Stored routines & queries
        ├── hmsdbfunc.sql           # User-defined functions
        ├── hmsdbproc.sql           # Stored procedures
        ├── hmsdbtrig.sql           # Triggers
        └── hmsdbqry.sql            # Advanced queries
```

---

## 🗃️ Database Overview

The HMDB models the core entities of a hospital environment:

| Entity | Description |
|---|---|
| **Patient** | Demographics, admission details, ward assignment |
| **Doctor** | Specialisation, department, schedule |
| **Nurse** | Ward assignment, shift details |
| **Department** | Hospital departments and their heads |
| **Ward** | Capacity, type, assigned nursing staff |
| **Appointment** | Patient-doctor consultations |
| **Prescription** | Medications issued per patient per visit |
| **Bill** | Itemised billing per patient |

---

## 🔢 Normalisation Journey

The schema was designed iteratively, documenting anomaly elimination at each stage:

| Stage | File | What Changed |
|---|---|---|
| **Unnormalised** | `hmsdb.sql` | Raw schema with repeating groups and composite attributes |
| **1NF** | `hmsdb1nf.sql` | Atomic values; eliminated repeating groups; added primary keys |
| **2NF** | `hmsdb2nf.sql` | Removed partial dependencies on composite keys |
| **3NF** | `hmsdb3nf.sql` | Removed transitive dependencies |
| **BCNF** | `hmsdbbcnf.sql` | Every determinant is a candidate key |

---

## ⚙️ Advanced SQL Features

### Stored Procedures (`hmsdbproc.sql`)
- Admit / discharge a patient
- Generate billing summaries
- Schedule appointments with conflict detection

### Triggers (`hmsdbtrig.sql`)
- Auto-update bed availability on admission/discharge
- Audit log on record modification
- Prevent double-booking of doctors

### User-Defined Functions (`hmsdbfunc.sql`)
- Calculate patient age from DOB
- Compute total bill with tax
- Determine ward occupancy rate

### Advanced Queries (`hmsdbqry.sql`)
- Patients per doctor (aggregation)
- Unpaid bills report (JOIN + filter)
- Most prescribed medications (GROUP BY + ORDER BY)
- Available beds by ward (subquery / window function)

---

## 🚀 Getting Started

### Prerequisites
- MySQL 8.0+ or PostgreSQL 14+ (SQL is ANSI-compatible with minor dialect adjustments)
- A SQL client: MySQL Workbench, DBeaver, pgAdmin, or `psql`/`mysql` CLI

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/<your-username>/hospital_dbms.git
cd hospital_dbms

# 2. Create the database
mysql -u root -p -e "CREATE DATABASE hmdb;"

# 3. Load schema (run in order)
mysql -u root -p hmdb < sql/1_initial_schema_and_data/hmsdb.sql
mysql -u root -p hmdb < sql/1_initial_schema_and_data/hmsdbs.sql
mysql -u root -p hmdb < sql/1_initial_schema_and_data/hmsdbins.sql

# 4. Apply final normalised schema
mysql -u root -p hmdb < sql/2_normalization/hmsdbbcnf.sql

# 5. Load advanced features
mysql -u root -p hmdb < sql/3_advanced_features/hmsdbproc.sql
mysql -u root -p hmdb < sql/3_advanced_features/hmsdbtrig.sql
mysql -u root -p hmdb < sql/3_advanced_features/hmsdbfunc.sql
```

---

## 📐 Entity-Relationship Diagram

![ERD](assets/HMDB.png)

---

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

---

## 📄 License

This project is for academic and educational purposes.

---

## 👤 Author

**Tayme** — [GitHub](https://github.com/<your-username>)
