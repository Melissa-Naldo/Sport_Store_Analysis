# Sport Store Analysis: Understanding the KPIs of a sport store throughout America

## Project links
* [The Analysis Report](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Sport_Store_Analysis.pdf);
* [The original dataset](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Sport_Store_Data_Original.xlsx);
* [The cleaned dataset](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Sport_Store_Data_Cleaned.xlsx);
* [The SQL Exploratory Analysis](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Sport_Store.sql);
* [The Tableau Dashboard](https://public.tableau.com/app/profile/melissa.naldo/viz/Sport_Store_17056903350540/HomeDashboard?publish=yes).


## Introduction:

  This project draws inspiration from Chris French's insightful tutorial, providing a comprehensive guide on how to conduct a meticulous dataset analysis and adopt a data analyst's mindset. Having observed Chris French's analysis, I embarked on conducting my own examination.
	This dataset was collected from a sport store that is widely distributed in the United States and corresponds to the sales information of the year 2022. The excel spreadsheet required thorough cleaning and preparation for analysis, including the calculation of values to fill one of the columns.

 ### Dataset

  Acquired from Chris French's GitHub repository, the dataset comprises two Excel spreadsheets, each serving a distinct purpose: 
* The first sheet, related to customers, contains 2849 rows and 5 columns, all text datatypes: 
  * “customer_id”;
  *	“first_name”;
  *	“last_name”;
  *	“email”;
  *	“State”. 

* The second spreadsheet is about the order information and has 2847 rows and 8 columns:
  *	“date”, is a number data type, ranging from 1st of January of 2022 to the 31st of December of 2022;
  *	“order_id”, is a number data type;
  *	“customer_id”, is the same has in the first spreadsheet;
  *	“sport	revenue”, is a numeric data type with values ranging from 4.61 (minimum) to 474.88 (maximum), averaging 161.37.;
  *	“profit”, is also a numeric data type with values ranging from 45.90 (minimum) to 411.06 (maximum), averaging 100.04;
  *	“shipping_cost”, is in blank and we have to calculate our value;
  *	“rating”, is a number data type and it ranges from 1 to 5 based on the costumers’ experience.

  The dataset was retrieved from [Chris French’s GitHub.](https://github.com/chrisfrenchjr/SQLQueries/blob/main/Sports%20Store%20Data%20(Copy%20for%20Viewers).xlsx) 

 ### List of questions
  
  This analysis seeks answers to critical questions aimed at unravelling underlying patterns in the dataset and guiding strategic decisions for the sports store: 
* I.	Which state has the most buyers?
* II.	Which state has the most profit?
* III.	What was the evolution of the profits in this year?
* IV.	Which day of the week had more buyer’s and profit?
* V.	Which sport had more profit?
* VI.	Which was the most popular?
* VII.	How many costumers does the company have?
 
  These questions will illuminate key aspects of the sports store's performance, paving the way for strategic insights and informed decision-making.

## Conclusion and Recommendations
  The extensive evaluation of the sport store's performance in 2022 has unveiled key insights that are instrumental in shaping strategic decisions for the future. The store's robust financial standing, highlighted by a commendable profit margin of 62%, reflects a strong market presence and customer engagement. Understanding the dynamics of profitability across different sports, months, and locations provides a solid foundation for informed decision-making.
  This analysis has not only provided key insights into the financial standing and market presence of this store but has also answered critical questions guiding strategic decisions:
* The analysis on customer distribution across states revealed that California leads with the highest number of buyers. As well as being the leader in profit generation. Recognizing the contribution of this state to overall profitability is crucial for strategic resource allocation and future growth plans;
*	The monthly performance overview uncovered distinct trends in profit evolution throughout the year. From a challenging start in January, profits consistently grew until reaching a peak in June;
*	The analysis on the days of the week based on order volume and profit revealed that Saturday stands out as the peak day for both the highest number of orders and substantial profit;
*	Determining the most popular sport involved a multifaceted analysis of customer engagement, ratings, and profitability. Soccer emerged as not only the most lucrative, commanding a notable profit margin, but also as a sport with high customer engagement.

  Based on the previous information, there is a high level of confidence in recommending that the company implement the following measures:
*	**Strategic Emphasis on Soccer**: given the notable profit margins, a strategic focus on soccer is recommended. Allocating additional resources and marketing efforts toward this sport can capitalize on its profitability.
*	**Seasonal Marketing Initiatives**: recognizing the heightened profits during summer months, the implementation of targeted marketing and sales measures during this period is advised. This proactive approach aims to maximize profitability during the peak season.
*	**Investment in Top-Performing Stores**: directing investments towards the top five stores with the highest profit and profit margins ensures a concentrated effort to amplify success. This targeted approach acknowledges the significance of these locations in contributing to overall performance.
*	**Optimal Sales Days** - Saturday and Friday: capitalizing on the observed trend of Saturday being the day with the highest number of orders and maximum profit, strategic planning and promotional activities on Saturdays are recommended. Additionally, Friday, being another strong day, should also be a focus for sales initiatives.
*	**Enhancing Rating Per Order**: implementing measures to improve the rating per order, such as introducing point systems or customer benefits, can enhance customer satisfaction. This initiative not only fosters positive customer experiences but also contributes to brand loyalty.
*	**In-Depth Analysis of Reviews**: conducting a detailed analysis of customer reviews is crucial to understanding both positive and negative aspects of the store's performance. This qualitative exploration provides insights into customer sentiments, enabling targeted improvements.

  In conclusion, the sport store's performance analysis has laid the groundwork for a strategic roadmap. The recommended actions align with the identified strengths and opportunities, ensuring a proactive and data-driven approach to future endeavours. By leveraging these insights, the sport store is poised for sustained growth, increased customer satisfaction, and optimized operational efficiency.

## Dashboard
![Sport Store Data Analysis Dashboard - page 1](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Images/Dash1.png)

![Sport Store Sports Analysis Dashboard - page 2](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Images/Dash2.png)

![Sport Store Ratings Analysis Dashboard - page 3](https://github.com/Melissa-Naldo/Sport_Store_Analysis/blob/main/Images/Dash3.png)
