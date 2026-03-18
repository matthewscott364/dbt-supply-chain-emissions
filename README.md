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

<p>CSV (Unity Catalog Volume)<p/>
<p>↓<p/>
<p>Raw Table (Databricks)<p/>
<p>↓<p/>
<p>dbt Staging Layer<p/>
<p>↓<p/>
<p>Dimensional Model (Fact + Dimension)<p/>
<p>↓<p/>
<p>Intermediate Business Logic Layer<p/>
<p>↓<p/>
<p>Analytics Marts (BI-ready)<p/>
<p>↓<p/>
<p>Power BI Dashboard (optional)<p/>

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

## 🧪 dbt Commands

```bash
dbt run
dbt test
dbt docs generate
dbt docs serve
