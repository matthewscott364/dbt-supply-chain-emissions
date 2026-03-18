# 🌱 Supply Chain Emissions Analytics (dbt + Databricks)

## 📌 Overview
This project is an end-to-end analytics engineering pipeline that transforms raw NAICS-based greenhouse gas (GHG) emission factor data into analytics-ready models using **dbt** and **Databricks (Unity Catalog)**.

The goal is to analyze **carbon intensity across industries** and provide structured datasets for business intelligence and sustainability reporting.

---

## 🧠 Business Problem
Organizations need to understand the carbon impact of their supply chain spending.

This project answers:
- Which industries have the highest emissions per dollar spent?
- How do margins impact emissions?
- How can emissions data be modeled for analytics and reporting?

---

## 🏗️ Architecture

CSV (Unity Catalog Volume)
↓
Raw Table (Databricks)
↓
dbt Staging Layer
↓
Dimensional Model (Fact + Dimension)
↓
Intermediate Business Logic Layer
↓
Analytics Marts (BI-ready)
↓
Power BI Dashboard (optional)

---

## 🧱 Tech Stack

- **Databricks** (Serverless SQL Warehouse)
- **Unity Catalog Volumes** (data storage)
- **dbt (dbt-databricks)** (transformations)
- **Delta Lake** (storage format)
- **SQL** (modeling)
- **Power BI** (optional visualization)

---

## 📊 Data Model

### 🔹 Source
- `raw_supply_chain_emission_factors`

### 🔹 Staging
- `stg_supply_chain_emissions`

### 🔹 Core Models
- `dim_industry`
- `fct_emission_factors`

### 🔹 Intermediate
- `int_emission_enriched`

### 🔹 Marts
- `industry_emission_rankings`
- `emission_intensity_summary`
- `ghg_comparison`

---

## ⭐ Key Features

- Built a **dimensional model (star schema)** using NAICS industry data
- Created **fact and dimension tables** for scalable analytics
- Implemented **dbt tests** (not_null, relationships, accepted_values)
- Added **business logic transformations**:
  - `margin_impact`
  - `emission_intensity_band`
- Structured project using **dbt best practices**
- Leveraged **Unity Catalog volumes** for governed data ingestion

---

## 📈 Example Insights

- Identify top carbon-intensive industries
- Compare emissions with and without margins
- Segment industries into High / Medium / Low emission categories
- Analyze emissions across greenhouse gas types

---

## 🧪 dbt Commands

```bash
dbt run
dbt test
dbt docs generate
dbt docs serve
