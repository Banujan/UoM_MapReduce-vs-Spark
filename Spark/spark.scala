val df = spark.read.format("csv").option("inferSchema", "true").option("header","true").load("s3://hive-spark-bucket/spark/DelayedFlights-updated.csv")
df show();
df.createOrReplaceTempView("delay_flights");

var a = 0;
for( a <- 1 to 5){
    println( "Iteration : " + a );
    spark.time(spark.sql("SELECT Year, avg((CarrierDelay /ArrDelay)*100) from delay_flights WHERE Year>=2003 AND Year<=2010 GROUP BY Year ORDER BY Year").show())
    spark.time(spark.sql("SELECT Year, avg((NASDelay /ArrDelay)*100) from delay_flights WHERE Year>=2003 AND Year<=2010 GROUP BY Year ORDER BY Year").show())
    spark.time(spark.sql("SELECT Year, avg((WeatherDelay /ArrDelay)*100) from delay_flights WHERE Year>=2003 AND Year<=2010 GROUP BY Year ORDER BY Year").show())
    spark.time(spark.sql("SELECT Year, avg((LateAircraftDelay /ArrDelay)*100) from delay_flights WHERE Year>=2003 AND Year<=2010 GROUP BY Year ORDER BY Year").show())
    spark.time(spark.sql("SELECT Year, avg((SecurityDelay /ArrDelay)*100) from delay_flights WHERE Year>=2003 AND Year<=2010 GROUP BY Year ORDER BY Year").show())
}

