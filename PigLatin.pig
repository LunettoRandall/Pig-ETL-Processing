# Open Grunt shell in local mode to work with the local sample1.txt file locally in Pig as test environment.
pig -x local

# Load data in the sample1.txt file into Pig and dump.
data = LOAD 'sample1.txt';
DUMP data;

# Load the first two columns’ data from the sample file as character data and dump that data.
first_2_columns = LOAD 'sample1.txt' AS (keyword:chararray, campaign_id:chararray);
DUMP first_2_columns;

