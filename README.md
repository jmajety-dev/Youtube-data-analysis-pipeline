Overview
The YouTube Data Analysis Pipeline is built to handle and preprocess the trending YouTube data, making it ready for in-depth analysis. The dataset used in this project is available on Kaggle: Trending YouTube Statistics.

YouTube Data Analysis Pipeline
This repository contains a pipeline designed to clean and process trending YouTube statistics data, sourced from Kaggle, to facilitate further data analysis.

Pipeline Architecture
The pipeline is designed to handle multiple stages of data processing, including:

Data Ingestion:

The majority of the data was initially in JSON format.
Data was captured using AWS Glue Crawler, which automatically identified and cataloged the data structure.
Automated Pipeline Trigger:

An AWS Lambda function was created to automatically trigger the processing pipeline whenever new data is uploaded to the S3 landing data bucket.
Data Cleaning and Transformation:

Two AWS Glue Studio jobs were created:
The first job cleans the raw data.
The second job converts the cleaned data from CSV format to Parquet format for optimized storage and querying.
After cleaning and converting, the cleaned data is joined with the existing data to ensure consistency.
Data Validation:

The transformed and joined data was validated using Amazon Athena to ensure accuracy and consistency.
Data Storage:

The final validated data is pushed into the Analytics and Report S3 bucket, where it is ready for further analysis and reporting.
Data Visualization:

An AWS QuickSight dashboard was generated to visualize the data stored in the Analysis and Report S3 bucket, providing insights and enabling further analysis.

![alt text](<Youtube data pipeline architecture.jpeg>)

Dataset
The dataset used in this project contains various statistics on trending YouTube videos, including views, likes, comments, and more, across different regions. The data can be found here: Trending YouTube Statistics.
