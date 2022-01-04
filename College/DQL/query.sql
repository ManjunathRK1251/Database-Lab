---------4------------
update IAMARKS
SET finalIA = (case
when greatest(test1,test2) != greatest(test1,test3) then 
greatest(test1, test2) + greatest(test1, test3)
else
greatest(test1,test2) + greatest(test3,test2)
end)/2
where finalIA is null;
select * from IAMARKS;

-------------------5---------------


SELECT S.USN,S.SNAME,S.ADRES,S.PHONE,S.GENDER,
(CASE
WHEN IA.finalIA BETWEEN 17 AND 20 THEN 'OUTSTANDING'
WHEN IA.finalIA BETWEEN 12 AND 16 THEN 'AVERAGE'
ELSE 'WEAK'
END) AS CAT
FROM student S, semsec SS, IAMARKS IA, subject SUB
WHERE S.USN = IA.USN AND
SS.SSID = IA.SSID AND
SUB.SUBCODE = IA.SUBCODE AND
SUB.SEM = 8;