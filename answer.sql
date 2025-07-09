-- PART 1: Daily Average Active Users Before and After Feature Change (2018-06-02)

SELECT 
    date(event_time) AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM user_activity
WHERE event_time BETWEEN DATE('2018-05-26') AND DATE('2018-06-09')
GROUP BY day
ORDER BY day;

-- PART 2: Number of Status Changes by Card per Day

SELECT
    date(change_time) AS day,
    card_id,
    COUNT(*) AS status_changes
FROM card_status_changes
WHERE change_time BETWEEN DATE('2018-05-26') AND DATE('2018-06-09')
GROUP BY day, card_id
ORDER BY day, card_id;
