# Databricks notebook source
filePath = "dbfs:/FileStore/tables/readme_spark.txt" # path in Databricks File System
lines = sc.textFile(filePath) # read the file into the cluster
lines.take(3) # display first 10 lines in the file

# COMMAND ----------

numPartitions = lines.getNumPartitions() # get the number of partitions
print("Number of partitions (workers) storing the dataset = %d") % numPartitions

# COMMAND ----------

words = lines.flatMap(lambda x: x.split(' ')) # split each line into a list of words
words.take(10) # display the first 10 words

# COMMAND ----------

stopWords = ['','a','*','and','is','of','the','a'] # define the list of stop words
filteredWords = words.filter(lambda x: x.lower() not in stopWords) # filter the words
filteredWords.take(10) # display the first 10 filtered words

# COMMAND ----------

filteredWords.cache() # cache filtered dataset into memory across the cluster worker nodes

# COMMAND ----------

word1Tuples = filteredWords.map(lambda x: (x, 1)) # map the words into (word,1) tuples
word1Tuples.take(10) # display the (word,1) tuples

# COMMAND ----------

wordCountTuples = word1Tuples.reduceByKey(lambda x, y: x + y) # aggregate counts for each word
wordCountTuples.take(10) # display the first 10 (word,count) tuples

# COMMAND ----------

sortedWordCountTuples = wordCountTuples.top(10,key=lambda (x, y): y) # top 10 (word,count) tuples
for tuple in sortedWordCountTuples: # display the top 10 (word,count) tuples by count 
  print str(tuple)

# COMMAND ----------

from pyspark.sql import Row # import the pyspark sql Row class
wordCountRows = wordCountTuples.map(lambda p: Row(word=p[0], count=int(p[1]))) # tuples -> Rows
wordCountRows.toDF().createOrReplaceTempView("word_count")

# COMMAND ----------

# MAGIC %sql 
# MAGIC SELECT count, word
# MAGIC FROM word_count
# MAGIC where count >= 2
# MAGIC ORDER BY count DESC --use SQL to query words with count >= 2 descending in order

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT count, word  from word_count

# COMMAND ----------

