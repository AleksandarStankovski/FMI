SET SCHEMA FLIGHTS;

SELECT airline_name,flight_code
FROM flights_airlines,airlines
WHERE country='United Kindom'; 

SELECT airline_name,airline_operator,flight_code,flight_date,arrv_time,dept_time
FROM flights,flights_airlines
WHERE arrv_airport='София' AND dept_airport='Москва';

SELECT name,airline_operator,flight_code,flight_date,arrv_time,dept_time,max_fclass_cap
FROM flights,airplanes,flights_info
WHERE arrv_airport='София' AND dept_airport='Лондон';

SELECT COUNT(flight_number) AS flight_number
FROM flights,flights_airlines
WHERE arrv_airport='София';

SELECT COUNT(arrv_airport)AS number_arrv_airplanes,COUNT(dept_airport)AS number_dept_airpalnes
FROM flights
WHERE flight_date BETWEEN '2013-01-01' AND '2013-04-01';

                           

