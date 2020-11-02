# Add the data files to HDFS
export ADIR=/home/rlunett/lab

hdfs dfs -mkdir dualcore
hdfs dfs -ls dualcore
hdfs dfs -put $ADIR/data/ad_data1.txt ./dualcore
hdfs dfs -ls dualcore

