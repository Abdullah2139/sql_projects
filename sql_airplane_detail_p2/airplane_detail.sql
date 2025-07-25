SELECT *
FROM airplane_detail
LIMIT 10;

-- ### **Step 1: Data Cleaning & Validation**
-- "Hey, can you check if we have missing data in departure times or delays? That might be causing incorrect metrics."

SELECT *
FROM airplane_detail
WHERE actual_departure IS NULL
OR departure_delay IS NULL;

-- ### **Step 2: Calculate Average Delay by Airline**
-- "Which airline has the worst average delay? Focus only on flights that weren't canceled."

SELECT airline, ROUND(AVG(departure_delay), 2) AS avg_delay
FROM airplane_detail
WHERE cancelled = 0
GROUP BY airline
ORDER BY avg_delay DESC;

-- ### **Step 3: Analyze Delay by Time of Day**
-- "Are delays worse in the morning or evening?"

SELECT 
  CASE
    WHEN EXTRACT(HOUR FROM scheduled_departure) BETWEEN 5 AND 11 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM scheduled_departure) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
  END AS time_of_day,
  ROUND(AVG(departure_delay), 2) AS avg_delay
FROM airplane_detail
WHERE cancelled = 0
GROUP BY time_of_day
ORDER BY avg_delay DESC;

-- ### **Step 4: Identify Most Delayed Airports**
-- "Let’s find the worst origin airports. Which ones have the highest delays?"

SELECT origin, ROUND(AVG(departure_delay), 2) AS avg_delay
FROM airplane_detail
WHERE cancelled = 0
GROUP BY origin
ORDER BY avg_delay DESC;

-- ### **Step 5: Cancellations by Airline**
-- "I want to know which airlines cancel the most flights. What are the cancellation rates?"

SELECT airline,
	COUNT(*) AS total_flights,
    SUM(cancelled) AS total_cancelled, 
    ROUND(SUM(cancelled) * 100.0 / COUNT(*), 2) AS cancel_rate_percent
FROM airplane_detail
GROUP BY airline
ORDER BY cancel_rate_percent DESC;

-- ### **Step 6: Summary Dashboard View (Bonus)**
-- "Can you give me a one-table snapshot with delays, cancellations, and top insights by airline?"

SELECT 
  airline,
  ROUND(AVG(departure_delay), 2) AS avg_delay,
  SUM(cancelled) AS canceled_flights,
  COUNT(*) AS total_flights,
  ROUND(SUM(cancelled) * 100.0 / COUNT(*), 2) AS cancel_rate_percent
FROM airplane_detail
GROUP BY airline
ORDER BY avg_delay DESC;