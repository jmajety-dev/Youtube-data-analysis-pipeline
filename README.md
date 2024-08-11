
# YouTube Data Analysis Pipeline

This repository contains a pipeline designed to automatically clean and process trending YouTube statistics data, sourced from Kaggle, to facilitate further data analysis for the data analysts and scientists.

## Overview

The YouTube Data Analysis Pipeline is built to handle and preprocess the trending YouTube data, making it ready for in-depth analysis. The dataset used in this project is available on Kaggle: [Trending YouTube Statistics](https://www.kaggle.com/datasets/datasnaek/youtube-new/data).

## Pipeline Architecture

The pipeline is designed to handle multiple stages of data processing that will provide live data automatically to an fully customisazble dashboard for data analysts and scientists for their further analysis, including:

- **Data Ingestion**: 
  - The majority of the data was initially in JSON format with lots of unnecessary information.
  - Data will be automatically capture using an configured AWS Glue Crawler, that identified and cataloged the data structure.

- **Automated Pipeline Trigger**:
  - An AWS Lambda function was created to automatically trigger the processing pipeline whenever new data is uploaded to the S3 landing data bucket.

- **Data Cleaning and Transformation**:
  - Two AWS Glue Studio jobs were created to automate these two jobs:
    - The first job cleans the unnecessary information from the raw data.
    - The second job combines the cleaned data with previously processed data into a structured table with a defined schema. This transformation enables the data to be used for building dashboards and performing queries, which was not possible with the raw data before processing.
  - After cleaning and processing, the cleaned data is joined with the existing data to ensure consistency.

- **Data Validation**:
  - The transformed and joined data was validated using Amazon Athena to ensure accuracy and consistency.

- **Data Storage**:
  - The final validated data is pushed into the Analytics and Report S3 bucket, where it is ready for further analysis and reporting.

- **Data Visualization**:
  - A fully customizable AWS QuickSight dashboard is configured to automatically capture and visualize data from the Analysis and Report S3 bucket, where the processed data is stored. New data uploaded into the S3 landing data bucket triggers the pipeline, which updates the Analysis and Report S3 bucket, ensuring that data scientists and analysts have the most up-to-date information for their analysis.

![YouTube Data Pipeline Architecture](https://github.com/user-attachments/assets/a7c0a2be-68fc-4b98-b00c-39dd60b323e2)



## Dataset

The dataset used in this project contains various statistics on trending YouTube videos, including views, likes, comments, and more, across different regions. The data can be found here: [Trending YouTube Statistics](https://www.kaggle.com/datasets/datasnaek/youtube-new/data).

