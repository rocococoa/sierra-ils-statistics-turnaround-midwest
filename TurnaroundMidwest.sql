/*
Captures the total orders, min, max, average, mode, and median
by the previous 3 months, scheduled to run at the close of business on the last day of the quarter

Created 6/26/2026 AGW
*/
SELECT 

COUNT(ord.record_id) AS total_orders,
MIN(ord.received_date_gmt::DATE - ord.order_date_gmt::DATE),
MAX(ord.received_date_gmt::DATE - ord.order_date_gmt::DATE),
ROUND(AVG(ord.received_date_gmt::DATE - ord.order_date_gmt::DATE), 2) AS avg_days,
MODE() WITHIN GROUP (ORDER BY ord.received_date_gmt::DATE - ord.order_date_gmt::DATE),
PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY (ord.received_date_gmt::DATE - ord.order_date_gmt::DATE)) AS median_days,
ROUND(STDDEV(ord.received_date_gmt::DATE - ord.order_date_gmt::DATE), 2) AS std_dev

FROM sierra_view.order_record ord
WHERE ord.vendor_record_code LIKE 'mt%'
AND ord.received_date_gmt::DATE >= DATE_TRUNC('month', NOW()) - INTERVAL '2 month'
AND ord.received_date_gmt::DATE < DATE_TRUNC('month', NOW()) + INTERVAL '1 month'


;
