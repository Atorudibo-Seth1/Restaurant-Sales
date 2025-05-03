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
Red Oven is a thriving restaurant chain specialising in a wide range of gourmet pizzas. With high daily order volumes from customers, the restaurant generates extensive sales and operational data that offers valuable opportunities for performance optimization.

This project leverages sales and operations data to deliver actionable insights that can drive performance, improve customer experience, and guide strategic decisions. The analysis focuses on optimizing product offerings, understanding customer behavior, and enhancing operational efficiency.

- Sales Trends Analysis: Evaluation of revenue, total quantity sold, and order volumes over time. Monthly and daily patterns were analyzed to pinpoint peak seasons and optimal sales periods.
- Product-Level Performance: Review of pizza offerings to identify high-performing products based on revenue, quantity, and average order value.
- Category Contribution: Insight into the revenue impact of major pizza categories - Veggie, Chicken, Supreme, and Classic - helping guide inventory planning and promotional focus.
- Temporal Dynamics: Analysis of order behavior by hour and day of the week, supporting smarter resource allocation and targeted marketing during peak demand windows.

An interactive Tableau dashboard can found and downloaded here.

The SQL utilised to inspect and perform quality checks cam br found here.

Targeted SQL queries for the EDA can be found here.

## Data Structure
Red Oven's database as seen below consists of four tables: orders, order_details, pizzas, pizza_types

Prior to beginning the analysis, a variety of checks were conducted for quality control and familiarisation with the datasets. The SQL queries utilised can be found here.

## Executive Summary
### Overview of Findings
After generating a total revenue of **$817.9K** across **21,350** orders and **49,574** units sold, sales activity showed consistent monthly distribution with a noticeable peak in **July**. This suggests a potential seasonal factor or promotional event worth exploring.

Order patterns indicate mid-week days, particularly Wednesday - experience the highest order volumes, while Friday sees a slight dip. Additionally, most customer activity is concentrated between **12 PM** and **2 PM** and again between **5 PM** and **7 PM**, aligning with lunch and dinner hours.

Large-sized pizzas drive the highest revenue amongst all categories. Classic leads all categories in revenue, quantity and order count

While average order values (AOV) remain steady across most offerings, niche pizzas like The Greek command higher AOVs while maintaining a sizable revenue share.

These trends suggest strong appeal for familiar, large-format options, while higher-priced niche items may benefit from targeted promotions to boost visibility and lift order volumes.

Below is a snippet of the Tableau dashboard and more sinppets are made available throughout the report. The complete interactive dashboard can be found here.

### Sales Trend
- **Total revenue reached $817.9K from 21,350 orders and 49,574 units sold**. July recorded the highest performance across all three KPIs - revenue, quantity sold, and order count - 
 indicating a temporary surge in demand. Other months maintained a relatively steady performance with minimal variation, suggesting consistent baseline demand.
- **Weekly and Hourly Demand Patterns** - Midweek days - particularly Wednesday - consistently recorded the highest order volumes, while Friday showed the lowest, pointing to an opportunity to improve performance heading into the weekend.
- **Hourly trends reveal peak ordering activity between 12 PM and 2 PM, followed by another rise between 5 PM and 7 PM**. These align with typical mealtimes and reinforce the importance of operational efficiency during these high-volume windows.

These patterns can inform targeted timing for promotions, staffing, and inventory preparation.

### Product Performance
- Pizza sales are widely distributed across products, with no single item dominating revenue. The top 5 pizzas by revenue - Thai Chicken, Barbecue Chicken, California Chicken, Classic Deluxe, and Spicy Italian—generated a combined $200.6K, representing 24.5% of the total $817.9K revenue. This highlights a diverse customer preference rather than reliance on a few bestsellers.
- The Pepperoni and Big Meat Pizzas achieved high sales volume - over 2,400 and 1,900 units respectively but had the lowest AOVs at $13.24 and $12.68. These items generate revenue primarily through volume and could benefit from strategic pricing adjustments.
- Despite having the highest AOV at $24.14, the Brie Carre Pizza contributed only $11.6K (1.4%) in revenue, making it the lowest-earning item indicating limited volume uptake even at premium pricing.

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
