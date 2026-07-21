
SELECT * FROM facebook_posts;

SELECT Type, COUNT(*)
FROM facebook_posts
GROUP BY Type;

# Query 1 (WHERE)

SELECT *
FROM facebook_posts
WHERE "Total Interactions" > 500;

# Query 2 (GROUP BY)

SELECT Type,
AVG("Total Interactions") AS AvgInteractions
FROM facebook_posts
GROUP BY Type;


result = pd.read_sql_query(query, conn)
print(result)

# Query 3 (HAVING)

SELECT Type,
COUNT(*) AS TotalPosts
FROM facebook_posts
GROUP BY Type
HAVING COUNT(*) > 20;

result = pd.read_sql_query(query, conn)
print(result)

# Query 4 (ORDER BY + LIMIT)

SELECT *
FROM facebook_posts
ORDER BY like DESC
LIMIT 10;

result = pd.read_sql_query(query, conn)
print(result)

# Query 5 (BETWEEN)

SELECT *
FROM facebook_posts
WHERE "Post Month"
BETWEEN 6 AND 12;

result = pd.read_sql_query(query, conn)
print(result)

# Query 6 (AND condition)

SELECT *
FROM facebook_posts
WHERE Type='Photo'
AND "Total Interactions" > 500;

result = pd.read_sql_query(query, conn)
print(result)


