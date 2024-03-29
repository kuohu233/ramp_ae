USE ROLE accountadmin;

---> set the Warehouse
USE WAREHOUSE compute_wh;

CREATE OR REPLACE DATABASE ramp;

---> create the Raw POS (Point-of-Sale) Schema
CREATE OR REPLACE SCHEMA ramp.application;


CREATE TABLE transactions (
  "transaction_time" TIMESTAMP,
  "transaction_amount" FLOAT
);

SELECT * FROM ramp.application.transactions;

INSERT INTO transactions
  ("transaction_time", "transaction_amount")
VALUES
  ('2021-01-16 00:05:54.000000', '25.05'),
  ('2021-01-07 20:53:04.000000', '124.00'),
  ('2021-01-18 22:55:37.000000', '66.58'),
  ('2021-01-21 00:36:57.000000', '9.99'),
  ('2021-01-19 06:31:10.000000', '22.27'),
  ('2021-01-10 01:24:04.000000', '576.76'),
  ('2021-01-04 00:07:27.000000', '49.91'),
  ('2021-01-25 20:36:17.000000', '14.11'),
  ('2021-01-08 21:11:16.000000', '112.21'),
  ('2021-01-07 00:06:21.000000', '331.80'),
  ('2021-01-18 09:30:10.000000', '900.00'),
  ('2021-01-22 20:30:14.000000', '130.72'),
  ('2021-01-18 00:06:21.000000', '91.53'),
  ('2021-01-01 09:29:56.000000', '900.00'),
  ('2021-01-13 20:50:02.000000', '33.04'),
  ('2021-01-05 00:06:15.000000', '142.30'),
  ('2021-01-09 01:02:40.000000', '15.00'),
  ('2021-01-12 05:49:02.000000', '28.25'),
  ('2021-01-03 00:03:22.000000', '14.69'),
  ('2021-01-05 00:49:45.000000', '93.25'),
  ('2021-01-12 20:38:30.000000', '500.00'),
  ('2021-01-31 00:09:01.000000', '23.10'),
  ('2021-01-11 10:56:16.000000', '75.64'),
  ('2021-01-30 00:04:01.000000', '6.75'),
  ('2021-01-04 11:35:53.000000', '4.99'),
  ('2021-01-29 05:39:47.000000', '33.73'),
  ('2021-01-08 06:37:49.000000', '143.12'),
  ('2021-01-07 00:48:07.000000', '20.00'),
  ('2021-01-24 11:01:21.000000', '1058.40'),
  ('2021-01-21 04:41:26.000000', '500.00'),
  ('2021-01-05 21:34:58.000000', '100.00'),
  ('2021-01-06 00:48:00.000000', '362.91'),
  ('2021-01-13 00:51:59.000000', '19.24'),
  ('2021-01-17 00:10:53.000000', '32.46'),
  ('2021-01-20 01:04:34.000000', '32.76'),
  ('2021-01-30 07:55:26.000000', '59.37'),
  ('2021-01-03 11:03:52.000000', '36.37'),
  ('2021-01-21 19:33:01.000000', '12.99'),
  ('2021-01-30 00:58:25.000000', '400.00'),
  ('2021-01-14 06:14:03.000000', '900.00'),
  ('2021-01-26 00:02:21.000000', '900.00'),
  ('2021-01-01 00:12:28.000000', '5000.00'),
  ('2021-01-26 04:45:44.000000', '900.00'),
  ('2021-01-23 04:31:41.000000', '623.72'),
  ('2021-01-25 08:48:28.000000', '33.05'),
  ('2021-01-18 01:20:23.000000', '48.75'),
  ('2021-01-22 00:41:55.000000', '47.00'),
  ('2021-01-28 00:05:20.000000', '35.00'),
  ('2021-01-29 00:06:33.000000', '1450.00'),
  ('2021-01-16 00:44:31.000000', '82.38'),
  ('2021-01-31 13:00:35.000000', '19.00'),
  ('2021-01-11 01:18:30.000000', '2130.54'),
  ('2021-01-20 05:44:23.000000', '13.02'),
  ('2021-01-27 19:50:22.000000', '150.00'),
  ('2021-01-15 00:04:12.000000', '641.37'),
  ('2021-01-19 01:10:40.000000', '235.44'),
  ('2021-01-27 00:37:59.000000', '216.99'),
  ('2021-01-27 04:53:20.000000', '54.35'),
  ('2021-01-19 00:04:03.000000', '99.95'),
  ('2021-01-06 20:49:50.000000', '57.08'),
  ('2021-01-17 12:39:03.000000', '22.75'),
  ('2021-01-05 06:24:32.000000', '500.00'),
  ('2021-01-31 01:56:35.000000', '17.33'),
  ('2021-01-11 21:35:49.000000', '10.66'),
  ('2021-01-13 06:38:51.000000', '9.99'),
  ('2021-01-15 00:53:48.000000', '450.00'),
  ('2021-01-28 00:39:16.000000', '27.92'),
  ('2021-01-17 01:21:03.000000', '13.61'),
  ('2021-01-02 11:07:27.000000', '84.31'),
  ('2021-01-19 19:55:26.000000', '15.10'),
  ('2021-01-24 01:27:27.000000', '47.90'),
  ('2021-01-12 00:48:20.000000', '8413.94'),
  ('2021-01-09 00:02:48.000000', '118.49'),
  ('2021-01-15 06:18:10.000000', '900.00'),
  ('2021-01-22 00:05:13.000000', '23.04'),
  ('2021-01-03 01:32:21.000000', '3.00'),
  ('2021-01-14 00:04:24.000000', '9.99'),
  ('2021-01-22 05:29:08.000000', '326.24'),
  ('2021-01-10 11:05:01.000000', '43.55'),
  ('2021-01-02 01:14:35.000000', '513.00'),
  ('2021-01-20 00:03:47.000000', '14.23'),
  ('2021-01-13 00:03:52.000000', '429.11'),
  ('2021-01-28 04:39:11.000000', '37.17'),
  ('2021-01-26 00:40:51.000000', '500.00'),
  ('2021-01-04 21:14:08.000000', '889.46'),
  ('2021-01-21 23:53:40.000000', '43.99'),
  ('2021-01-24 00:06:29.000000', '59.00'),
  ('2021-01-08 00:04:24.000000', '60.46'),
  ('2021-01-06 06:49:28.000000', '16.41'),
  ('2021-01-14 21:09:48.000000', '100.00'),
  ('2021-01-04 01:45:23.000000', '340.80'),
  ('2021-01-20 19:46:38.000000', '90.00'),
  ('2021-01-16 06:35:34.000000', '29.00'),
  ('2021-01-26 19:52:38.000000', '704.47'),
  ('2021-01-09 10:44:29.000000', '900.00'),
  ('2021-01-21 00:07:15.000000', '59.00'),
  ('2021-01-29 00:43:11.000000', '17.82'),
  ('2021-01-25 00:04:42.000000', '119.95'),
  ('2021-01-23 00:35:56.000000', '500.00'),
  ('2021-01-27 00:01:48.000000', '50.00'),
  ('2021-01-28 19:44:55.000000', '8874.32'),
  ('2021-01-29 20:37:37.000000', '19.35'),
  ('2021-01-06 00:04:15.000000', '8.20'),
  ('2021-01-14 00:40:59.000000', '2.84'),
  ('2021-01-12 00:06:22.000000', '1516.39'),
  ('2021-01-07 06:31:13.000000', '500.00'),
  ('2021-01-10 00:04:58.000000', '131.44'),
  ('2021-01-23 00:02:24.000000', '103.20'),
  ('2021-01-25 01:21:44.000000', '123.84'),
  ('2021-01-11 00:06:39.000000', '87.10'),
  ('2021-01-01 02:01:09.000000', '518.20'),
  ('2021-01-15 20:55:58.000000', '47.72'),
  ('2021-01-02 00:09:43.000000', '49.00'),
  ('2021-01-08 00:49:22.000000', '31.61');

WITH daily_totals AS (
  SELECT
    DATE("transaction_time") AS transaction_date,
    SUM("transaction_amount") AS total_amount
  FROM ramp.application.transactions
  GROUP BY DATE("transaction_time")
),
rolling_average AS (
  SELECT
    transaction_date,
    total_amount,
    AVG(total_amount) OVER (
      ORDER BY transaction_date
      ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS rolling_3day_avg
  FROM daily_totals
)
SELECT *
FROM rolling_average
WHERE transaction_date = '2021-01-31';

