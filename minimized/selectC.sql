CREATE TABLE t1(a, b, c);
INSERT INTO t1 VALUES(1,'aaa','bbb');
INSERT INTO t1 SELECT * FROM t1;
INSERT INTO t1 VALUES(2,'ccc','ddd');
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE y IN ('aaabbb','xxx');
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE b||c IN ('aaabbb','xxx');
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE y='aaabbb';
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE b||c='aaabbb';
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE x=2;
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE a=2;
SELECT DISTINCT a AS x, b||c AS y
FROM t1
WHERE +y='aaabbb';
SELECT a AS x, b||c AS y
FROM t1
GROUP BY x, y
HAVING y='aaabbb';
SELECT a AS x, b||c AS y
FROM t1
GROUP BY x, y
HAVING b||c='aaabbb';
SELECT a AS x, b||c AS y
FROM t1
WHERE y='aaabbb'
GROUP BY x, y;
SELECT a AS x, b||c AS y
FROM t1
WHERE b||c='aaabbb'
GROUP BY x, y;
SELECT DISTINCT upper(b) AS x
FROM t1
ORDER BY x;
SELECT DISTINCT uppercaseconversionfunctionwithaverylongname(b) AS x
FROM t1
ORDER BY x;
SELECT upper(b) AS x
FROM t1
GROUP BY x
ORDER BY x;
SELECT uppercaseconversionfunctionwithaverylongname(b) AS x
FROM t1
GROUP BY x
ORDER BY x;
SELECT upper(b) AS x
FROM t1
ORDER BY x DESC;
SELECT uppercaseconversionfunctionwithaverylongname(b) AS x
FROM t1
ORDER BY x DESC;
CREATE TABLE t21a(a,b);
INSERT INTO t21a VALUES(1,2);
CREATE TABLE t21b(n);
CREATE TRIGGER r21 AFTER INSERT ON t21b BEGIN
SELECT a FROM t21a WHERE a>new.x UNION ALL
SELECT b FROM t21a WHERE b>new.x ORDER BY 1 LIMIT 2;
END;
INSERT INTO t21b VALUES(6);
CREATE TABLE person (;
CONSTRAINT person_pk PRIMARY KEY (org_id, nickname),
CONSTRAINT person_license_uk UNIQUE (license);
INSERT INTO person VALUES('meyers', 'jack', '2GAT123');
INSERT INTO person VALUES('meyers', 'hill', 'V345FMP');
INSERT INTO person VALUES('meyers', 'jim', '2GAT138');
INSERT INTO person VALUES('smith', 'maggy', '');
INSERT INTO person VALUES('smith', 'jose', 'JJZ109');
INSERT INTO person VALUES('smith', 'jack', 'THX138');
INSERT INTO person VALUES('lakeside', 'dave', '953OKG');
INSERT INTO person VALUES('lakeside', 'amy', NULL);
INSERT INTO person VALUES('lake-apts', 'tom', NULL);
INSERT INTO person VALUES('acorn', 'hideo', 'CQB421');
SELECT;
FROM person
WHERE (CASE WHEN license != '' THEN 1 ELSE 0 END)
GROUP BY 1;
CREATE TABLE t2(a PRIMARY KEY, b);
INSERT INTO t2 VALUES('abc', 'xxx');
INSERT INTO t2 VALUES('def', 'yyy');
SELECT a, max(b || a) FROM t2 WHERE (b||b||b)!='value' GROUP BY a;
SELECT b, max(a || b) FROM t2 WHERE (b||b||b)!='value' GROUP BY a;
CREATE TABLE x1(a);
CREATE TABLE x2(b);
CREATE TABLE x3(c);
CREATE VIEW vvv AS SELECT b FROM x2 ORDER BY 1;
INSERT INTO x1 VALUES('a'), ('b');
INSERT INTO x2 VALUES(22), (23), (25), (24), (21);
INSERT INTO x3 VALUES(302), (303), (301);
CREATE TABLE x4 AS SELECT b FROM vvv UNION ALL SELECT c from x3;
SELECT * FROM x4;
SELECT * FROM x1, x4;
SELECT * FROM x1, (SELECT b FROM vvv UNION ALL SELECT c from x3);
