# Pig-ETL-Processing
Work based on Cloudera CAP Lab 9 on Oracle Cloud Big Data. Use Pig to explore, correct, and reorder data in files from two different ad networks.  Small samples of this data using Pig in local mode then use ETL scripts to process the complete data sets in HDFS by using Pig in MapReduce mode.

# Background Info: 

The Dualcore company has recently started using online advertisements to attract new customers to its e-commerce site. 
Each of the two ad networks they use provides data about the ads they’ve placed. This includes the site where the ad was placed, the date when it was placed, what keywords triggered its display, whether the user clicked the ad, and the per-click cost.

Unfortunately, the data from each network is in a different format. Each file also contains some invalid records. 
Before I analyze the data, I'll first correct these problems by using Pig to:
- Filter invalid records
- Reorder fields
- Correct inconsistencies
- Write the corrected data to HDFS
