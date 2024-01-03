-- FL_DATE:	Flight Date (yyyymmdd) --
-- ARR_DELAY: Difference in minutes between scheduled and actual arrival time. Early arrivals show negative numbers --
-- FL_NUMBER: Flight Number --
-- ORIGIN_CITY:	Origin Airport, City Name --
-- CANCELLED: Cancelled Flight Indicator (1=Yes) --
-- DELAY_DUE_CARRIER: Carrier Delay, in Minutes --
-- DELAY_DUE_WEATHER: Weather Delay, in Minutes --
-- DELAY_DUE_NAS: National Air System Delay, in Minutes --
-- DELAY_DUE_SECURITY: Security Delay, in Minutes --
-- DELAY_DUE_LATE_AIRCRAFT:	Late Aircraft Delay, in Minutes --

--data visualisation with tableau--
--https://public.tableau.com/views/Airline_delays_2023/Story1?:language=en-GB&:display_count=n&:origin=viz_share_link--

SELECT AIRLINE,
FL_DATE,
TIME_FORMAT(sec_to_time(ARR_DELAY*60), '%H:%i') AS 'ARR_DELAY',
FL_NUMBER,
ORIGIN_CITY,
CANCELLED,
TIME_FORMAT(sec_to_time(DELAY_DUE_CARRIER*60), '%H:%i') AS 'DELAY_DUE_CARRIER',
TIME_FORMAT(sec_to_time(DELAY_DUE_WEATHER*60), '%H:%i') AS 'DELAY_DUE_WEATHER',
TIME_FORMAT(sec_to_time(DELAY_DUE_NAS*60), '%H:%i') AS 'DELAY_DUE_NAS',
TIME_FORMAT(sec_to_time(DELAY_DUE_SECURITY*60), '%H:%i') AS 'DELAY_DUE_SECURITY',
TIME_FORMAT(sec_to_time(DELAY_DUE_LATE_AIRCRAFT*60), '%H:%i') AS 'DELAY_DUE_AIRCRAFT'
FROM airplane_delays_2023.flight_delay_2023;
