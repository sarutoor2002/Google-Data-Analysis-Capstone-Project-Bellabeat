# Google-Data-Analysis-Capstone-Project-Bellabeat
A capstone project for Google's Data Analysis with R Programming course. The project focuses on analyzing FitBit user data to create effective marketing strategies for the smart-tech company, Bellabeat. 
# Bellabeat Fitness Data Analysis

## Business Task
Analyze trends from fitness technology data to create effective marketing strategies centered around an existing Bellabeat product. Marketing strategies will aim to boost Bellabeat’s growth and penetration into the global smart device market. Results of the analysis and recommended strategies will be presented to the Bellabeat executive team.

---

## Data Sources

**FitBit Fitness Tracker Data (a)**  
Kaggle data set containing personal fitness tracker data from thirty users. Users consented to the submission of personal tracker data, including steps, heart rate, and sleep monitoring.

**Sleep, Health, and Lifestyle Dataset (b)**  
Kaggle data set containing sleep, activity, and lifestyle data for 374 men and women. Dataset was created synthetically by owner for illustrative purposes.

> *Note: The two datasets were combined to improve population representation, thereby strengthening the validity of the study conclusions.*

---

## Analysis Results

### Total Daily Step Count
![Total Daily Steps](Total%20Steps.png)
Total daily step counts were combined from both datasets and illustrated using a density plot from the base R package. A mean value of **7116.336 daily steps** was calculated and indicated by a blue dashed line. The data shows slight right skewing.

### Total Minutes Asleep
![Total Minutes Asleep](Total%20Minutes%20Asleep.png)
Total minutes asleep were combined from both datasets and illustrated using a density plot from the base R package. A mean value of **427.9251 minutes** was calculated and indicated by a red dashed line. The data shows two large peaks at around 360 and 450 minutes.

---

## Discussion
The high average for total daily steps suggests increased activity levels among smart-tech users. According to the American Institute for Cancer Research, globally, the average step count is around **5000 steps per day (1)**. As such, the average step count of the FitBit users is more than **2000 steps over the global average**. Increased steps counts have been linked to improved health outcomes and decreased risk of death (2). Therefore, creating effective smart technologies that aims to boost user’s daily steps will prove to be beneficial to the user’s long-term health and wellness.

The two major peaks observed in the plot for time asleep suggests that most participants were either sleeping around **6 or 8 hours**. The higher peak at 6 hours indicates that slightly more participants were sleeping 6 hours than 8 hours. The recommended amount of sleep for adults aged 18 to 60 years old, is **7 or more hours per night (3)**. As such, nearly half of the participants were not obtaining adequate amounts of sleep. Failing to meet the recommended standards may contribute to poorer health outcomes such as weight gain, heart diseases, diabetes, etc. To improve sleep duration among populations, smart-tech may be used to accurately log and review sleep metric, guiding users towards their sleep goals.

---

## Proposed Marketing Strategies

### Emphasize importance of monitoring step count in meeting step goals and in long-term health
Utilizing Bellabeat activity trackers can help individuals understand and visualize their daily activity patterns. More importantly, users can monitor their daily step counts to compare their progress to personal goals and evidence-based recommendations. Recording and reviewing such data is more effective in meeting goals than in the absence of this data, as shown in our analysis of smart-tech users. We saw a higher daily step average among individuals using smart-tech, compared to the global average. Higher step counts have been shown to positively impact both long and short term health, and reduce the risk of death.

### Emphasize importance of monitoring sleep in meeting recommended duration
Bellabeat’s smart-technology records daily sleep metrics. In our analysis, nearly half of the adults struggled to meet the recommended sleep of 7 or more hours. Additionally falling below this standard has been linked to poorer health outcomes. To combat adverse outcomes, Bellabeat’s smart-technology can create detailed sleep logs to inform individuals about their daily sleep patterns. Through providing in-depth information about an individual’s quality and duration of sleep, Bellabeat’s technology allows individuals to stay informed, guiding them towards their sleep goals.

---

## Citations

### Data
FitBiT Fitness Tracker data (Version 2). (n.d.). [Dataset]. https://www.kaggle.com/datasets/arashnic/fitbit  
Sleep Health and Lifestyle Dataset (Version 2). (n.d.). [Dataset]. https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset

### Literature
1. Althoff, T., Sosič, R., Hicks, J. et al. Large-scale physical activity data reveal worldwide activity inequality. Nature 547, 336–339 (2017). https://doi.org/10.1038/nature23018  
2. Saint-Maurice PF, Troiano RP, Bassett DR Jr, Graubard BI, Carlson SA, Shiroma EJ, Fulton JE, Matthews CE. Association of Daily Step Count and Step Intensity With Mortality Among US Adults. JAMA. 2020 Mar 24;323(12):1151-1160. doi: 10.1001/jama.2020.1382. PMID: 32207799; PMCID: PMC7093766.  
3. Watson NF, Badr MS, Belenky G, Bliwise DL, Buxton OM, Buysse D, et al. Recommended Amount of Sleep for a Healthy Adult: A Joint Consensus Statement of the American Academy of Sleep Medicine and Sleep Research Society. Sleep. 2015 Jun 1;38(6):843-4. doi: 10.5665/sleep.4716. PMID: 26039963; PMCID: PMC4434546.
