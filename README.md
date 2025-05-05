# Restaurant-Sales

# Sales & Product Analytics (Restaurant Performance)
## Table of Contents
- [Project Background](#project-background)
- [Data Structure](#data-structure)
- [Executive Summary](#executive-summary)
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

Large-sized pizzas are the primary revenue drivers across all categories, contributing the most to total sales.

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
- Customer preference for Large sizes is evident—products in this size tier consistently outperform Medium and Small options across every category. Promotions should focus on premium large offerings.
- The Pepperoni and Big Meat Pizzas achieved high sales volume - over 2,400 and 1,900 units respectively but had the lowest AOVs at $13.24 and $12.68. These items generate revenue primarily through volume and could benefit from strategic pricing adjustments.
- Despite having the highest AOV at $24.14, the Brie Carre Pizza contributed only $11.6K (1.4%) in revenue, making it the lowest-earning item indicating limited volume uptake even at premium pricing.

The data is contained in the [DeliveryOptimisation.xlsx](DeliveryOptimisation.xlsx) file along with the dashboard.

<p align="center">
  <img src="OptimisationDashboard.png">
</p>
  
## Recommendations
Based on some of my findings, here are some recommendations I would offer:

- **Promote large-sized pizzas more aggressively**, as they are the top revenue contributors, through “Family Combo” deals and upsell messaging during peak order times.
- **Revamp or replace underperforming premium items like Brie Carre**. Despite its $24.14 AOV, Brie Carre contributed only 1.4% of total revenue, signaling poor customer uptake. Consider bundling it with complementary items or replacing it with a premium option that has broader appeal.
- **Boost sales on underperforming days with targeted incentives**. With Friday being the lowest day for orders, introduce flash deals or limited-time offers during peak meal times (12–2 PM and 5–7 PM). This can help rebalance weekly order volumes and smooth kitchen operations.
- **Introduce a loyalty program to reward frequent peak-hour customers**. Given the high traffic between 12–2 PM and 5–7 PM, incentivize repeat business during these periods with a digital loyalty program (e.g., “Buy 5 Lunches with us, Get 1 Free”) to increase retention and AOV.
- **Leverage large-size pizza popularity with upsell strategies**. Large-sized pizzas dominate revenue contributions. Offer meal bundles featuring large pizzas with small sides or drinks, and promote "Family Size Deals" to further increase AOV and tap into group ordering behavior.
- **Reposition low-AOV high-volume items to increase profitability**. Pepperoni and Big Meat pizzas have high sales but low AOVs ($13.24 and $12.68). Explore strategic price increases, add-on offers, or combo deals to enhance margin without discouraging volume-driven purchases.
