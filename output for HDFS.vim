data = LOAD './dualcore/ad_data1.txt' AS (keyword:chararray,
campaign_id:chararray, date:chararray, time:chararray,
display_site:chararray, was_clicked:int, cpc:int, country:chararray,
placement:chararray);

usa_only = FILTER data BY country == 'USA';

reordered = FOREACH usa_only GENERATE campaign_id,
date, time, UPPER(TRIM(keyword)), display_site,
placement, was_clicked, cpc;
STORE reordered INTO './dualcore/ad_data1/';

#Run this script file first_etl.pig in Pig’s MapReduce mode to analyze the entire file in HDFS
hdfs dfs -cat ./dualcore/ad_data1/part* | head -20
