SELECT 
	SUM(SUM_TOTAL)
FROM
	SALE_N
WHERE
	(CUST_ID <> 163) AND
	(CUST_ID <> 166) AND
	(CUST_ID <> 167) AND
	(CUST_ID <> 168) AND
	(CUST_ID <> 171) AND                
    (S_DATE >= '15.06.14 00:00:00') AND
    (S_DATE <= '15.07.14 23:59:59')