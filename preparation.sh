# Download Dataset
wget https://s3.amazonaws.com/hipicdatasets/labPigETL.tgz

# Unzip file
tar zxvf labPigETL.tgz

# Remove the tgz file to save storage on your server.
rm labPigETL.tgz

# Export command is to set the directory path for the variable ADIR
export ADIR=/home/rlunett/labPigETL

# Change to the directory for the pig code and list the pig file
cd $ADIR/exercises/pig_etl

# Capture the first 25 records to test script
head -n 25 $ADIR/data/ad_data1.txt > sample1.txt

# Open Grunt shell in local mode to work with the local sample1.txt file locally in Pig as test environment.
pig -x local

# Load data in the sample1.txt file into Pig and dump.
data = LOAD 'sample1.txt';
DUMP data;
