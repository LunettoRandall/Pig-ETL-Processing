#Run this script file first_etl.pig in Pig’s MapReduce mode to analyze the entire file in HDFS

hdfs dfs -cat ./dualcore/ad_data1/part* | head -20
