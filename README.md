# ⚾ MLB Historical Player Data Analysis (SQL Project)

## 📖 Project Overview
This project explores **Major League Baseball (MLB)** historical player data using **MySQL**.  
The dataset contains player demographics, salaries, schools, and career details.  
The focus is on applying **SQL querying skills**—including joins, window functions, CTEs, and aggregations—to answer real-world business questions.



## 🗂️ Dataset
The dataset consists of 4 main tables:
- **players** → player demographics, debut/final game, height, weight, batting/throwing hand  
- **salaries** → player salaries by year, team, and league  
- **schools** → mapping between players and schools  
- **school_details** → school name, city, state, country  



## ⚙️ Tools Used
- **SQL (MySQL)** → Advanced querying & data analysis    
- **Git & GitHub** → Project documentation & portfolio  



## 🔎 Analysis Overview
The project is divided into 4 parts:

1. **School Analysis** → schools producing MLB players  
2. **Salary Analysis** → team salary spending patterns  
3. **Player Career Analysis** → career lengths & team transitions  
4. **Player Comparison** → attributes like batting hand, height & weight  
 


## 🛠 Skills Demonstrated
- SQL Joins & Subqueries  
- Common Table Expressions (CTEs)  
- Window Functions (NTILE, RANK, ROW_NUMBER, SUM OVER, etc.)  
- Aggregations & Grouping  
- Data Cleaning & Transformation  
- Analytical Thinking & Storytelling with Data  


## ❓ Key Business Questions Answered
### Part I: School Analysis
1. In each decade, how many schools produced MLB players?  
2. Top 5 schools that produced the most players overall.  
3. For each decade, which were the top 3 schools producing the most players?  

### Part II: Salary Analysis
1. Top 20% of teams in terms of **average annual spending**.  
2. Cumulative salary spending for each team over the years.  
3. First year each team’s **cumulative spend surpassed $1B**.  

### Part III: Player Career Analysis
1. Player age at debut, last game, and career length.  
2. Starting & ending teams for each player.  
3. Players who started and ended with the **same team** and played over a decade.  

### Part IV: Player Comparison
1. Which players share the same birthday?  
2. Batting hand distribution (R/L/Both) per team.  
3. How average height & weight at debut have changed across decades.  

## 📊 Key Insights
- The **1990s** saw the highest number of schools producing MLB players.  
- The **New York Yankees** consistently rank among the top 20% of highest spenders.  
- Only 0.65% of MLB players enjoyed **20+ year careers**, debuting in their early 20s and retiring in their 40s.  
- Average **height and weight of players has steadily increased** over decades.This likely reflects shifts in training, nutrition, and emphasis on strength/power.

## 📂 Repository Structure
- `/sql` → All SQL scripts grouped by theme.  
- `/outputs` → Query results (CSV, sample tables).  
- `/data` → Raw dataset (CSV format).  


## 🏆 Key Insights
- Certain schools consistently produced the **highest number of MLB players** across decades.  
- The **top 20% of teams** account for the majority of total salary spending.  
- Several players had **20+ year careers**, while others lasted just a season.  

