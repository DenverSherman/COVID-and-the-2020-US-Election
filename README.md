# COVID-and-the-2020-US-Election

## Purpose

An analysis relating COVID-19 cases, demographics and mortality to the outcomes and participation in the 2020 US Election

## Reason

We selected this topic because the COVID-19 pandemic is our daily reality and the tactics to manage it is closely linked to politics

## Description

All of our data came from Kaggle, linked below:

### COVID-19

https://www.kaggle.com/johnjdavisiv/us-counties-covid19-weather-sociohealth-data

### 2020 Election

https://www.kaggle.com/unanimad/us-election-2020

## Project Outline

### Cleaning the Data and Creating the Database

In order to create the database for our project we used the previously mentioned Kaggle datasets - one for election results and one containing COVID19 cases. Although these datasets were robust, for our purposes we followed the following steps to clean each (all of which are also detailed in the CLeaning_Data.ipynb file):

1. First, the COVID-19 dataset was loaded as a dataframe and reduced to columns that the team deemed important - 26 columns in total.
2. All "NA" values were dropped from the new dataframe.
3. All datatypes were examined and converted into more appropriate datatypes - for easier merging in PostgreSQL.
4. After reding in the 2020 Election data and examining the shape and datatypes for the dataframe, it was determined that no changes had to be made.

After cleaning the initial kaggle datasets and saving the resulting dataframes as csv files. We then began the actual creation of the Database in PostgreSQL.



### Creating the Machine Learning Model

### Creating Visualizations

## Questions

We hope to determine if there is any link between the amount of COVID-19 cases and deaths reported by county or state and how the same county or state participated in the 2020 election.

## Team Communication Protocols

Communicate through Slack messaging. 
Use Slack to determine meeting dates and times that work for everyone
Primary meeting will take place weekly during Thursday class time

## First Segment Submission

- Cleaned data and files used can be found in the "cleaning_data_and_creating_database" folder
- Analysis of the data using Machine Learning Model can be found in the "Analysis.ipynb" and "AlphabetSoupCharity.h5" files
- Final database storage can be found in the "final_database.csv" file
- Description of techonologies use can be found in the "technology.md" file

## Second Segment Presentation

https://docs.google.com/presentation/d/e/2PACX-1vTP0n4yQIcQ2OOcFKgNi3xtj7GjFxbRvgKEI2O1Yd9A2T7efM6UrFu-NI786WPtAq3ClL1kqwjduOUT/pub?start=false&loop=false&delayms=3000
