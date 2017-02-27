CREATE TABLE AIRLINES(
CODE CHAR(2) NOT NULL PRIMARY KEY,
NAME VARCHAR(20) NOT NULL,
UNIQUE(NAME)
);

CREATE TABLE FLIGHTS(
AIRLINE_CODE CHAR(2) NOT NULL REFERENCES AIRLINES(CODE),
FLIGHT_NUMBER DECIMAL(4,0) NOT NULL PRIMARY KEY CHECK (FLIGHT_NUMBER>0),
FLIGHT_DATA DATE NOT NULL,
PRICE DECIMAL(5,2) NOT NULL CHECK(PRICE>0),
CURRENCY CHAR(3) DEFAULT 'EUR',
MAX_ECON_CAP INTEGER CHECK (MAX_ECON_CAP>0),
OCC_ECON_CAP INTEGER CHECK (OCC_ECON_CAP>0),
MAX_BUSS_CAP INTEGER CHECK (MAX_BUSS_CAP>0),
OCC_BUS_CAP INTEGER CHECK(OCC_BUS_CAP>0),
PAYMENTSUM DECIMAL(16,2),
CHECK(OCC_ECON_CAP<MAX_ECON_CAP AND OCC_BUS_CAP<MAX_BUSS_CAP)
);

CREATE TABLE SCHEDULES(
AIRLINE_CODE CHAR(2) REFERENCES AIRLINES(CODE),
FLIGHT_NUMBER DECIMAL(4,0) CHECK (FLIGHT_NUMBER>0) REFERENCES FLIGHTS(FLIGHT_NUMBER),
DEPT_COUNTRY CHAR(2) NOT NULL,
DEPT_CITY VARCHAR(20) NOT NULL,
DEPT_AIRPORT CHAR(3) NOT NULL,
DEPT_TIME TIME NOT NULL,
ARRV_COUNTRY CHAR(2),
ARRV_CITY VARCHAR(20) NOT NULL,
ARRV_AIRPORT CHAR(3) NOT NULL,
ARRV_TIME TIME NOT NULL,
FLIGHT_TIME INTEGER CHECK (FLIGHT_TIME>0),
DISTANCE INTEGER CHECK (DISTANCE>0),
CHECK(DEPT_TIME<ARRV_TIME)
);

CREATE TABLE BOOKINGS(
AIRLINE_CODE CHAR(2) NOT NULL REFERENCES AIRLINES(CODE),
FLIGHT_NUMBER DECIMAL(4,0) NOT NULL CHECK (FLIGHT_NUMBER>0) REFERENCES FLIGHTS(FLIGHT_NUMBER),
BOOKING_NUMBER DECIMAL(8,0) NOT NULL CHECK (BOOKING_NUMBER>0) PRIMARY KEY,
CUSTOMER_NUMBER INTEGER CHECK (CUSTOMER_NUMBER>0) NOT NULL,
ORDER_DATE DATE NOT NULL
);

