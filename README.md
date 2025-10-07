# atus-work-life-analysis
## Work-Life Balance Analysis by Occupation and Education Level

This project will analyze how work-life balance varies across different occupational groups and education levels, with special attention to changes over time. The project will use IPUMS ATUS data. The ATUS is the first federally administered ongoing time use survey in the United States. It collects detailed information on how people spend their time across more than 400 different activities during a designated 24-hour period. The survey has been conducted annually since 2003. IPUMS Time Use harmonizes these data and provides a data extract builder that allows users to create custom time use variables and data extracts for analysis. 
#### Tentative Research Questions:

1. How does time allocation to work, leisure, household activities, and personal care differ across occupational categories?
2. What is the relationship between education level and time spent on various activities?
3. Have these patterns changed over time, particularly before and after major economic shifts - financial crisis, COVID-19 pandemic?
4. Are there significant gender differences in work-life balance within the same occupational categories?

# Work-Life Balance: DINKs vs. Parents Time Use Analysis 10/7/2025

## Research Question
How do Dual-Income, No Kids (DINK) households spend their time compared to households with children?

## Data Source
IPUMS ATUS (American Time Use Survey), 2018-2024

## Household Type Definitions
1. **DINKs**: Dual-income couples, no children under 18 in household
2. **Dual-income parents**: Both partners employed, children under 18 present
3. **Single-income parents**: One partner employed, children under 18 present
4. **Single-income childless**: One partner employed, no children under 18

## Time Use Categories
- **Work**: Paid employment + work-related travel
- **Housework**: Cooking, cleaning, laundry, shopping, home maintenance
- **Childcare**: All care for household children (N/A for DINKs)
- **Leisure**: TV, socializing, hobbies, sports/exercise, entertainment
- **Sleep**: Sleep + naps
- **Personal care**: Grooming, eating, health activities
- **Other**: Everything else

## Analysis Plan

### Phase 1: Basic Descriptives (Start Here)
- Compare average time allocation across household types
- Focus on 2019 (pre-COVID baseline) and 2023 (post-COVID)
- Simple bar charts and tables

### Phase 2: Subgroup Analysis
- Break down by education level (high school, some college, bachelor's+)
- Break down by occupation category
- Look at gender differences within each household type

### Phase 3: Time Trends
- Full 2018-2024 analysis
- Focus on COVID period (2020-2021) disruption and recovery
- Did patterns change permanently?

## Key Questions to Answer
1. How much more leisure time do DINKs have vs. parents?
2. What are DINKs doing with their extra time? (working more? sleeping more? actually having fun?)
3. Are DINK households more gender-egalitarian in housework division?
4. Did COVID affect DINKs and parents differently?

## Outputs
- R scripts for data cleaning and analysis
- Visualizations (time use bar charts, trends over time)
- Summary statistics tables
- GitHub repository with documented code

## Learning Goals
- Extract and load IPUMS ATUS data in R
- Clean and recode survey data
- Create meaningful data visualizations
- Use GitHub for version control
- Write reproducible analysis code
