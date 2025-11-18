# movie-database-analysis-project-mysql
## Project Objective
This project is to design and analyze a relational Movie Database using SQL by creating structured tables, defining relationships, and performing analytical queries. The project focuses on building a normalized schema for movies, directors, and box office data, and applying SQL operations such as joins, subqueries, aggregations, constraints, and filtering to extract meaningful insights. This project demonstrates the ability to work with real-world datasets, enforce data integrity through foreign keys, and perform advanced SQL queries to analyze trends such as average budgets, yearly performance, and director-wise movie details..

## 📂 Dataset Used 
**[Tables](https://github.com/Bindukankatala/SQL-project-for-data-analysis/blob/main/Data%20Tables.sql)** 
**[Data tables](https://github.com/Bindukankatala/movie-database-management-project-mysql/blob/main/Data%20Insertion.sql)**

## ❓ Questions {KPIs}
To derive meaningful insights from the movie database, the analysis focused on answering the following key business questions:

1. **Which movies have the highest and lowest budgets?**  
   (Budget Performance Analysis)

2. **What is the average movie rating across all films?**  
   (Quality Benchmarking)

3. **How many movies were released each year?**  
   (Yearly Production Trend)

4. **Who are the top directors based on the number of movies directed?**  
   (Director Productivity)

5. **Which movies have budgets higher than the overall average?**  
   (High-Budget Outlier Identification)

6. **What is the average budget by release year?**  
   (Year-over-Year Budget Trend)

7. **How do movie ratings vary across languages?**  
   (Audience Preference Insights)

8. **What is the minimum, maximum, and average movie duration?**  
   (Runtime Analysis)

9. **Which directors consistently produce highly rated movies?**  
   (Director Quality Assessment)

10. **Which languages produce the highest number of movies?**  
    (Language-Based Market Share)

## ⚙️ Process
The project was executed using **MySQL** following a structured SQL data analysis workflow:

1. **Database Design & Setup:**
   * Created a new database schema for the project.
   * Designed three relational tables: `MOVIES`, `DIRECTORS`, and `BOX_OFFICE`.
   * Defined primary keys and foreign key relationships to ensure data integrity.
   * Selected appropriate data types such as `YEAR`, `INT`, `VARCHAR`, and `DECIMAL`.

2. **Data Insertion & Preparation:**
   * Inserted sample records into each table.
   * Ensured referential consistency between Movies and Directors using `DIRECTOR_ID`.
   * Validated all data entries for missing values, incorrect formats, and inconsistencies.
   * Performed initial checks using `SELECT`, `ORDER BY`, and `DISTINCT` to confirm data quality.

3. **Data Analysis:**
   * Used **JOIN operations** (INNER JOIN, LEFT JOIN) to combine tables for multi-table insights.
   * Applied **aggregate functions** such as `AVG()`, `MAX()`, `MIN()`, and `COUNT()` to compute KPIs.
   * Utilized **GROUP BY** and **HAVING** clauses to analyze trends by year, language, and director.
   * Executed **subqueries** to identify high-budget movies and compare values against global averages.

4. **Insight Generation:**
   * Evaluated budget distribution to find highest and lowest budget movies.
   * Analyzed yearly trends including movies released per year and average budget per year.
   * Assessed director performance based on movie count and average ratings.
   * Identified language-based patterns in production volume and audience ratings.

    
## Analysed Data
![movie tables analysis](https://github.com/Bindukankatala/SQL-project-for-data-analysis/blob/main/Analysis%20Queries.sql)
![movie tables analysis](https://github.com/Bindukankatala/SQL-project-for-data-analysis/blob/main/Analysis%20Queries%202.sql)


## 💡 Insights Derived from the Project
By analyzing the SQL queries and exploring relationships across the Movies, Directors, and Box Office tables, the following key insights were uncovered:

* **Budget Analysis:**  
  The highest-budget movies showed no direct correlation with ratings, indicating that large budgets do not guarantee better audience reception. Several low-budget films performed equally well in terms of ratings.

* **Director Performance:**  
  A few directors consistently produced highly rated movies, demonstrating strong creative influence. Meanwhile, some directors had high movie counts but average or below-average ratings, highlighting the difference between productivity and quality.

* **Yearly Trends:**  
  The analysis revealed fluctuations in the number of movies released each year. Some years displayed significant increases in production, indicating industry growth, while others showed a drop due to budget or market constraints.

* **Language-Based Insights:**  
  Certain languages dominated movie production volume, while others, though fewer in number, achieved higher average ratings — suggesting niche but high-quality film industries.

* **Movie Duration Patterns:**  
  Runtime analysis showed that most movies fall within a common duration range. Very short or very long movies tended to have more extreme rating variances, indicating mixed audience reception.

* **Budget vs. Rating Relationship:**  
  Movies with above-average budgets did not always outperform average-budget films in ratings. This highlights the importance of direction, storytelling, and execution rather than just financial investment.

## 🚀 Final Conclusion
The SQL Movie Database Project provides a comprehensive, data-driven understanding of movie performance, director impact, and industry trends. The analysis reveals that while overall movie quality remains consistent across years and languages, the industry can unlock greater value by:

1. **Strengthening Director Evaluation:**  
   Identifying consistently high-performing directors enables better production planning and collaboration decisions.

2. **Budget Optimization:**  
   Since high budgets do not always guarantee higher ratings, production houses can reallocate resources more efficiently by investing in strong storytelling and direction rather than overspending on budget-heavy projects.

3. **Targeting High-Value Segments:**  
   Languages and years with strong audience ratings represent potential markets for future expansion and targeted movie releases.

4. **Focusing on Movie Duration Trends:**  
   Understanding the duration ranges that resonate best with audiences helps in defining ideal movie lengths for higher viewer satisfaction.

Overall, this project demonstrates the ability to transform raw SQL data into actionable insights that can support strategic decisions within the film industry.


