ALTER TABLE AIRLINES
ADD CURRENCY CHAR(3);

ALTER TABLE FLIGHTS
ADD FLIGHT_CODE VARCHAR(4);

--ALTER TABLE FLIGHTS
--ALTER COLUMN PAYMENTSUM DECIMAL(16,2);

ALTER TABLE BOOKINGS
ADD CUSTOMER_NAME VARCHAR(100);

ALTER TABLE BOOKINGS
ADD FCLASS INTEGER DEFAULT 0;

-- AIRLINES TABLE
INSERT INTO AIRLINES VALUES('AA','American Airlines','USD');
INSERT INTO AIRLINES VALUES('AB','Air Berlin','EUR');
INSERT INTO AIRLINES VALUES('AC','Air Canada','CAD');
INSERT INTO AIRLINES VALUES('AF','Air France','EUR');
INSERT INTO AIRLINES VALUES('AZ','Alitalia','EUR');
INSERT INTO AIRLINES VALUES('BA','British Airways','GBP');
INSERT INTO AIRLINES VALUES('CO','Continental Airlines','USD');
INSERT INTO AIRLINES VALUES('DL','Delta Airlines','USD');
INSERT INTO AIRLINES VALUES('FJ','Air Pacific','USD');
INSERT INTO AIRLINES VALUES('JL','Japan Airlines','JPY');
INSERT INTO AIRLINES VALUES('LH','Lufthansa','EUR');
INSERT INTO AIRLINES VALUES('NG','Lauda Air','EUR');
INSERT INTO AIRLINES VALUES('NW','Northwest Airlines','USD');
INSERT INTO AIRLINES VALUES('QF','Qantas Airways','AUD');
INSERT INTO AIRLINES VALUES('SA','South African Air.','ZAR');
INSERT INTO AIRLINES VALUES('SQ','Singapore Airlines','SGD');
INSERT INTO AIRLINES VALUES('SR','Swiss','CHF');
INSERT INTO AIRLINES VALUES('UA','United Airlines','USD');

--FLIGHTS INSERTS
INSERT INTO FLIGHTS VALUES('AA',1000,'23.05.2012',422.94,'USD',385,370,52,50,192234.81,'17');
INSERT INTO FLIGHTS VALUES('AA',1001,'20.06.2012',422.94,'USD',385,369,52,50,191452.52,'17');
INSERT INTO FLIGHTS VALUES('AA',1002,'18.07.2012',422.94,'USD',385,374,52,50,194074.69,'17');
INSERT INTO FLIGHTS VALUES('AA',1003,'15.08.2012',422.94,'USD',385,371,52,50,193410.6,'17');
INSERT INTO FLIGHTS VALUES('AA',1004,'12.09.2012',422.94,'USD',385,365,52,51,190424.78,'17');
INSERT INTO FLIGHTS VALUES('AA',1005,'10.10.2012',422.94,'USD',385,372,52,50,191719.01,'17');
INSERT INTO FLIGHTS VALUES('AA',1006,'07.11.2012',422.94,'USD',385,368,52,51,193503.68,'17');
INSERT INTO FLIGHTS VALUES('AA',1007,'05.12.2012',422.94,'USD',385,374,52,49,192712.79,'17');
INSERT INTO FLIGHTS VALUES('AA',1008,'02.01.2013',422.94,'USD',385,190,52,27,99450.22,'17');
INSERT INTO FLIGHTS VALUES('AA',1009,'30.01.2013',422.94,'USD',385,200,52,28,104571.94,'17');
INSERT INTO FLIGHTS VALUES('AA',1010,'27.02.2013',422.94,'USD',385,144,52,20,75460.99,'17');
INSERT INTO FLIGHTS VALUES('AA',1011,'27.03.2013',422.94,'USD',385,144,52,20,75460.99,'17');
INSERT INTO FLIGHTS VALUES('AA',1012,'24.04.2013',422.94,'USD',385,18,52,3,9710.7,'17');
INSERT INTO FLIGHTS VALUES('AA',1013,'22.05.2013',422.94,'USD',385,7,52,1,3404.69,'17');
INSERT INTO FLIGHTS VALUES('AA',1014,'27.04.2012',422.94,'USD',280,268,32,31,132397.27,'64');
INSERT INTO FLIGHTS VALUES('AA',1015,'25.05.2012',422.94,'USD',280,266,32,30,130392.64,'64');
INSERT INTO FLIGHTS VALUES('AA',1016,'22.06.2012',422.94,'USD',280,263,32,29,129715.86,'64');
INSERT INTO FLIGHTS VALUES('AA',1017,'20.07.2012',422.94,'USD',280,262,32,31,130248.72,'64');
INSERT INTO FLIGHTS VALUES('AA',1018,'17.08.2012',422.94,'USD',280,271,32,30,132959.81,'64');
INSERT INTO FLIGHTS VALUES('AA',1019,'14.09.2012',422.94,'USD',280,271,32,30,134478.17,'64');
INSERT INTO FLIGHTS VALUES('AA',1020,'12.10.2012',422.94,'USD',280,271,32,30,135666.52,'64');
INSERT INTO FLIGHTS VALUES('AA',1021,'09.11.2012',422.94,'USD',280,269,32,31,132553.75,'64');
INSERT INTO FLIGHTS VALUES('AA',1022,'07.12.2012',422.94,'USD',280,271,32,30,134710.73,'64');
INSERT INTO FLIGHTS VALUES('AA',1023,'04.01.2013',422.94,'USD',280,53,32,6,26535.28,'64');
INSERT INTO FLIGHTS VALUES('AA',1024,'01.02.2013',422.94,'USD',280,109,32,13,54352.09,'64');
INSERT INTO FLIGHTS VALUES('AA',1025,'01.03.2013',422.94,'USD',280,0,32,0,0,'64');
INSERT INTO FLIGHTS VALUES('AA',1026,'29.03.2013',422.94,'USD',280,0,32,0,0,'64');
INSERT INTO FLIGHTS VALUES('AA',1027,'26.04.2013',422.94,'USD',280,67,32,7,32435.29,'64');
INSERT INTO FLIGHTS VALUES('AA',1028,'24.05.2013',422.94,'USD',280,26,32,3,12886.99,'64');
INSERT INTO FLIGHTS VALUES('AZ',1029,'23.05.2012',185,'EUR',220,213,32,31,49032.4,'555');
INSERT INTO FLIGHTS VALUES('AZ',1030,'20.06.2012',185,'EUR',220,204,32,30,46884.55,'555');
INSERT INTO FLIGHTS VALUES('AZ',1031,'18.07.2012',185,'EUR',220,212,32,31,48708.65,'555');
INSERT INTO FLIGHTS VALUES('AZ',1032,'15.08.2012',185,'EUR',220,205,32,31,47637.5,'555');
INSERT INTO FLIGHTS VALUES('AZ',1033,'12.09.2012',185,'EUR',220,208,32,31,48124.05,'555');
INSERT INTO FLIGHTS VALUES('AZ',1034,'10.10.2012',185,'EUR',220,208,32,29,46854.95,'555');
INSERT INTO FLIGHTS VALUES('AZ',1035,'07.11.2012',185,'EUR',220,214,32,30,48581,'555');
INSERT INTO FLIGHTS VALUES('AZ',1036,'05.12.2012',185,'EUR',220,214,32,30,48346.05,'555');
INSERT INTO FLIGHTS VALUES('AZ',1037,'02.01.2013',185,'EUR',220,135,32,20,31257.6,'555');
INSERT INTO FLIGHTS VALUES('AZ',1038,'30.01.2013',185,'EUR',220,102,32,16,23807.65,'555');
INSERT INTO FLIGHTS VALUES('AZ',1039,'27.02.2013',185,'EUR',220,69,32,10,15810.1,'555');
INSERT INTO FLIGHTS VALUES('AZ',1040,'27.03.2013',185,'EUR',220,83,32,13,19328.8,'555');
INSERT INTO FLIGHTS VALUES('AZ',1041,'24.04.2013',185,'EUR',220,0,32,0,0,'555');
INSERT INTO FLIGHTS VALUES('AZ',1042,'22.05.2013',185,'EUR',220,32,32,5,7590.55,'555');
INSERT INTO FLIGHTS VALUES('AZ',1043,'22.05.2012',100,'EUR',380,367,59,57,471204.4,'788');
INSERT INTO FLIGHTS VALUES('AZ',1044,'19.06.2012',130,'EUR',380,368,59,57,475695.2,'788');
INSERT INTO FLIGHTS VALUES('AZ',1045,'17.07.2012',130,'EUR',380,365,59,57,471204.4,'788');
INSERT INTO FLIGHTS VALUES('AZ',1046,'14.08.2012',130,'EUR',380,362,59,58,475365.6,'788');
INSERT INTO FLIGHTS VALUES('AZ',1047,'11.09.2012',130,'EUR',380,365,59,56,471935.7,'788');
INSERT INTO FLIGHTS VALUES('AZ',1048,'09.10.2012',130,'EUR',380,363,59,58,473789.7,'788');
INSERT INTO FLIGHTS VALUES('AZ',1049,'06.11.2012',130,'EUR',380,367,59,55,473233.5,'788');
INSERT INTO FLIGHTS VALUES('AZ',1050,'04.12.2012',130,'EUR',380,363,59,58,473748.5,'788');
INSERT INTO FLIGHTS VALUES('AZ',1051,'01.01.2013',130,'EUR',380,107,59,16,137010.6,'788');
INSERT INTO FLIGHTS VALUES('AZ',1052,'29.01.2013',130,'EUR',380,33,59,6,45165.5,'788');
INSERT INTO FLIGHTS VALUES('AZ',1053,'26.02.2013',130,'EUR',380,106,59,17,138751.3,'788');
INSERT INTO FLIGHTS VALUES('AZ',1054,'26.03.2013',130,'EUR',380,120,59,18,153614.2,'788');
INSERT INTO FLIGHTS VALUES('AZ',1055,'23.04.2013',130,'EUR',380,53,59,9,70575.6,'788');
INSERT INTO FLIGHTS VALUES('AZ',1056,'21.05.2013',130,'EUR',380,27,59,4,33990,'788');
INSERT INTO FLIGHTS VALUES('AZ',1057,'23.05.2012',130,'EUR',380,369,59,55,472285.9,'789');
INSERT INTO FLIGHTS VALUES('AZ',1058,'20.06.2012',130,'EUR',380,366,59,58,478404.1,'789');
INSERT INTO FLIGHTS VALUES('AZ',1059,'18.07.2012',130,'EUR',380,370,59,57,477157.8,'789');
INSERT INTO FLIGHTS VALUES('AZ',1060,'15.08.2012',130,'EUR',380,367,59,56,473985.4,'789');
INSERT INTO FLIGHTS VALUES('AZ',1061,'12.09.2012',130,'EUR',380,369,59,57,477343.2,'789');
INSERT INTO FLIGHTS VALUES('AZ',1062,'10.10.2012',130,'EUR',380,362,59,57,468753,'789');
INSERT INTO FLIGHTS VALUES('AZ',1063,'07.11.2012',130,'EUR',380,368,59,59,480186,'789');
INSERT INTO FLIGHTS VALUES('AZ',1064,'05.12.2012',130,'EUR',380,363,59,55,464797.8,'789');
INSERT INTO FLIGHTS VALUES('AZ',1065,'02.01.2013',130,'EUR',380,199,59,32,260126.5,'789');
INSERT INTO FLIGHTS VALUES('AZ',1066,'30.01.2013',130,'EUR',380,10,59,2,14214,'789');
INSERT INTO FLIGHTS VALUES('AZ',1067,'27.02.2013',130,'EUR',380,176,59,29,231513.1,'789');
INSERT INTO FLIGHTS VALUES('AZ',1068,'27.03.2013',130,'EUR',380,7,59,1,8734.4,'789');
INSERT INTO FLIGHTS VALUES('AZ',1069,'24.04.2013',130,'EUR',380,10,59,2,14626,'789');
INSERT INTO FLIGHTS VALUES('AZ',1070,'22.05.2013',130,'EUR',380,33,59,6,44702,'789');
INSERT INTO FLIGHTS VALUES('AZ',1071,'23.05.2012',114,'EUR',385,370,52,50,459909.84,'790');
INSERT INTO FLIGHTS VALUES('AZ',1072,'20.06.2012',114,'EUR',385,363,52,49,452639.46,'790');
INSERT INTO FLIGHTS VALUES('AZ',1073,'18.07.2012',114,'EUR',385,373,52,52,467251.2,'790');
INSERT INTO FLIGHTS VALUES('AZ',1074,'15.08.2012',114,'EUR',385,368,52,49,454292.28,'790');
INSERT INTO FLIGHTS VALUES('AZ',1075,'12.09.2012',114,'EUR',385,365,52,51,457161.9,'790');
INSERT INTO FLIGHTS VALUES('AZ',1076,'10.10.2012',114,'EUR',385,373,52,48,459504.24,'790');
INSERT INTO FLIGHTS VALUES('AZ',1077,'07.11.2012',114,'EUR',385,372,52,51,463327.02,'790');
INSERT INTO FLIGHTS VALUES('AZ',1078,'05.12.2012',114,'EUR',385,374,52,50,462921.42,'790');
INSERT INTO FLIGHTS VALUES('AZ',1079,'02.01.2013',114,'EUR',385,42,52,6,51916.8,'790');
INSERT INTO FLIGHTS VALUES('AZ',1080,'30.01.2013',114,'EUR',385,220,52,29,272897.82,'790');
INSERT INTO FLIGHTS VALUES('AZ',1081,'27.02.2013',114,'EUR',385,74,52,9,89901.24,'790');
INSERT INTO FLIGHTS VALUES('AZ',1082,'27.03.2013',114,'EUR',385,107,52,14,132124.2,'790');
INSERT INTO FLIGHTS VALUES('AZ',1083,'24.04.2013',114,'EUR',385,57,52,8,70371.6,'790');
INSERT INTO FLIGHTS VALUES('AZ',1084,'22.05.2013',114,'EUR',385,27,52,4,34465.86,'790');
INSERT INTO FLIGHTS VALUES('DL',1085,'21.05.2012',611.01,'USD',280,271,32,31,193274.95,'106');
INSERT INTO FLIGHTS VALUES('DL',1086,'18.06.2012',611.01,'USD',280,267,32,31,192327.86,'106');
INSERT INTO FLIGHTS VALUES('DL',1087,'16.07.2012',611.01,'USD',280,271,32,29,191722.96,'106');
INSERT INTO FLIGHTS VALUES('DL',1088,'13.08.2012',611.01,'USD',280,271,32,31,196329.97,'106');
INSERT INTO FLIGHTS VALUES('DL',1089,'10.09.2012',611.01,'USD',280,270,32,30,192822.78,'106');
INSERT INTO FLIGHTS VALUES('DL',1090,'08.10.2012',611.01,'USD',280,271,32,31,194313.67,'106');
INSERT INTO FLIGHTS VALUES('DL',1091,'05.11.2012',611.01,'USD',280,271,32,31,195621.21,'106');
INSERT INTO FLIGHTS VALUES('DL',1092,'03.12.2012',611.01,'USD',280,271,32,31,195810.6,'106');
INSERT INTO FLIGHTS VALUES('DL',1093,'31.12.2012',611.01,'USD',280,126,32,15,90967.29,'106');
INSERT INTO FLIGHTS VALUES('DL',1094,'28.01.2013',611.01,'USD',280,15,32,2,11108.18,'106');
INSERT INTO FLIGHTS VALUES('DL',1095,'25.02.2013',611.01,'USD',280,126,32,13,88242.18,'106');
INSERT INTO FLIGHTS VALUES('DL',1096,'25.03.2013',611.01,'USD',280,73,32,9,52760.79,'106');
INSERT INTO FLIGHTS VALUES('DL',1097,'22.04.2013',611.01,'USD',280,56,32,7,40479.47,'106');
INSERT INTO FLIGHTS VALUES('DL',1098,'20.05.2013',611.01,'USD',280,16,32,2,11914.71,'106');
INSERT INTO FLIGHTS VALUES('DL',1099,'21.05.2012',422.94,'USD',220,212,32,32,112527.45,'1699');
INSERT INTO FLIGHTS VALUES('DL',1100,'18.06.2012',422.94,'USD',220,204,32,29,106352.63,'1699');
INSERT INTO FLIGHTS VALUES('DL',1101,'16.07.2012',422.94,'USD',220,204,32,31,107697.62,'1699');
INSERT INTO FLIGHTS VALUES('DL',1102,'13.08.2012',422.94,'USD',220,212,32,30,111017.62,'1699');
INSERT INTO FLIGHTS VALUES('DL',1103,'10.09.2012',422.94,'USD',220,204,32,30,106111.6,'1699');
INSERT INTO FLIGHTS VALUES('DL',1104,'08.10.2012',422.94,'USD',220,214,32,30,110911.94,'1699');
INSERT INTO FLIGHTS VALUES('DL',1105,'05.11.2012',422.94,'USD',220,213,32,30,110577.69,'1699');
INSERT INTO FLIGHTS VALUES('DL',1106,'03.12.2012',422.94,'USD',220,202,32,31,106893.94,'1699');
INSERT INTO FLIGHTS VALUES('DL',1107,'31.12.2012',422.94,'USD',220,124,32,19,65450.06,'1699');
INSERT INTO FLIGHTS VALUES('DL',1108,'28.01.2013',422.94,'USD',220,93,32,13,47640,'1699');
INSERT INTO FLIGHTS VALUES('DL',1109,'25.02.2013',422.94,'USD',220,53,32,7,27186.65,'1699');
INSERT INTO FLIGHTS VALUES('DL',1110,'25.03.2013',422.94,'USD',220,31,32,4,15691.12,'1699');
INSERT INTO FLIGHTS VALUES('DL',1111,'22.04.2013',422.94,'USD',220,47,32,7,24699.68,'1699');
INSERT INTO FLIGHTS VALUES('DL',1112,'20.05.2013',422.94,'USD',220,0,32,0,0,'1699');
INSERT INTO FLIGHTS VALUES('DL',1113,'21.05.2012',422.94,'USD',380,359,59,56,190843.38,'1984');
INSERT INTO FLIGHTS VALUES('DL',1114,'18.06.2012',422.94,'USD',380,364,59,59,195914.46,'1984');
INSERT INTO FLIGHTS VALUES('DL',1115,'16.07.2012',422.94,'USD',380,369,59,55,192619.81,'1984');
INSERT INTO FLIGHTS VALUES('DL',1116,'13.08.2012',422.94,'USD',380,363,59,57,193973.11,'1984');
INSERT INTO FLIGHTS VALUES('DL',1117,'10.09.2012',422.94,'USD',380,365,59,56,193059.59,'1984');
INSERT INTO FLIGHTS VALUES('DL',1118,'08.10.2012',422.94,'USD',380,361,59,56,191710.47,'1984');
INSERT INTO FLIGHTS VALUES('DL',1119,'05.11.2012',422.94,'USD',380,370,59,56,194298.94,'1984');
INSERT INTO FLIGHTS VALUES('DL',1120,'03.12.2012',422.94,'USD',380,364,59,57,194379.14,'1984');
INSERT INTO FLIGHTS VALUES('DL',1121,'31.12.2012',422.94,'USD',380,39,59,6,20800.19,'1984');
INSERT INTO FLIGHTS VALUES('DL',1122,'28.01.2013',422.94,'USD',380,21,59,3,11017.6,'1984');
INSERT INTO FLIGHTS VALUES('DL',1123,'25.02.2013',422.94,'USD',380,39,59,6,20571.82,'1984');
INSERT INTO FLIGHTS VALUES('DL',1124,'25.03.2013',422.94,'USD',380,21,59,2,10108.28,'1984');
INSERT INTO FLIGHTS VALUES('DL',1125,'22.04.2013',422.94,'USD',380,51,59,7,26378.77,'1984');
INSERT INTO FLIGHTS VALUES('DL',1126,'20.05.2013',422.94,'USD',380,2,59,0,803.58,'1984');
INSERT INTO FLIGHTS VALUES('JL',1127,'27.04.2012',161.36,'JPY',380,359,59,54,473992.52,'407');
INSERT INTO FLIGHTS VALUES('JL',1128,'25.05.2012',161.36,'JPY',380,368,59,58,488936.58,'407');
INSERT INTO FLIGHTS VALUES('JL',1129,'22.06.2012',161.36,'JPY',380,369,59,56,489127.57,'407');
INSERT INTO FLIGHTS VALUES('JL',1130,'20.07.2012',161.36,'JPY',380,361,59,56,481284.09,'407');
INSERT INTO FLIGHTS VALUES('JL',1131,'17.08.2012',161.36,'JPY',380,370,59,57,491303.29,'407');
INSERT INTO FLIGHTS VALUES('JL',1132,'14.09.2012',161.36,'JPY',380,362,59,56,483045.89,'407');
INSERT INTO FLIGHTS VALUES('JL',1133,'12.10.2012',161.36,'JPY',380,367,59,57,490953.01,'407');
INSERT INTO FLIGHTS VALUES('JL',1134,'09.11.2012',161.36,'JPY',380,359,59,56,478779.32,'407');
INSERT INTO FLIGHTS VALUES('JL',1135,'07.12.2012',161.36,'JPY',380,359,59,58,484510.59,'407');
INSERT INTO FLIGHTS VALUES('JL',1136,'04.01.2013',161.36,'JPY',380,108,59,17,144037.07,'407');
INSERT INTO FLIGHTS VALUES('JL',1137,'01.02.2013',161.36,'JPY',380,122,59,19,163969.36,'407');
INSERT INTO FLIGHTS VALUES('JL',1138,'01.03.2013',161.36,'JPY',380,48,59,7,62397.32,'407');
INSERT INTO FLIGHTS VALUES('JL',1139,'29.03.2013',161.36,'JPY',380,111,59,15,142041.74,'407');
INSERT INTO FLIGHTS VALUES('JL',1140,'26.04.2013',161.36,'JPY',380,70,59,11,93569.44,'407');
INSERT INTO FLIGHTS VALUES('JL',1141,'24.05.2013',161.36,'JPY',380,9,59,1,10772.81,'407');
INSERT INTO FLIGHTS VALUES('JL',1142,'28.04.2012',161.36,'JPY',385,371,52,51,483523.47,'408');
INSERT INTO FLIGHTS VALUES('JL',1143,'26.05.2012',161.36,'JPY',385,370,52,52,486176.8,'408');
INSERT INTO FLIGHTS VALUES('JL',1144,'23.06.2012',161.36,'JPY',385,364,52,48,470988.85,'408');
INSERT INTO FLIGHTS VALUES('JL',1145,'21.07.2012',161.36,'JPY',385,366,52,52,484892.57,'408');
INSERT INTO FLIGHTS VALUES('JL',1146,'18.08.2012',161.36,'JPY',385,374,52,49,484107.28,'408');
INSERT INTO FLIGHTS VALUES('JL',1147,'15.09.2012',161.36,'JPY',385,371,52,51,486166.32,'408');
INSERT INTO FLIGHTS VALUES('JL',1148,'13.10.2012',161.36,'JPY',385,374,52,50,487429.24,'408');
INSERT INTO FLIGHTS VALUES('JL',1149,'10.11.2012',161.36,'JPY',385,372,52,50,485253.45,'408');
INSERT INTO FLIGHTS VALUES('JL',1150,'08.12.2012',161.36,'JPY',385,373,52,50,484340.66,'408');
INSERT INTO FLIGHTS VALUES('JL',1151,'05.01.2013',161.36,'JPY',385,193,52,26,252274.46,'408');
INSERT INTO FLIGHTS VALUES('JL',1152,'02.02.2013',161.36,'JPY',385,90,52,12,118086.85,'408');
INSERT INTO FLIGHTS VALUES('JL',1153,'02.03.2013',161.36,'JPY',385,64,52,8,80896.88,'408');
INSERT INTO FLIGHTS VALUES('JL',1154,'30.03.2013',161.36,'JPY',385,94,52,13,122449.06,'408');
INSERT INTO FLIGHTS VALUES('JL',1155,'27.04.2013',161.36,'JPY',385,69,52,10,90268.62,'408');
INSERT INTO FLIGHTS VALUES('JL',1156,'25.05.2013',161.36,'JPY',385,40,52,5,51847.4,'408');
INSERT INTO FLIGHTS VALUES('LH',1157,'28.04.2012',666,'EUR',280,267,32,30,208551.24,'400');
INSERT INTO FLIGHTS VALUES('LH',1158,'26.05.2012',666,'EUR',280,271,32,32,212700.42,'400');
INSERT INTO FLIGHTS VALUES('LH',1159,'23.06.2012',666,'EUR',280,271,32,30,209390.4,'400');
INSERT INTO FLIGHTS VALUES('LH',1160,'21.07.2012',666,'EUR',280,270,32,31,211521.6,'400');
INSERT INTO FLIGHTS VALUES('LH',1161,'18.08.2012',666,'EUR',280,261,32,31,205880.58,'400');
INSERT INTO FLIGHTS VALUES('LH',1162,'15.09.2012',666,'EUR',280,271,32,31,210555.9,'400');
INSERT INTO FLIGHTS VALUES('LH',1163,'28.09.2012',666,'EUR',280,270,32,31,210043.08,'400');
INSERT INTO FLIGHTS VALUES('LH',1164,'13.10.2012',666,'EUR',280,271,32,31,211721.4,'400');
INSERT INTO FLIGHTS VALUES('LH',1165,'28.10.2012',666,'EUR',280,271,32,31,209736.72,'400');
INSERT INTO FLIGHTS VALUES('LH',1166,'10.11.2012',666,'EUR',280,265,32,29,202497.3,'400');
INSERT INTO FLIGHTS VALUES('LH',1167,'08.12.2012',666,'EUR',280,264,32,29,205227.9,'400');
INSERT INTO FLIGHTS VALUES('LH',1168,'05.01.2013',666,'EUR',280,102,32,12,80013.24,'400');
INSERT INTO FLIGHTS VALUES('LH',1169,'02.02.2013',666,'EUR',280,14,32,2,11981.34,'400');
INSERT INTO FLIGHTS VALUES('LH',1170,'02.03.2013',666,'EUR',280,42,32,5,33193.44,'400');
INSERT INTO FLIGHTS VALUES('LH',1171,'30.03.2013',666,'EUR',280,0,32,0,0,'400');
INSERT INTO FLIGHTS VALUES('LH',1172,'27.04.2013',666,'EUR',280,21,32,3,16983,'400');
INSERT INTO FLIGHTS VALUES('LH',1173,'25.05.2013',666,'EUR',280,36,32,4,27519.12,'400');
INSERT INTO FLIGHTS VALUES('LH',1174,'27.04.2012',666,'EUR',220,215,32,29,172853.64,'401');
INSERT INTO FLIGHTS VALUES('LH',1175,'25.05.2012',666,'EUR',220,207,32,30,169696.8,'401');
INSERT INTO FLIGHTS VALUES('LH',1176,'22.06.2012',666,'EUR',220,203,32,30,168344.82,'401');
INSERT INTO FLIGHTS VALUES('LH',1177,'20.07.2012',666,'EUR',220,203,32,30,168224.94,'401');
INSERT INTO FLIGHTS VALUES('LH',1178,'17.08.2012',666,'EUR',220,210,32,32,174545.28,'401');
INSERT INTO FLIGHTS VALUES('LH',1179,'14.09.2012',666,'EUR',220,209,32,32,173965.86,'401');
INSERT INTO FLIGHTS VALUES('LH',1180,'28.09.2012',666,'EUR',220,213,32,31,174778.38,'401');
INSERT INTO FLIGHTS VALUES('LH',1181,'12.10.2012',666,'EUR',220,214,32,30,174305.52,'401');
INSERT INTO FLIGHTS VALUES('LH',1182,'28.10.2012',666,'EUR',220,209,32,31,172693.8,'401');
INSERT INTO FLIGHTS VALUES('LH',1183,'09.11.2012',666,'EUR',220,214,32,30,173839.32,'401');
INSERT INTO FLIGHTS VALUES('LH',1184,'07.12.2012',666,'EUR',220,209,32,31,172194.3,'401');
INSERT INTO FLIGHTS VALUES('LH',1185,'04.01.2013',666,'EUR',220,124,32,19,102837.06,'401');
INSERT INTO FLIGHTS VALUES('LH',1186,'01.02.2013',666,'EUR',220,0,32,0,0,'401');
INSERT INTO FLIGHTS VALUES('LH',1187,'01.03.2013',666,'EUR',220,84,32,10,65547.72,'401');
INSERT INTO FLIGHTS VALUES('LH',1188,'29.03.2013',666,'EUR',220,61,32,8,48065.22,'401');
INSERT INTO FLIGHTS VALUES('LH',1189,'26.04.2013',666,'EUR',220,36,32,6,30582.72,'401');
INSERT INTO FLIGHTS VALUES('LH',1190,'24.05.2013',666,'EUR',220,0,32,0,0,'401');
INSERT INTO FLIGHTS VALUES('LH',1191,'21.05.2012',666,'EUR',380,368,59,56,308358,'402');
INSERT INTO FLIGHTS VALUES('LH',1192,'18.06.2012',666,'EUR',380,366,59,57,305720.64,'402');
INSERT INTO FLIGHTS VALUES('LH',1193,'16.07.2012',666,'EUR',380,365,59,56,305014.68,'402');
INSERT INTO FLIGHTS VALUES('LH',1194,'13.08.2012',666,'EUR',380,362,59,56,303083.28,'402');
INSERT INTO FLIGHTS VALUES('LH',1195,'10.09.2012',666,'EUR',380,369,59,57,308904.12,'402');
INSERT INTO FLIGHTS VALUES('LH',1196,'28.09.2012',666,'EUR',380,361,59,56,301638.06,'402');
INSERT INTO FLIGHTS VALUES('LH',1197,'08.10.2012',666,'EUR',380,368,59,59,312607.08,'402');
INSERT INTO FLIGHTS VALUES('LH',1198,'28.10.2012',666,'EUR',380,368,59,56,305081.28,'402');
INSERT INTO FLIGHTS VALUES('LH',1199,'05.11.2012',666,'EUR',380,362,59,57,302663.7,'02');

--BOOKINGS TABLE
INSERT INTO BOOKINGS VALUES('AA',1000,1,3828,'16.01.2012','Lothar Moyano',0);
INSERT INTO BOOKINGS VALUES('AA',1000,2,1047,'08.04.2012','Irene Jacqmain',0);
INSERT INTO BOOKINGS VALUES('AA',1000,3,159,'18.03.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,4,1274,'06.04.2012','Friedrich Rahn',0);
INSERT INTO BOOKINGS VALUES('AA',1000,5,2873,'19.03.2012','Irene Barth',0);
INSERT INTO BOOKINGS VALUES('AA',1000,6,2873,'05.01.2012','Irene Barth',0);
INSERT INTO BOOKINGS VALUES('AA',1000,7,2289,'11.04.2012','Simon Prinz',0);
INSERT INTO BOOKINGS VALUES('AA',1000,8,1740,'21.03.2012','Florian Neubacher',0);
INSERT INTO BOOKINGS VALUES('AA',1000,9,1703,'05.05.2012','Achim Mechler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,10,869,'08.02.2012','Marta Simon',0);
INSERT INTO BOOKINGS VALUES('AA',1000,11,2997,'05.03.2012','Anne-Marie Pan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,12,6,'07.05.2012','Starr',0);
INSERT INTO BOOKINGS VALUES('AA',1000,13,3218,'11.03.2012','Ida Detemple',0);
INSERT INTO BOOKINGS VALUES('AA',1000,14,1625,'23.03.2012','Florian Ittner',0);
INSERT INTO BOOKINGS VALUES('AA',1000,15,3641,'16.04.2012','Mathilde Domenech',0);
INSERT INTO BOOKINGS VALUES('AA',1000,16,3328,'15.03.2012','Anna Matthaeus',0);
INSERT INTO BOOKINGS VALUES('AA',1000,17,172,'02.03.2012','John Smith',0);
INSERT INTO BOOKINGS VALUES('AA',1000,18,4041,'01.02.2012','Anna Vrsic',0);
INSERT INTO BOOKINGS VALUES('AA',1000,19,2800,'29.01.2012','Uli Martin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,20,3019,'06.02.2012','Hendrik Weiss',0);
INSERT INTO BOOKINGS VALUES('AA',1000,21,1172,'25.03.2012','Lothar Matthaeus',0);
INSERT INTO BOOKINGS VALUES('AA',1000,22,1805,'31.12.2011','Salvador Cesari',0);
INSERT INTO BOOKINGS VALUES('AA',1000,23,494,'24.03.2012','Astrid Hunter',0);
INSERT INTO BOOKINGS VALUES('AA',1000,24,2646,'19.03.2012','Thomas Oultrement',0);
INSERT INTO BOOKINGS VALUES('AA',1000,25,4313,'25.04.2012','Cindy Simon',0);
INSERT INTO BOOKINGS VALUES('AA',1000,26,938,'03.04.2012','Ludwig Heiler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,27,2731,'23.04.2012','Siegfried Heiler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,28,3439,'17.03.2012','Thilo Mechler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,29,2143,'01.01.2012','Friedrich Legrand',0);
INSERT INTO BOOKINGS VALUES('AA',1000,30,3029,'25.01.2012','Georg Pratt',0);
INSERT INTO BOOKINGS VALUES('AA',1000,31,2717,'11.05.2012','Johannes Buehler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,32,2207,'03.03.2012','Hendrik Kreiss',0);
INSERT INTO BOOKINGS VALUES('AA',1000,33,2779,'23.02.2012','Lee Rahn',0);
INSERT INTO BOOKINGS VALUES('AA',1000,34,794,'12.05.2012','Ida Rahn',0);
INSERT INTO BOOKINGS VALUES('AA',1000,35,1647,'25.02.2012','Thomas Jacqmain',0);
INSERT INTO BOOKINGS VALUES('AA',1000,36,3387,'01.01.2012','Guillermo Barth',0);
INSERT INTO BOOKINGS VALUES('AA',1000,37,2594,'03.01.2012','Dominik Kramer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,38,438,'12.01.2012','Jean-Luc Kreiss',0);
INSERT INTO BOOKINGS VALUES('AA',1000,39,2601,'25.12.2011','Astrid Gahl',0);
INSERT INTO BOOKINGS VALUES('AA',1000,40,3084,'07.04.2012','Lothar Keller',0);
INSERT INTO BOOKINGS VALUES('AA',1000,41,2783,'18.02.2012','Mathilde Sessler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,42,2766,'10.03.2012','James Ittner',0);
INSERT INTO BOOKINGS VALUES('AA',1000,43,2257,'01.01.2012','Claire Sudhoff',0);
INSERT INTO BOOKINGS VALUES('AA',1000,44,3493,'11.01.2012','Stephen Ryan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,45,3434,'24.03.2012','Mathilde Forstmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,46,3042,'08.01.2012','Achim Dumbach',0);
INSERT INTO BOOKINGS VALUES('AA',1000,47,2520,'04.04.2012','Fabio Hoffmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,48,1486,'25.04.2012','Fabio Detemple',0);
INSERT INTO BOOKINGS VALUES('AA',1000,49,1243,'27.12.2011','Lee Trensch',0);
INSERT INTO BOOKINGS VALUES('AA',1000,50,417,'07.02.2012','Fabio Gahl',0);
INSERT INTO BOOKINGS VALUES('AA',1000,51,4292,'01.01.2012','Hendrik Wohl',0);
INSERT INTO BOOKINGS VALUES('AA',1000,52,2832,'08.05.2012','Thomas Picard',0);
INSERT INTO BOOKINGS VALUES('AA',1000,53,2118,'02.02.2012','Joschka Sisko',0);
INSERT INTO BOOKINGS VALUES('AA',1000,54,1312,'20.02.2012','Roland Deichgraeber',0);
INSERT INTO BOOKINGS VALUES('AA',1000,55,562,'29.12.2011','Adam Vrsic',0);
INSERT INTO BOOKINGS VALUES('AA',1000,56,1920,'28.12.2011','Ruth Benjamin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,57,3623,'10.05.2012','Anne-Marie Matthaeus',0);
INSERT INTO BOOKINGS VALUES('AA',1000,58,4217,'04.04.2012','Irene Vrsic',0);
INSERT INTO BOOKINGS VALUES('AA',1000,59,928,'15.04.2012','Lee Jacqmain',0);
INSERT INTO BOOKINGS VALUES('AA',1000,60,1010,'04.01.2012','Guenther Kirk',0);
INSERT INTO BOOKINGS VALUES('AA',1000,61,3939,'18.01.2012','Lothar Ryan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,62,3023,'01.02.2012','Illya Gahl',0);
INSERT INTO BOOKINGS VALUES('AA',1000,63,3158,'06.01.2012','Gisela Legrand',0);
INSERT INTO BOOKINGS VALUES('AA',1000,64,1505,'01.04.2012','Ida Moyano',0);
INSERT INTO BOOKINGS VALUES('AA',1000,65,1408,'12.03.2012','Cindy Schneider',0);
INSERT INTO BOOKINGS VALUES('AA',1000,66,1408,'05.05.2012','Cindy Schneider',0);
INSERT INTO BOOKINGS VALUES('AA',1000,67,2116,'04.02.2012','Chantal Buehler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,68,3439,'18.03.2012','Thilo Mechler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,69,1836,'11.04.2012','Adam Kirk',0);
INSERT INTO BOOKINGS VALUES('AA',1000,70,1738,'24.03.2012','Amelie Pratt',0);
INSERT INTO BOOKINGS VALUES('AA',1000,71,2525,'30.03.2012','Lothar Columbo',0);
INSERT INTO BOOKINGS VALUES('AA',1000,72,4010,'11.03.2012','Marta Keller',0);
INSERT INTO BOOKINGS VALUES('AA',1000,73,1886,'09.02.2012','Peter Rahn',0);
INSERT INTO BOOKINGS VALUES('AA',1000,74,1746,'13.03.2012','Jean-Luc Buchholz',0);
INSERT INTO BOOKINGS VALUES('AA',1000,75,3085,'06.04.2012','Siegfried Pan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,76,4119,'16.03.2012','Marta Rahn',0);
INSERT INTO BOOKINGS VALUES('AA',1000,77,4321,'15.04.2012','Hendrik Vrsic',0);
INSERT INTO BOOKINGS VALUES('AA',1000,78,356,'23.04.2012','Pierre Dumbach',0);
INSERT INTO BOOKINGS VALUES('AA',1000,79,3224,'04.03.2012','Siegfried Forstmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,80,1086,'20.02.2012','Claire Hansmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,81,1277,'03.04.2012','Pierre Moyano',0);
INSERT INTO BOOKINGS VALUES('AA',1000,82,3331,'12.03.2012','Laura Goerke',0);
INSERT INTO BOOKINGS VALUES('AA',1000,83,243,'24.04.2012',NULL,0);	
INSERT INTO BOOKINGS VALUES('AA',1000,84,2662,'29.02.2012','Sophie Sommer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,85,2726,'30.04.2012','Horst Detemple',0);
INSERT INTO BOOKINGS VALUES('AA',1000,86,3739,'06.05.2012','Guillermo Bentink',0);
INSERT INTO BOOKINGS VALUES('AA',1000,87,4615,'22.01.2012','Theresia Forstmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,88,2289,'10.04.2012','Simon Prinz',0);
INSERT INTO BOOKINGS VALUES('AA',1000,89,2699,'13.01.2012','Theresia Pan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,90,227,'25.12.2011',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,91,3777,'20.03.2012','August Fischer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,92,3706,'27.01.2012','Fabio Babilon',0);
INSERT INTO BOOKINGS VALUES('AA',1000,93,849,'04.03.2012','Anneliese D?Oultrement',0);
INSERT INTO BOOKINGS VALUES('AA',1000,94,1530,'29.02.2012','Lothar Simon',0);
INSERT INTO BOOKINGS VALUES('AA',1000,95,2067,'05.04.2012','Christa Trensch',0);
INSERT INTO BOOKINGS VALUES('AA',1000,96,163,'14.03.2012',NULL,0);	
INSERT INTO BOOKINGS VALUES('AA',1000,97,2744,'07.04.2012','Torben Madeya',0);
INSERT INTO BOOKINGS VALUES('AA',1000,98,1746,'14.03.2012','Jean-Luc Buchholz',0);
INSERT INTO BOOKINGS VALUES('AA',1000,99,1956,'03.04.2012','Horst Forstmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,100,2807,'20.01.2012','Anne-Marie Meier',0);
INSERT INTO BOOKINGS VALUES('AA',1000,101,313,'27.01.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,102,525,'14.02.2012','Sophie D?Oultrement',0);
INSERT INTO BOOKINGS VALUES('AA',1000,103,4210,'12.04.2012','Mathilde A. Detemple',0);
INSERT INTO BOOKINGS VALUES('AA',1000,104,4573,'14.03.2012','Gisela Miguel',0);
INSERT INTO BOOKINGS VALUES('AA',1000,105,1636,'10.03.2012','Thomas Vrsic',0);
INSERT INTO BOOKINGS VALUES('AA',1000,106,3148,'18.01.2012','Lothar Koslowski',0);
INSERT INTO BOOKINGS VALUES('AA',1000,107,3184,'23.04.2012','Lee Martin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,108,3419,'12.04.2012','Uli Leisert',0);
INSERT INTO BOOKINGS VALUES('AA',1000,109,4270,'29.01.2012','Johannes Sudhoff',0);
INSERT INTO BOOKINGS VALUES('AA',1000,110,3116,'27.02.2012','Achim Ittner',0);
INSERT INTO BOOKINGS VALUES('AA',1000,111,850,'03.03.2012','Adam Bentink',0);
INSERT INTO BOOKINGS VALUES('AA',1000,112,2825,'29.12.2011','Allen Schneider',0);
INSERT INTO BOOKINGS VALUES('AA',1000,113,2945,'09.05.2012','Achim Hansmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,114,348,'03.05.2012','Salvador Heiler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,115,3976,'23.04.2012','Claire Gueldenpfennig',0);
INSERT INTO BOOKINGS VALUES('AA',1000,116,4169,'14.01.2012','Johannes Prinz',0);
INSERT INTO BOOKINGS VALUES('AA',1000,117,4169,'02.05.2012','Johannes Prinz',0);
INSERT INTO BOOKINGS VALUES('AA',1000,118,308,'02.02.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,119,1760,'25.02.2012','Torben Benjamin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,120,2992,'12.03.2012','Guenther Forstmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,121,677,'28.12.2011','Annemarie Miguel',0);
INSERT INTO BOOKINGS VALUES('AA',1000,122,4448,'29.03.2012','Thomas Kreiss',0);
INSERT INTO BOOKINGS VALUES('AA',1000,123,391,'11.03.2012','Florian D?Oultrement',0);
INSERT INTO BOOKINGS VALUES('AA',1000,124,1209,'07.02.2012','Adam Martin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,125,77,'09.02.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,126,1914,'05.01.2012','Benjamin Dumbach',0);
INSERT INTO BOOKINGS VALUES('AA',1000,127,2403,'09.04.2012','Christine Jeremias',0);
INSERT INTO BOOKINGS VALUES('AA',1000,128,4302,'09.05.2012','Salvador Hansmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,129,219,'03.01.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,130,4583,'02.03.2012','Peter Montero',0);
INSERT INTO BOOKINGS VALUES('AA',1000,131,348,'04.05.2012','Salvador Heiler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,132,2997,'05.03.2012','Anne-Marie Pan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,133,4299,'13.05.2012','Carmel Jacqmain',0);
INSERT INTO BOOKINGS VALUES('AA',1000,134,624,'02.03.2012','Allen Meier',0);
INSERT INTO BOOKINGS VALUES('AA',1000,135,3834,'09.01.2012','Thilo Leisert',0);
INSERT INTO BOOKINGS VALUES('AA',1000,136,1657,'13.02.2012','Gerd Lindwurm',0);
INSERT INTO BOOKINGS VALUES('AA',1000,137,979,'12.02.2012','Salvador D?Oultrement',0);
INSERT INTO BOOKINGS VALUES('AA',1000,138,1895,'29.01.2012','Guillermo Schneider',0);
INSERT INTO BOOKINGS VALUES('AA',1000,139,2716,'12.05.2012','Irmgard Lautenbach',0);
INSERT INTO BOOKINGS VALUES('AA',1000,140,977,'14.02.2012','Achim Kramer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,141,3744,'29.04.2012','Anne-Marie Heiler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,142,4548,'14.04.2012','Chantal Zimmermann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,143,2353,'21.01.2012','Andreas Lindwurm',0);
INSERT INTO BOOKINGS VALUES('AA',1000,144,3765,'03.04.2012','Joschka Barth',0);
INSERT INTO BOOKINGS VALUES('AA',1000,145,3148,'17.01.2012','Lothar Koslowski',0);
INSERT INTO BOOKINGS VALUES('AA',1000,146,89,'25.01.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,147,3643,'15.04.2012','Juan Picard',0);
INSERT INTO BOOKINGS VALUES('AA',1000,148,1041,'16.04.2012','Andreas Ittner',0);
INSERT INTO BOOKINGS VALUES('AA',1000,149,4130,'02.03.2012','Gisela Fischer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,150,3752,'20.04.2012','Ulla Zimmermann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,151,3472,'05.02.2012','Ida Madeya',0);
INSERT INTO BOOKINGS VALUES('AA',1000,152,1873,'25.02.2012','Dominik Miguel',0);
INSERT INTO BOOKINGS VALUES('AA',1000,153,3691,'15.02.2012','Guillermo Eichbaum',0);
INSERT INTO BOOKINGS VALUES('AA',1000,154,2962,'18.04.2012','Claire Hoffmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,155,1107,'24.01.2012','Friedrich Heiler',0);
INSERT INTO BOOKINGS VALUES('AA',1000,156,4445,'01.04.2012','Salvador Miguel',0);
INSERT INTO BOOKINGS VALUES('AA',1000,157,898,'03.01.2012','Lothar Picard',0);
INSERT INTO BOOKINGS VALUES('AA',1000,158,541,'25.01.2012','Peter Henry',0);
INSERT INTO BOOKINGS VALUES('AA',1000,159,2983,'23.03.2012','Friedrich Zimmermann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,160,4239,'07.03.2012','Sophie Fischer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,161,2282,'20.04.2012','Ulla Miguel',0);
INSERT INTO BOOKINGS VALUES('AA',1000,162,3653,'01.04.2012','Johannes Martin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,163,327,'09.01.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,164,1065,'17.03.2012','Stephen Henry',0);
INSERT INTO BOOKINGS VALUES('AA',1000,165,2862,'01.04.2012','Fabio Sommer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,166,1608,'14.04.2012','Astrid Forstmann',0);
INSERT INTO BOOKINGS VALUES('AA',1000,167,2398,'16.04.2012','James Trensch',0);
INSERT INTO BOOKINGS VALUES('AA',1000,168,4485,'12.02.2012','Amelie Picard',0);
INSERT INTO BOOKINGS VALUES('AA',1000,169,1684,'09.01.2012','Anneliese Schneider',0);
INSERT INTO BOOKINGS VALUES('AA',1000,170,1371,'27.04.2012','Fabio Henry',0);
INSERT INTO BOOKINGS VALUES('AA',1000,171,3284,'09.05.2012','Thomas Pan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,172,1203,'15.02.2012','Laura Babilon',0);
INSERT INTO BOOKINGS VALUES('AA',1000,173,3169,'12.05.2012','Sophie Sisko',0);
INSERT INTO BOOKINGS VALUES('AA',1000,174,1720,'15.04.2012','Gerd Matthaeus',0);
INSERT INTO BOOKINGS VALUES('AA',1000,175,360,'19.04.2012','Andreas Jacqmain',0);
INSERT INTO BOOKINGS VALUES('AA',1000,176,245,'20.04.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,177,2785,'16.02.2012','Hendrik Trensch',0);
INSERT INTO BOOKINGS VALUES('AA',1000,178,772,'19.01.2012','Georg Kramer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,179,2207,'03.03.2012','Hendrik Kreiss',0);
INSERT INTO BOOKINGS VALUES('AA',1000,180,2529,'24.03.2012','Marta Neubacher',0);
INSERT INTO BOOKINGS VALUES('AA',1000,181,2415,'26.03.2012','Johannes Leisert',0);
INSERT INTO BOOKINGS VALUES('AA',1000,182,292,'22.02.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,183,2195,'17.03.2012','Anneliese Pratt',0);
INSERT INTO BOOKINGS VALUES('AA',1000,184,2088,'10.03.2012','Achim Cesari',0);
INSERT INTO BOOKINGS VALUES('AA',1000,185,2660,'02.03.2012','Andrej Ryan',0);
INSERT INTO BOOKINGS VALUES('AA',1000,186,240,'27.04.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,187,2851,'15.04.2012','Chantal Henry',0);
INSERT INTO BOOKINGS VALUES('AA',1000,188,1232,'09.01.2012','Lee Matthaeus',0);
INSERT INTO BOOKINGS VALUES('AA',1000,189,1159,'09.04.2012','Christa Goerke',0);
INSERT INTO BOOKINGS VALUES('AA',1000,190,3783,'11.03.2012','Jean-Luc Leisert',0);
INSERT INTO BOOKINGS VALUES('AA',1000,191,807,'25.04.2012','Marta Wohl',0);
INSERT INTO BOOKINGS VALUES('AA',1000,192,1671,'26.01.2012','Theresia Madeya',0);
INSERT INTO BOOKINGS VALUES('AA',1000,193,1474,'09.05.2012','Georg Fischer',0);
INSERT INTO BOOKINGS VALUES('AA',1000,194,576,'01.05.2012','Andreas Henry',0);
INSERT INTO BOOKINGS VALUES('AA',1000,195,1695,'28.12.2011','August Henry',0);
INSERT INTO BOOKINGS VALUES('AA',1000,196,4379,'03.02.2012','Marta Leisert',0);
INSERT INTO BOOKINGS VALUES('AA',1000,197,881,'24.01.2012','Lothar Pratt',0);
INSERT INTO BOOKINGS VALUES('AA',1000,198,71,'16.02.2012',NULL,0);
INSERT INTO BOOKINGS VALUES('AA',1000,199,965,'29.02.2012','Christine Martin',0);
INSERT INTO BOOKINGS VALUES('AA',1000,200,1952,'07.04.2012','Ludwig Jeremias',0);

CREATE VIEW DISPLAYS AS
SELECT NAME,FLIGHTS.FLIGHT_NUMBER,FLIGHT_DATA,PRICE,DEPT_COUNTRY,DEPT_CITY
FROM AIRLINES,FLIGHTS INNER JOIN SCHEDULES
ON FLIGHTS.FLIGHT_NUMBER=SCHEDULES.FLIGHT_NUMBER;

CREATE VIEW V_COMPANY_PAYMENTSUM AS
SELECT NAME,COUNT(FLIGHTS.FLIGHT_NUMBER) AS NUMBER_OF_FLIGHTS, SUM(PAYMENTSUM)AS SUM
FROM AIRLINES, FLIGHTS, BOOKINGS
HAVING COUNT(NAME)>0;