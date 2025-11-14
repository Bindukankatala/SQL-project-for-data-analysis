# call-center-data-analysis(interactive dashboard with excel)
## Project Objective
The primary objective of this project is to analyze the 2023 operational performance of a customer call center using Microsoft Excel. By processing over 1,000 call records, this project aims to solve critical business challenges related to staffing efficiency, revenue maximization, and representative performance. The goal is to transform raw data into actionable insights that identify Trends, highlight Top 10 high-value customers, and pinpoint specific representatives requiring satisfaction training to improve overall service quality.

## 📂 Dataset Used
**[Call Center Records](https://github.com/Bindukankatala/call-center-data-analysis-excel/blob/417ce948bcdd0a007418a67af1de9676e5a265a1/Copy%20of%2007.sample-data-excel-portfolio-project%20og%20dash%20board.xlsx)** 

## ❓ Questions {KPIs}
To derive meaningful value from the data, the analysis focused on answering the following business questions:
1.  **How many calls are we getting by customer?** (Volume Analysis)
2.  **Who are our top 10 customers?** (Key Account Management)
3.  **Who are the top 10 customers for a specific representative?** (Individual Representative Performance)
4.  **Call duration analysis:** What is the distribution of call lengths?
5.  **How busy is our call center in 2023?** (Traffic Analysis)
6.  **Year To Date Sales Analysis:** What is the total revenue trend?
7.  **Which days of the week are the busiest?** (Staffing Optimization)
8.  **Is there a link between call duration and satisfaction rating?** (Correlation Analysis)
9.  **Should we hire extra people in any specific months?** (Capacity Planning)
10. **Time Wasters:** Which customers call the most but buy the least? (Efficiency Check)
11. **Rep Training:** Which representative could use a satisfaction training program? (Performance Improvement)

## ⚙️ Process
The project was executed using **Microsoft Excel** following a structured data analysis workflow:

1.  **Data Cleaning (ETL):**
    * Imported raw `.csv` data into Excel.
    * Standardized date formats in the `Call Timestamp` column.
    * Checked for and removed duplicate records to ensure accuracy.
    * Created calculated columns for "Call Duration Bins" and extracted "Day of Week" from timestamps.

2.  **Data Analysis:**
    * Utilized **Pivot Tables** to aggregate data by Representative, City, and Date.
    * Calculated key metrics such as **Financial year	day of the week**, **Duration bucket** and **Rating Rounded**.
    * Segmented data to identify "Time Wasters" (High Call Volume vs. Low Revenue) and low-performing representativess.

3.  **Dashboard Construction:**
    * Designed a dynamic layout using **Slicers** for interactive filtering (by Representative).
    * Implemented **Conditional Formatting** to highlight top and bottom performers.
    * Integrated visual elements including Line Charts for daily/monthly trends, Bar Charts for top customers, and Scatter Plots for duration vs. satisfaction.
    
## 📊 Dashboard
![Call Center Dashboard](https://github.com/Bindukankatala/call-center-data-analysis-excel/blob/417ce948bcdd0a007418a67af1de9676e5a265a1/dashboard-image-excel.png)
*(The dashboard visualizes Call Trends, Gender Demographics, Representative Performance, and Rating Distributions)*

## 💡 Insights Derived from the Project
By analyzing the visualized data to answer the project questions, the following key insights were uncovered:

* **Traffic & Staffing:** The "Busiest Days" analysis revealed that **Fridays** experience the highest call volume, suggesting a need for increased staffing on weekends/Fridays.
* **Sales Performance:** The center generated a total revenue of **$96,623**. The "Year To Date Sales" trend shows specific seasonal peaks where hiring temporary staff would be beneficial.
* **Customer Behavior:** We identified the **Top 10 Customers** who drive the majority of revenue. Conversely, the "Time Wasters" analysis flagged frequent callers with low purchase history, allowing for script adjustments.
* **Rep Performance & Training:**
    * Specific representatives (visible in the dashboard breakdown) consistently receive lower Customer Satisfaction scores despite handling average call volumes.
    * **Correlation:** The analysis showed that longer calls do *not* always equal higher satisfaction; in fact, optimal satisfaction often correlates with medium-duration calls (efficient resolution).

## 🚀 Final Conclusion
The dashboard successfully provides a 360-degree view of the call center's Performance. The analysis highlights that while overall customer satisfaction is high (Avg Rating 4.0), the business can drive significant value by:
1.  **Targeting Training:** Enrolling the identified underperforming representatives in a "Satisfaction Training Program."
2.  **Optimizing Schedules:** Aligning staff shifts with the "Busiest Days" and "Peak Months" identified.
3.  **Focusing on Key Accounts:** Prioritizing service for the "Top 10 Customers" to protect the core revenue stream.
