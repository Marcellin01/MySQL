show databases;

use TNL;

SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile=1;

show VARIABLES like '%secure%';

create table Survey_22Oct (
CollectorNm varchar(50),
respondent_id BIGINT,
collector_id INT,
date_created varchar(100),
date_modified varchar(100),
ip_address varchar(50),
email_address varchar(100),
first_name varchar(50),
last_name varchar(50),
custom_1 varchar(50),
q0001 varchar(50),
q0002 varchar(50),
q0003 varchar(50),
q0004 varchar(50),
q0004_other varchar(50),
q0005_0001 varchar(50),
q0005_0002 varchar(50),
q0005_0003 varchar(50),
q0005_0004 varchar(50),
q0005_0005 varchar(50),
q0006 varchar(50),
q0006_other varchar(50),
q0007 varchar(50),
q0007_other varchar(50),
q0008 varchar(50),
q0009 varchar(50),
q0010 varchar(100),
q0010_other varchar(100),
q0011 varchar(50),
q0011_other varchar(50),
q0012 varchar(50),
q0013 varchar(50),
q0014_0001 varchar(100),
q0014_0002 varchar(100),
q0014_0003 varchar(100),
q0014_0004 varchar(100),
q0014_0005 varchar(100),
q0014_0006 varchar(100),
q0014_0007 varchar(100),
q0014_0008 varchar(100),
q0014_0009 varchar(100),
q0014_0010 varchar(100),
q0014_0011 varchar(100),
q0014_other varchar(100),
q0015_0001 varchar(50),
q0015_0002 varchar(50),
q0015_0003 varchar(50),
q0015_0004 varchar(50),
q0015_0005 varchar(50),
q0016_0001 varchar(50),
q0016_0002 varchar(50),
q0016_0003 varchar(50),
q0016_0004 varchar(50),
q0016_0005 varchar(50),
q0017 varchar(100)
);

desc Survey_22Oct;

SHOW GRANTS FOR 'Marcel'@'localhost';

LOAD DATA INFILE '/usr/local/Survey_22Oct.csv'
INTO TABLE Survey_22Oct
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 檢查22Oct資料筆數
SELECT count(*) FROM Survey_22oct;
desc Survey_22oct;
SELECT SUM(COLUMN_COUNT) AS TotalColumnCount
FROM (
    SELECT COUNT(*) AS COLUMN_COUNT
    FROM information_schema.columns
    WHERE table_schema = 'TNL'
    AND table_name = 'Survey_22oct'
) AS ColumnCounts;

create table Survey_22Dec (
CollectorNm varchar(50),
respondent_id BIGINT,
collector_id INT,
date_created varchar(100),
date_modified varchar(100),
ip_address varchar(50),
email_address varchar(100),
first_name varchar(50),
last_name varchar(50),
custom_1 varchar(50),
q0001 varchar(50),
q0002 varchar(50),
q0003 varchar(50),
q0004 varchar(50),
q0004_other varchar(50),
q0005_0001 varchar(50),
q0005_0002 varchar(50),
q0005_0003 varchar(50),
q0005_0004 varchar(50),
q0005_0005 varchar(50),
q0006 varchar(50),
q0006_other varchar(50),
q0007 varchar(50),
q0007_other varchar(50),
q0008 varchar(50),
q0009 varchar(50),
q0010 varchar(100),
q0010_other varchar(100),
q0011 varchar(50),
q0011_other varchar(50),
q0012_0001 varchar(50),
q0012_0002 varchar(50),
q0012_0003 varchar(50),
q0012_0004 varchar(50),
q0013_0001 varchar(50),
q0013_0002 varchar(50),
q0013_0003 varchar(50),
q0013_0004 varchar(50),
q0013_0005 varchar(50),
q0013_0006 varchar(50),
q0013_0007 varchar(50),
q0013_0008 varchar(50),
q0013_0009 varchar(50),
q0013_0010 varchar(50),
q0013_0011 varchar(50),
q0013_0012 varchar(50),
q0013_0013 varchar(50),
q0013_0014 varchar(50),
q0013_0015 varchar(50),
q0013_0016 varchar(50),
q0013_0017 varchar(50),
q0013_0018 varchar(50),
q0013_0019 varchar(50),
q0013_other varchar(50),
q0014_0001 varchar(100),
q0014_0002 varchar(100),
q0014_0003 varchar(100),
q0014_0004 varchar(100),
q0014_0005 varchar(100),
q0014_0006 varchar(100),
q0014_0007 varchar(100),
q0014_0008 varchar(100),
q0014_0009 varchar(100),
q0014_0010 varchar(100),
q0014_0011 varchar(100),
q0014_0012 varchar(100),
q0014_0013 varchar(100),
q0014_0014 varchar(100),
q0014_0015 varchar(100),
q0014_0016 varchar(100),
q0014_0017 varchar(100),
q0014_0018 varchar(100),
q0014_0019 varchar(100),
q0014_other varchar(100),
q0015_0001 varchar(50),
q0015_0002 varchar(50),
q0015_0003 varchar(50),
q0015_0004 varchar(50),
q0015_0005 varchar(50),
q0015_0006 varchar(50),
q0015_0007 varchar(50),
q0016_0001 varchar(50),
q0016_0002 varchar(50),
q0016_0003 varchar(50),
q0016_0004 varchar(50),
q0016_0005 varchar(50),
q0016_0006 varchar(50),
q0016_0007 varchar(50),
q0016_0008 varchar(50),
q0016_other varchar(50),
q0017 varchar(100)
);

LOAD DATA INFILE '/usr/local/Survey_22Dec.csv'
INTO TABLE Survey_22Dec
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 檢查22Dec資料筆數
SELECT count(*) FROM Survey_22Dec;
desc Survey_22Dec;
SELECT SUM(COLUMN_COUNT) AS TotalColumnCount
FROM (
    SELECT COUNT(*) AS COLUMN_COUNT
    FROM information_schema.columns
    WHERE table_schema = 'TNL'
    AND table_name = 'Survey_22Dec'
) AS ColumnCounts;

create table Survey_23Jan (
CollectorNm varchar(50),
respondent_id BIGINT,
collector_id INT,
date_created varchar(100),
date_modified varchar(100),
ip_address varchar(50),
email_address varchar(100),
first_name varchar(50),
last_name varchar(50),
custom_1 varchar(50),
q0001 varchar(50),
q0002 varchar(50),
q0003 varchar(50),
q0004 varchar(50),
q0004_other varchar(50),
q0005_0001 varchar(50),
q0005_0002 varchar(50),
q0005_0003 varchar(50),
q0005_0004 varchar(50),
q0005_0005 varchar(50),
q0006 varchar(50),
q0006_other varchar(50),
q0007 varchar(50),
q0007_other varchar(50),
q0008 varchar(50),
q0009 varchar(50),
q0010 varchar(100),
q0010_other varchar(100),
q0011 varchar(50),
q0011_other varchar(50),
q0012_0001 varchar(50),
q0012_0002 varchar(50),
q0012_0003 varchar(50),
q0012_0004 varchar(50),
q0012_0005 varchar(50),
q0012_0006 varchar(50),
q0012_0007 varchar(50),
q0012_0008 varchar(50),
q0012_0009 varchar(50),
q0012_0010 varchar(50),
q0012_0011 varchar(50),
q0012_0012 varchar(50),
q0012_0013 varchar(50),
q0012_0014 varchar(50),
q0012_0015 varchar(50),
q0013_0001 varchar(50),
q0013_0002 varchar(50),
q0013_0003 varchar(50),
q0013_0004 varchar(50),
q0013_0005 varchar(50),
q0013_0006 varchar(50),
q0013_0007 varchar(50),
q0013_0008 varchar(50),
q0013_0009 varchar(50),
q0013_0010 varchar(50),
q0013_0011 varchar(50),
q0013_0012 varchar(50),
q0013_0013 varchar(50),
q0013_0014 varchar(50),
q0013_0015 varchar(50),
q0014_0001 varchar(100),
q0014_0002 varchar(100),
q0014_0003 varchar(100),
q0014_0004 varchar(100),
q0014_0005 varchar(100),
q0014_0006 varchar(100),
q0014_0007 varchar(100),
q0014_0008 varchar(100),
q0014_0009 varchar(100),
q0015_0001 varchar(50),
q0015_0002 varchar(50),
q0015_0003 varchar(50),
q0015_0004 varchar(50),
q0015_0005 varchar(50),
q0015_0006 varchar(50),
q0015_0007 varchar(50),
q0015_0008 varchar(50),
q0015_0009 varchar(50),
q0015_0010 varchar(50),
q0015_0011 varchar(50),
q0015_other varchar(50),
q0016 varchar(100)
);

LOAD DATA INFILE '/usr/local/Survey_23Jan.csv'
INTO TABLE Survey_23Jan
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 檢查23Jan資料筆數
SELECT count(*) FROM Survey_23Jan;
desc Survey_23Jan;
SELECT SUM(COLUMN_COUNT) AS TotalColumnCount
FROM (
    SELECT COUNT(*) AS COLUMN_COUNT
    FROM information_schema.columns
    WHERE table_schema = 'TNL'
    AND table_name = 'Survey_23Jan'
) AS ColumnCounts;

-- 匯入 RM_list
CREATE TABLE RM_list (
`Panelist ID` VARCHAR(255),
`Provisioning Key` VARCHAR(255),
Email  VARCHAR(255),
Mobile VARCHAR(255),
`Device Manufacturer` VARCHAR(255),
`Device Model` VARCHAR(255),
Os VARCHAR(255),
`Os Version` VARCHAR(255),
`Group Name` VARCHAR(255),
`Device Status` VARCHAR(255),
`Latest Application Client Status` VARCHAR(255)
);

desc RM_list;

LOAD DATA INFILE '/usr/local/RM_list.csv'
INTO TABLE RM_list
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM RM_list limit 100;

-- 檢視 22Oct 的重複email
SELECT substring_index(lower(q0017), '=', -1) AS email, COUNT(substring_index(lower(q0017), '=', -1)) AS email_count
FROM survey_22Oct
GROUP BY q0017
HAVING email_count > 1;

-- 檢視 22Dec 重複email 
SELECT substring_index(lower(q0017), '=', -1) AS email, COUNT(substring_index(lower(q0017), '=', -1)) AS email_count
FROM survey_22Dec
GROUP BY q0017
HAVING email_count > 1;

-- 檢視 23Jan 重複email
SELECT substring_index(lower(q0016), '=', -1) AS email, COUNT(substring_index(lower(q0016), '=', -1)) AS email_count
FROM survey_23Jan
GROUP BY q0016
HAVING email_count > 1;

-- 取出 22Oct 的email, ip, age, gender 總資料並另建 Survey_combined table存放
CREATE TABLE Survey_combined AS
SELECT
    substring_index(lower(q0017), '=', -1) AS email,
    ip_address AS ip,
    q0002 AS age,
    q0001 AS gender
FROM
    Survey_22Oct
WHERE
    q0002 IS NOT NULL
    AND q0001 IS NOT NULL
GROUP BY
    email, ip, age, gender;

show tables;
select * from survey_combined
where project = 'survey_22Dec';

-- Survey_combined 中 22_OCT 的資料加上project，若為「2022年十月」的資料標記為「Survey_22oct」，以此類推
ALTER TABLE Survey_combined
ADD COLUMN project VARCHAR(255) DEFAULT 'Survey_22oct';

-- 將 22_Dec 的資料插入survey_combined中
INSERT INTO Survey_combined (email, ip, age, gender, project)
SELECT
    SUBSTRING_INDEX(LOWER(q0017), '=', -1) AS email,
    ip_address AS ip,
    q0002 AS age,
    q0001 AS gender,
    'Survey_22Dec' AS project
FROM
    survey_22dec
WHERE
    q0002 IS NOT NULL
    AND q0001 IS NOT NULL;

-- 將 23_JAN 的資料插入survey_combined中
INSERT INTO Survey_combined (email, ip, age, gender, project)
SELECT
    SUBSTRING_INDEX(LOWER(q0016), '=', -1) AS email,
    ip_address AS ip,
    q0002 AS age,
    q0001 AS gender,
    'Survey_23Jan' AS project
FROM
    survey_23jan
WHERE
    q0002 IS NOT NULL
    AND q0001 IS NOT NULL;

-- 確認符合黑白名單篩選條件的總資料筆數為 13947 筆
SELECT count(*) FROM Survey_combined;

-- 創建新table "survey_blacklist" 並把survey_combined的資料全部匯入
CREATE TABLE survey_blacklist AS
SELECT * FROM survey_combined;

show tables;
desc survey_blacklist;
select * from survey_blacklist limit 10;

-- 建立黑名單
-- 新增檢核欄位，命名為blacklist_check
ALTER TABLE survey_blacklist
ADD COLUMN blacklist_check VARCHAR(100);
UPDATE survey_blacklist
SET blacklist_check = NULL;

-- 黑名單條件1: 同一月份中ip重複，若為2022年十月的ip檢核欄，命名為「22Oct_IP_BL」，以此類推
-- 先確認ip重複的資料
SELECT
    project,
    ip,
    COUNT(*) AS duplicate_count
FROM survey_blacklist
WHERE project IN ('Survey_22Oct', 'Survey_22Dec', 'Survey_23Jan')
GROUP BY project, ip
HAVING COUNT(*) > 1;

-- 更新table (ip重複的黑名單標註)
UPDATE survey_blacklist AS sb
JOIN (
    SELECT
        project,
        ip
    FROM survey_blacklist
    WHERE project IN ('Survey_22Oct', 'Survey_22Dec', 'Survey_23Jan')
    GROUP BY project, ip
    HAVING COUNT(*) > 1
) AS duplicates
ON sb.project = duplicates.project AND sb.ip = duplicates.ip
SET sb.blacklist_check =
    CASE
        WHEN sb.project = 'Survey_22Oct' THEN '22Oct_IP_BL'
        WHEN sb.project = 'Survey_22Dec' THEN '22Dec_IP_BL'
        WHEN sb.project = 'Survey_23Jan' THEN '23Jan_IP_BL'
    END;

select * from survey_blacklist limit 100;

-- 黑名單條件2: 同一月份中Email重複 或 沒有Email，若為2022年十月的Email檢核欄，命名為「22Oct_Email_BL」，以此類推
UPDATE survey_blacklist AS sb
JOIN (
    SELECT
        project,
        email,
        CASE
            WHEN project = 'Survey_22Oct' THEN '22Oct_Email_BL'
            WHEN project = 'Survey_22Dec' THEN '22Dec_Email_BL'
            WHEN project = 'Survey_23Jan' THEN '23Jan_Email_BL'
        END AS new_value
    FROM survey_blacklist
    WHERE project IN ('Survey_22Oct', 'Survey_22Dec', 'Survey_23Jan')
    GROUP BY project, email
    HAVING COUNT(*) > 1 OR email IS NULL
) AS duplicates_or_no_email
ON sb.project = duplicates_or_no_email.project AND sb.email = duplicates_or_no_email.email
SET sb.blacklist_check =
    CASE
        WHEN sb.blacklist_check IS NULL THEN new_value
        ELSE CONCAT(sb.blacklist_check, ',', new_value)
    END;

-- 檢查email重複的資料
SELECT email, COUNT(*) as duplicate_count
FROM survey_blacklist
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;

-- 確認同時有IP跟email重複的資料
SELECT *
FROM survey_blacklist
WHERE LENGTH(blacklist_check) - LENGTH(REPLACE(blacklist_check, ',', '')) = 1;

-- 黑名單條件3：三個月內年齡變動超過一歲，Age_BL
UPDATE survey_blacklist sb
JOIN (
    SELECT
        email,
        ABS(MAX(age) - MIN(age)) AS age_change
    FROM
        survey_blacklist
    WHERE
        email IS NOT NULL AND age IS NOT NULL
	GROUP BY
        email
    HAVING
        COUNT(DISTINCT age) > 1 AND ABS(MAX(age) - MIN(age)) > 1
) AS age_changes
ON sb.email = age_changes.email
SET sb.blacklist_check = 
    CASE 
        WHEN sb.blacklist_check IS NULL THEN 'Age_BL'
        ELSE CONCAT(sb.blacklist_check, ',Age_BL')
    END;
    
-- 確認被標註的email user是否年紀真的有問題
SELECT * FROM survey_blacklist
WHERE blacklist_check = 'Age_BL';

SELECT *
FROM survey_blacklist
WHERE email LIKE '%ef7945c276eef0416a6ba8ec21bf1702@gmail.com%';

-- 黑名單條件4: 三個月內性別有變動，Gender_BL
UPDATE survey_blacklist sb
JOIN (
    SELECT 
		email
    FROM 
		survey_blacklist
    WHERE 
		email IS NOT NULL
    GROUP BY 
		email
    HAVING 
		COUNT(DISTINCT gender) > 1
) AS different_genders
ON sb.email = different_genders.email
SET sb.blacklist_check = 
    CASE 
        WHEN sb.blacklist_check IS NULL THEN 'Gender_BL'
        ELSE CONCAT(sb.blacklist_check, ',Gender_BL')
    END;
    
-- 確認被標註的email user是否性別真的有問題
SELECT *
FROM survey_blacklist
WHERE email LIKE '%ef7945c276eef0416a6ba8ec21bf1702@gmail.com%';

-- 確認黑名單資料總數
SELECT COUNT(*) FROM survey_blacklist
WHERE blacklist_check IS NOT NULL;

-- 將被標記的黑名單匯出成csv
SELECT *
FROM survey_blacklist
WHERE blacklist_check IS NOT NULL
INTO OUTFILE '/Users/marcel/BlackList.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- 建立白名單(不在黑名單中的email，即可加入白名單，須依照白名單欄位條件)
CREATE TABLE survey_whitelist AS
SELECT * 
FROM survey_blacklist
WHERE blacklist_check IS NULL;

ALTER TABLE survey_whitelist
DROP COLUMN blacklist_check;

desc survey_whitelist;

-- 過濾各月份重複email，若有重複則保留最新的資料
SELECT email, COUNT(email) AS email_count
FROM survey_whitelist
GROUP BY email
HAVING email_count > 1;

ALTER TABLE survey_whitelist
ADD COLUMN date_created TIMESTAMP;

UPDATE survey_whitelist AS whitelist
JOIN survey_22oct AS oct
ON whitelist.email = substring_index(lower(oct.q0017), '=', -1)
   AND whitelist.gender = oct.q0001
   AND whitelist.age = oct.q0002
SET whitelist.date_created = STR_TO_DATE(oct.date_created, '%m/%d/%Y %h:%i:%s %p')
WHERE whitelist.project = 'Survey_22oct';

UPDATE survey_whitelist AS whitelist
JOIN survey_22Dec AS de
ON whitelist.email = substring_index(lower(de.q0017), '=', -1)
   AND whitelist.gender = de.q0001
   AND whitelist.age = de.q0002
SET whitelist.date_created = STR_TO_DATE(de.date_created, '%m/%d/%Y %h:%i:%s %p')
WHERE whitelist.project = 'Survey_22Dec';

UPDATE survey_whitelist AS whitelist
JOIN survey_23Jan AS jan
ON whitelist.email = substring_index(lower(jan.q0016), '=', -1)
	AND whitelist.gender = jan.q0001
    AND whitelist.age = jan.q0002
SET whitelist.date_created = STR_TO_DATE(jan.date_created, '%m/%d/%Y %h:%i:%s %p')
WHERE whitelist.project = 'Survey_23Jan';

SELECT * FROM survey_whitelist
WHERE project = 'Survey_23Jan'
limit 100;

SELECT email, MAX(date_created)
    FROM survey_whitelist
    GROUP BY email
    HAVING COUNT(email) > 1;

-- 依照規定新增並排序白名單欄位
ALTER TABLE survey_whitelist
MODIFY COLUMN project VARCHAR(255) first;
ALTER TABLE survey_whitelist
ADD COLUMN `Panelist ID` VARCHAR(255) AFTER email;
ALTER TABLE survey_whitelist
MODIFY COLUMN gender VARCHAR(50) AFTER `Panelist ID`;
ALTER TABLE survey_whitelist
MODIFY COLUMN age VARCHAR(50) AFTER gender;
ALTER TABLE survey_whitelist
ADD COLUMN age_n INT,
ADD COLUMN city VARCHAR(100),
ADD COLUMN marital VARCHAR(100),
ADD COLUMN no_kid VARCHAR(100),
ADD COLUMN kid_under6 VARCHAR(100),
ADD COLUMN kid_6_12 VARCHAR(100),
ADD COLUMN kid_13_18 VARCHAR(100),
ADD COLUMN kid_over19 VARCHAR(100),
ADD COLUMN education VARCHAR(100),
ADD COLUMN employment VARCHAR(100),
ADD COLUMN income_personal VARCHAR(100),
ADD COLUMN income_household VARCHAR(100),
ADD COLUMN device VARCHAR(100);
ALTER TABLE survey_whitelist
DROP COLUMN ip;

SHOW COLUMNS FROM survey_whitelist;

-- age_n 給值
UPDATE survey_whitelist
SET age_n = CAST(REGEXP_REPLACE(age, '[^0-9]', '') AS UNSIGNED);

-- 各欄位給值
UPDATE survey_whitelist as whitelist
JOIN Survey_22Oct as oct ON whitelist.email = oct.q0017 AND whitelist.age = oct.q0002
SET whitelist.city = oct.q0003,
	whitelist.marital = oct.q0004,
    whitelist.no_kid = oct.q0005_0001,
    whitelist.kid_under6 = oct.q0005_0002,
    whitelist.kid_6_12 = oct.q0005_0003,
    whitelist.kid_13_18 = oct.q0005_0004,
    whitelist.kid_over19 = oct.q0005_0005,
    whitelist.education = oct.q0011,
    whitelist.employment = oct.q0006,
    whitelist.income_personal = oct.q0008,
    whitelist.income_household = oct.q0009,
    whitelist.device = oct.q0010
WHERE whitelist.project = 'Survey_22Oct';

UPDATE survey_whitelist AS whitelist
JOIN survey_22dec AS d ON whitelist.email = d.q0017 AND whitelist.age = d.q0002
SET whitelist.city = d.q0003,
    whitelist.marital = d.q0004,
    whitelist.no_kid = d.q0005_0001,
    whitelist.kid_under6 = d.q0005_0002,
    whitelist.kid_6_12 = d.q0005_0003,
    whitelist.kid_13_18 = d.q0005_0004,
    whitelist.kid_over19 = d.q0005_0005,
    whitelist.education = d.q0011,
    whitelist.employment = d.q0006,
    whitelist.income_personal = d.q0008,
    whitelist.income_household = d.q0009,
    whitelist.device = d.q0010
WHERE whitelist.project = 'Survey_22Dec';

UPDATE survey_whitelist AS whitelist
JOIN survey_23jan AS jan ON whitelist.email = jan.q0016 AND whitelist.age = jan.q0002
SET whitelist.city = jan.q0003,
    whitelist.marital = jan.q0004,
    whitelist.no_kid = jan.q0005_0001,
    whitelist.kid_under6 = jan.q0005_0002,
    whitelist.kid_6_12 = jan.q0005_0003,
    whitelist.kid_13_18 = jan.q0005_0004,
    whitelist.kid_over19 = jan.q0005_0005,
    whitelist.education = jan.q0011,
    whitelist.employment = jan.q0006,
    whitelist.income_personal = jan.q0008,
    whitelist.income_household = jan.q0009,
    whitelist.device = jan.q0010
WHERE whitelist.project = 'Survey_23Jan';

-- 確認各月份資料量
SELECT count(*) FROM survey_whitelist
WHERE project = 'Survey_22Dec';

desc survey_whitelist;

-- Panelist ID 給值，因資料量過大，每次限制更新1000筆(可改用python處理)
UPDATE survey_whitelist AS whitelist
JOIN RM_list AS rm ON whitelist.email = rm.email
SET whitelist.`Panelist ID` = rm.`Panelist ID`
LIMIT 1000;


-- 檢視不在RM_list的email
SELECT distinct email 
FROM survey_whitelist
WHERE `Panelist ID` IS NULL;

/* 
下列email在RM list裡面沒有資料
'a24fe38b3e981bb667a6ab40bc3aaff8@gmail.com'
'9b14df83c7520884d3459585d448dd0b@gmail.com'
'5034f3b55cc7fff613232cd40c18417e@gmail.com'
'be72ad24acac9b0051a6008c4b1ceaf6@yahoo.com.tw'
'e6c62d3803a201bc0cdaf00dfa171697@yahoo.com.tw'
*/

-- 以最新日期資料作為最終白名單
CREATE TABLE survey_whitelist_final AS
SELECT *
FROM survey_whitelist
WHERE (email, date_created) IN (
    SELECT email, MAX(date_created)
    FROM survey_whitelist
    WHERE email IS NOT NULL
    GROUP BY email
);

ALTER TABLE survey_whitelist_final
DROP COLUMN date_created;

-- email有重複的筆數
SELECT COUNT(DISTINCT email) AS total_count
FROM survey_whitelist
WHERE email IN (
    SELECT email
    FROM survey_whitelist
    GROUP BY email
    HAVING COUNT(email) = 1
);

-- email 沒有重複的筆數
SELECT COUNT(DISTINCT email) AS total_count
FROM survey_whitelist
WHERE email IN (
    SELECT email
    FROM survey_whitelist
    GROUP BY email
    HAVING COUNT(email) = 1
);

-- 確認總筆數是否吻合
SELECT count(*)
FROM survey_whitelist_final;

-- 白名單匯出csv
SELECT *
FROM survey_whitelist_final
INTO OUTFILE '/Users/marcel/WhiteList_2.csv'
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n';



