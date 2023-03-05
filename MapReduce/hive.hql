
--239306V_Banujan 

--Hive-QL

REATE EXTERNAL TABLE delayed_flights (
    Id int,
    Year int,
    Month int,
    DayofMonth int,
    DayOfWeek int,
    DepTime int,
    CRSDepTime int,
    ArrTime int,
    CRSArrTime int,
    UniqueCarrier string,
    FlightNum int,
    TailNum string,
    ActualElapsedTime int,
    CRSElapsedTime int,
    AirTime int,
    ArrDelay int,
    DepDelay int,
    Origin string,
    Dest string,
    Distance int,
    TaxiIn int,
    TaxiOut int,
    Cancelled int,
    CancellationCode string,
    Diverted int,
    CarrierDelay int,
    WeatherDelay int,
    NASDelay int,
    SecurityDelay int,
    LateAircraftDelay int)
row format delimited fields terminated by ","
LOCATION 's3://hive-spark-bucket/mapreduce/delayed_flights';


-- load data from s3 to table
LOAD DATA INPATH 's3://hive-spark-bucket/mapreduce/DelayedFlights-updated.csv' OVERWRITE INTO TABLE delayed_flights;



SELECT * FROM delayed_flights limit 10;


-- executing queries up to 5 iterations

--Iteration 1
select "iteration 1";
SELECT Year, AVG((CarrierDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((NASDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((WeatherDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((LateAircraftDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((SecurityDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;

--Iteration 2
select "iteration 2";
SELECT Year, AVG((CarrierDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((NASDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((WeatherDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((LateAircraftDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((SecurityDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;

--Iteration 3
select "iteration 3";
SELECT Year, AVG((CarrierDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((NASDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((WeatherDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((LateAircraftDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((SecurityDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;

--Iteration 4
select "iteration 4";
SELECT Year, AVG((CarrierDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((NASDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((WeatherDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((LateAircraftDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((SecurityDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;

--Iteration 5
select "iteration 5";
SELECT Year, AVG((CarrierDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((NASDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((WeatherDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((LateAircraftDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;
SELECT Year, AVG((SecurityDelay/ArrDelay)*100) FROM delayed_flights WHERE Year >= 2003 AND Year <= 2010 GROUP BY Year ORDER BY Year;