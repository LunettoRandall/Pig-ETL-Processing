# Edit the code first_etl.pig file to complete the LOAD statement and read the data from the sample you just created.
vi first_etl.pig

data = LOAD '/home/rlunett/labPigETL/data/ad_data1.txt'
AS (keyword:chararray,
campaign_id:chararray,
date:chararray,
time:chararray,
display_site:chararray,
was_clicked:int,
cpc:int,
country:chararray,
placement:chararray);
