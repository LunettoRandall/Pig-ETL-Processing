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


