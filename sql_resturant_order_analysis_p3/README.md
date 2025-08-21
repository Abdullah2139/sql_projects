# Restaurant Order Analysis SQL Project

## Project Overview

**Project Title**: Restaurant Order Analysis  
**Level**: Intermediate  
**Domain**: Food Service & Hospitality

This project analyzes restaurant order data to derive insights about menu performance, customer ordering patterns, and revenue optimization. The analysis covers menu item popularity, pricing strategies, and order composition using two main datasets: menu items and order details.

## Objectives

1. **Menu Analysis**: Analyze menu items across different categories and price ranges
2. **Order Pattern Analysis**: Examine customer ordering behaviors and trends
3. **Revenue Analysis**: Identify top-performing items and highest value orders
4. **Category Performance**: Compare performance across different food categories

## Dataset Structure

### Tables
- **menu_items**: Contains menu item details including prices and categories
- **order_details**: Contains order transaction data with timestamps

## Key Analysis Questions

### Menu Items Analysis
- Total number of items on the menu
- Price range analysis (least and most expensive items)
- Category-wise item distribution
- Average pricing by food category
- Italian cuisine specific analysis

### Order Details Analysis  
- Date range of order data
- Total number of orders and items
- Order size analysis (items per order)
- High-volume order identification

### Combined Analysis (Menu + Orders)
- Most and least popular menu items
- Top revenue-generating orders
- Category preferences in high-value orders
- Detailed breakdown of top spending orders

## SQL Techniques Used

- **Basic Queries**: SELECT, WHERE, ORDER BY
- **Aggregate Functions**: COUNT, SUM, AVG, MIN, MAX
- **Grouping**: GROUP BY, HAVING
- **Joins**: LEFT JOIN for combining menu and order data
- **Subqueries**: Nested queries for complex analysis
- **Window Functions**: Advanced analytical queries

## Key Insights

- Menu composition across different food categories
- Price distribution and category-based pricing strategies
- Customer ordering patterns and preferences
- Revenue concentration analysis
- High-value order characteristics

## Files Description

- `menu_table_analysis.sql` - Menu items analysis queries
- `order_table_analysis.sql` - Order details analysis queries  
- `menu_join_order.sql` - Combined analysis using joins
- `menu_items.csv` - Menu items dataset
- `order_details.csv` - Order details dataset

## Getting Started

1. Import both CSV files into your SQL database
2. Create the `resturant_order_db` database
3. Run the SQL scripts in sequence:
   - First: `menu_table_analysis.sql`
   - Second: `order_table_analysis.sql` 
   - Third: `menu_join_order.sql`

## Business Applications

- Menu optimization and pricing strategies
- Inventory management based on item popularity
- Customer behavior analysis
- Revenue maximization strategies
- Category performance evaluation

---

**Project Type**: Data Analysis | **Database**: MySQL | **Skills**: SQL Joins, Aggregations, Business Analytics
