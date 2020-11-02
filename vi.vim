# Edit the code first_etl.pig file to complete the LOAD statement and read the data from the sample you just created.
# Filter out all records where the country field contains USA:
# Use a FOREACH … GENERATE statement to create a new relation containing the fields in the same order as shown in the following table 
# (the country field is not included since all records now have the same value).

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

usa_only = FILTER data BY country == 'USA';

reordered = FOREACH usa_only GENERATE campaign_id,
date,time, UPPER(TRIM(keyword)),
display_site, placement,was_clicked,cpc;
