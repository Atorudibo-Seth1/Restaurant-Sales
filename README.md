# Restaurant-Sales

# Sales & Product Analytics (Restaurant Performance)
## Table of Contents
- [Project Background](#project-background)
- [Data Structure](#data-structure)
- [Executive Summary](#executive-summary)
- [Exploratory Questions](#exploratory-questions)
- [Data Sources](#data-sources)
- [Data Analysis](#data-analysis)
- [Findings](#findings)
- [Recommendations](#recommendations)


## Project Background
Red Oven is a thriving restaurant chain specialising in a wide range of gourmet pizzas. With high daily order volumes from in-house customers, the restaurant generates extensive sales and operational data that offers valuable opportunities for performance optimization.

This project leverages sales and operations data to deliver actionable insights that can drive performance, improve customer experience, and guide strategic decisions. The analysis focuses on optimizing product offerings, understanding customer behavior, and enhancing operational efficiency.

- Sales Trends Analysis: Evaluation of revenue, total quantity sold, and order volumes over time. Monthly and daily patterns were analyzed to pinpoint peak seasons and optimal sales periods.
- Product-Level Performance: Review of pizza offerings to identify high-performing products based on revenue, quantity, and average order value.
- Category Contribution: Insight into the revenue impact of major pizza categories — Veggie, Chicken, Supreme, and Classic — helping guide inventory planning and promotional focus.
- Temporal Dynamics: Analysis of order behavior by hour and day of the week, supporting smarter resource allocation and targeted marketing during peak demand windows.

An interactive Tableau dashboard can found and downloaded here.

The SQL utilised to inspect and perform quality checks cam br found here.

Targeted SQL queries for the EDA can be found here.

## Data Structure
Red Oven's database as seen below consists of four tables: orders, order_details, pizzas, pizza_types

Prior to beginning the analysis, a variety of checks were conducted for quality control and familiarisation with the datasets. The SQL queries utilised can be found here.

## Executive Summary
### Overview of Findings

### Exploratory Questions
---
Here are some questions that served as a guide for insights:
1. What is the overall customer satisfaction rate?
2. How many orders are still backlogged?
3. What are the various performances in terms of logistics i.e Drivers and vehicular performances?
4. What is the order completion rate?
5. How long do deliveries take on average as well as delay averages and impact?

### Skills Demonstrated
---
- Using Office Scripts for KPI automation and ad-hoc reporting.
- Creating interactive dashboards
- Using Pivot Tables, slicers etc.
- Critical Thinking and Problem Solving

### Data Sources
---
The data is contained in the [DeliveryOptimisation.xlsx](DeliveryOptimisation.xlsx) file along with the dashboard.


## Data Analysis

<p align="center">
  <img src="OptimisationDashboard.png">
</p>

As seen in the above image, is the interactive dashboard. It contains several KPIs that serve as indicators for important metrics. It also contains slicers that allow the charts to filtered accordingly and reflect the data of the selected button.

### Findings
---
- The average delivery time for an order is about 152 minutes while the average delay incured for an order is 14.5 minutes.
- The current overall customer satisfaction rate is about 32% which is pretty low and below average.
- Bike C is the vehicle incurring the highest delays on average.
- About 49% of orders have been completed at the moment.
- There are currently more orders in backlog than orders that have been completed.
- Route 3 is associated with the highest delays and Route 5 is the lowest.
- Orders with expedited rules are associated with the highest average delays.
  
### Recommendations
---
Based on some of my findings, here are some recommendations I would offer:

1. **Address Delays Across Routes and Vehicles:**
   Conduct detailed analyses of Route 3 and Route 5 to replicate the efficiency factors of Route 5 in other routes. Also diversify or upgrade the fleet if Bike C consistently underperforms compared to other vehicles.

2. **Increase Order Completion Rate:**
   Establish a short-term target to increase the current completion rate from 49% to at least about 70% within a defined period. 

3. **Reassess Expedited Rules:**
   Orders with expedited rules have the highest delays, indicating inefficiency in their processing. Review and streamline these rules for better performance. Limit the number of expedited orders to ensure that they don’t overload available resources.

4. **Address the Backlog Issue:**
   Increase resources (e.g., drivers or vehicles) for orders in backlog while maintaining a balance for ongoing deliveries. Implement a dynamic priority system to ensure older backlogged orders are addressed first.
