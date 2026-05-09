# Erasmus Curriculum Database

A relational database project that models and compares the Computer
Engineering curricula of three universities to support Erasmus course
equivalency assessment.

## Overview

Students applying for Erasmus exchanges need to match their home
university courses with equivalent courses at the host institution.
This project tackles that problem by designing a unified database
schema that captures the curricula of three universities, enabling
structured comparison and equivalency queries through SQL.

## Repository Structure

| Folder | Content |
|---|---|
| `eer_diagrams/` | Enhanced Entity-Relationship (EER) diagrams |
| `relational_model/` | Relational schema converted from EER |
| `sql/` | Table creation scripts, data insertion and queries |
| `analysis/` | Curriculum comparison findings |

## Methodology

**1. Requirements Analysis**
Entities identified: universities, departments, courses, credits,
prerequisites, semesters and instructors. Relationships and
cardinalities defined before modeling.

**2. EER Diagram Design**
Enhanced ER diagrams were drawn to capture specialization,
generalization and complex relationships between entities.

**3. Relational Model**
EER diagrams converted to a normalized relational schema.
Primary keys, foreign keys and constraints defined for each table.

**4. SQL Implementation**
- DDL: table creation with appropriate data types and constraints
- DML: sample data insertion for all three universities
- Queries: cross-university course comparison, credit equivalency
  lookup, prerequisite chain analysis

## Key Queries

- Find equivalent courses between two universities by course code
- List courses with matching credit hours across institutions
- Retrieve full prerequisite chains for a given course
- Compare semester distributions of two curricula

## Technologies

- SQL (DDL + DML)
- EER and Relational modeling
  
