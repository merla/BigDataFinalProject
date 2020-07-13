#!/bin/bash

# Start Hadoop
cd /usr/local/opt/hadoop/sbin
./start-dfs.sh

# Put file into HDFS
hadoop fs -put ~/Downloads/Accidents.csv /

#-----------------------------------------------#

# Number of Accidents Per Month
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q1.DriverClass /Accidents.csv /Q1_Output &&

# Number of Accidents vs Hour of Day
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q2.DriverClass /Accidents.csv /Q2_Output &&

# Number of Accidents Per Weekday
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q3.DriverClass /Accidents.csv /Q3_Output &&

# Percentage of Accidents per side of the road
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q4.DriverClass /Accidents.csv /Q4_Output &&

# Accidents Per State
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q5.DriverClass /Accidents.csv /Q5_Output &&

# Top 10 Accident Prone States
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q6.DriverClass /Q5_Output/part-r-00000 /Q6_Output &&

# State - Cities = Inverted Index
hadoop jar /Users/christy/Downloads/Projects/BigDataFinalProject/target/BigDataFinalProject-1.0-SNAPSHOT.jar com.hadoop.finalProject.Q7.DriverClass /Accidents.csv /Q7_Output
