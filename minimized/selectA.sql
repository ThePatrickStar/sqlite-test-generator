CREATE TABLE t1(a,b,c COLLATE NOCASE);
INSERT INTO t1 VALUES(1,'a','a');
INSERT INTO t1 VALUES(9.9, 'b', 'B');
INSERT INTO t1 VALUES(NULL, 'C', 'c');
INSERT INTO t1 VALUES('hello', 'd', 'D');
INSERT INTO t1 VALUES(x'616263', 'e', 'e');
SELECT * FROM t1;
CREATE TABLE t2(x,y,z COLLATE NOCASE);
INSERT INTO t2 VALUES(NULL,'U','u');
INSERT INTO t2 VALUES('mad', 'Z', 'z');
INSERT INTO t2 VALUES(x'68617265', 'm', 'M');
INSERT INTO t2 VALUES(5.2e6, 'X', 'x');
INSERT INTO t2 VALUES(-23, 'Y', 'y');
SELECT * FROM t2;
CREATE TABLE t3(a,b,c COLLATE NOCASE);
INSERT INTO t3 SELECT * FROM t1;
INSERT INTO t3 SELECT * FROM t2;
INSERT INTO t3 SELECT * FROM t1;
INSERT INTO t3 SELECT * FROM t2;
INSERT INTO t3 SELECT * FROM t1;
INSERT INTO t3 SELECT * FROM t2;
SELECT count(*) FROM t3;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT t1.a, t1.b, t1.c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY t1.a, t1.b, t1.c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a DESC,b,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a,c,b;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY b,a,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE,a,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c,b,a;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c,a,b;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c DESC,a,b;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY a DESC,b,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY a,c,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY b,a,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY b COLLATE NOCASE,a,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c,b,a;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c,a,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c DESC,a,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY a DESC,b,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY a,c,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY b,a,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE,a,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c,b,a;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c,a,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c DESC,a,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY a DESC,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY a,c,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY b,a,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY y COLLATE NOCASE,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY y COLLATE NOCASE DESC,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY c,b,a;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY c,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY c DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY z COLLATE BINARY DESC,x,y;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a DESC;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a DESC;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY b, a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY b;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY b DESC, c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY b, c DESC, a;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY b COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY b;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY c, a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY c;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY c COLLATE BINARY, b DESC, c, a, b, c, a, b, c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY c DESC, a;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY c COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY c;
SELECT a,b,c FROM t3 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY c COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t3
ORDER BY c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t3 WHERE b<'d'
ORDER BY c DESC, a;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
ORDER BY c DESC, a;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
ORDER BY c COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
ORDER BY c;
SELECT a,b,c FROM t1 WHERE b<'d'
INTERSECT SELECT a,b,c FROM t1
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
INTERSECT SELECT a,b,c FROM t1
EXCEPT SELECT x,y,z FROM t2
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT y,x,z FROM t2
INTERSECT SELECT a,b,c FROM t1
EXCEPT SELECT c,b,a FROM t3
ORDER BY c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY a DESC,b,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY a,c,b;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY b,a,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE,a,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c,b,a;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c,a,b;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c DESC,a,b;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY a,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY a DESC,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY a,c,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY b,a,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE DESC,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY c,b,a;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY c,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY c DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY z COLLATE BINARY DESC,x,y;
SELECT x,y,z FROM t2
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE DESC,x,z;
SELECT upper((SELECT c FROM t1 UNION SELECT z FROM t2 ORDER BY 1));
SELECT lower((SELECT c FROM t1 UNION ALL SELECT z FROM t2 ORDER BY 1));
SELECT lower((SELECT c FROM t1 INTERSECT SELECT z FROM t2 ORDER BY 1));
SELECT lower((SELECT z FROM t2 EXCEPT SELECT c FROM t1 ORDER BY 1));
CREATE UNIQUE INDEX t1a ON t1(a);
CREATE UNIQUE INDEX t1b ON t1(b);
CREATE UNIQUE INDEX t1c ON t1(c);
CREATE UNIQUE INDEX t2x ON t2(x);
CREATE UNIQUE INDEX t2y ON t2(y);
CREATE UNIQUE INDEX t2z ON t2(z);
SELECT name FROM sqlite_master WHERE type='index';
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT t1.a,b,t1.c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a,t1.b,t1.c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a DESC,b,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY a,c,b;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY b,a,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE,a,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c,b,a;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c,a,b;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c DESC,a,b;
SELECT a,b,c FROM t1 UNION ALL SELECT x,y,z FROM t2
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY a DESC,b,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY a,c,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY b,a,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY b COLLATE NOCASE,a,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c,b,a;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c,a,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c DESC,a,b;
SELECT x,y,z FROM t2 UNION ALL SELECT a,b,c FROM t1
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY a DESC,b,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY a,c,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY b,a,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE,a,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c,b,a;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c,a,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c DESC,a,b;
SELECT a,b,c FROM t1 UNION SELECT x,y,z FROM t2
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY a DESC,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY a,c,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY b,a,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY y COLLATE NOCASE,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY y COLLATE NOCASE DESC,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY c,b,a;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY c,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY c DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t1
ORDER BY z COLLATE BINARY DESC,x,y;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a,b,c;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a,b,c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a DESC;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY a DESC;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY a DESC;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY b, a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY b;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY b DESC, c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY b, c DESC, a;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY b COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY b;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY c, a DESC;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b>='d'
ORDER BY c;
SELECT a,b,c FROM t1 WHERE b>='d' INTERSECT SELECT a,b,c FROM t1
ORDER BY c COLLATE BINARY, b DESC, c, a, b, c, a, b, c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY c DESC, a;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY c COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
ORDER BY c;
SELECT a,b,c FROM t3 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
ORDER BY c COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t3
ORDER BY c;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t3 WHERE b<'d'
ORDER BY c DESC, a;
SELECT a,b,c FROM t1 EXCEPT SELECT a,b,c FROM t1 WHERE b<'d'
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
ORDER BY c DESC, a;
SELECT a,b,c FROM t1 INTERSECT SELECT a,b,c FROM t1 WHERE b<'d'
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
ORDER BY c COLLATE NOCASE;
SELECT a,b,c FROM t1 WHERE b<'d' INTERSECT SELECT a,b,c FROM t1
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
ORDER BY c;
SELECT a,b,c FROM t1 WHERE b<'d'
INTERSECT SELECT a,b,c FROM t1
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT b,c,a FROM t3
INTERSECT SELECT a,b,c FROM t1
EXCEPT SELECT x,y,z FROM t2
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT y,x,z FROM t2
INTERSECT SELECT a,b,c FROM t1
EXCEPT SELECT c,b,a FROM t3
ORDER BY c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY a,b,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY a DESC,b,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY a,c,b;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY b,a,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE,a,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY b COLLATE NOCASE DESC,a,c;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c,b,a;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c,a,b;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c DESC,a,b;
SELECT a,b,c FROM t3 UNION SELECT x,y,z FROM t2
ORDER BY c COLLATE BINARY DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY a,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY a DESC,b,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY a,c,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY b,a,c;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE DESC,x,z;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY c,b,a;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY c,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY c DESC,a,b;
SELECT x,y,z FROM t2 UNION SELECT a,b,c FROM t3
ORDER BY z COLLATE BINARY DESC,x,y;
SELECT x,y,z FROM t2
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE DESC,x,z;
SELECT upper((SELECT c FROM t1 UNION SELECT z FROM t2 ORDER BY 1));
SELECT lower((SELECT c FROM t1 UNION ALL SELECT z FROM t2 ORDER BY 1));
SELECT lower((SELECT c FROM t1 INTERSECT SELECT z FROM t2 ORDER BY 1));
SELECT lower((SELECT z FROM t2 EXCEPT SELECT c FROM t1 ORDER BY 1));
SELECT upper((SELECT x FROM (
SELECT x,y,z FROM t2
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE DESC,x,z)));
WITH RECURSIVE;
SELECT upper((SELECT x FROM (
SELECT x,y,z FROM t2
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
INTERSECT SELECT a,b,c FROM t3
EXCEPT SELECT c,b,a FROM t1
UNION SELECT a,b,c FROM t3
ORDER BY y COLLATE NOCASE DESC,x,z)))
UNION ALL
SELECT n || '+' FROM xyz WHERE length(n)<5;
SELECT n FROM xyz ORDER BY +n;
CREATE TABLE t4(a, b);
CREATE TABLE t5(c, d);
INSERT INTO t5 VALUES(1, 'x');
INSERT INTO t5 VALUES(2, 'x');
INSERT INTO t4 VALUES(3, 'x');
INSERT INTO t4 VALUES(4, 'x');
CREATE INDEX i1 ON t4(a);
CREATE INDEX i2 ON t5(c);
SELECT c, d FROM t5
UNION ALL
SELECT a, b FROM t4 WHERE f()==f()
ORDER BY 1,2;
SELECT c, d FROM t5
UNION ALL
SELECT a, b FROM t4 WHERE f()==f()
ORDER BY 1,2;
CREATE TABLE t6(a, b);
CREATE TABLE t7(c, d);
INSERT INTO t7 VALUES(2, 9);
INSERT INTO t6 VALUES(3, 0);
INSERT INTO t6 VALUES(4, 1);
INSERT INTO t7 VALUES(5, 6);
INSERT INTO t6 VALUES(6, 0);
INSERT INTO t7 VALUES(7, 6);
CREATE INDEX i6 ON t6(a);
CREATE INDEX i7 ON t7(c);
SELECT c, f(d,c,d,c,d) FROM t7
UNION ALL
SELECT a, b FROM t6
ORDER BY 1,2;
CREATE TABLE t8(a, b);
CREATE TABLE t9(c, d);
SELECT a, b FROM t8 INTERSECT SELECT c, d FROM t9 ORDER BY a;
SELECT a, b FROM t8 INTERSECT SELECT c, d FROM t9 ORDER BY t8.a;
SELECT a, b FROM t8 INTERSECT SELECT c, d FROM t9 ORDER BY 1;
SELECT a, b FROM t8 INTERSECT SELECT c, d FROM t9 ORDER BY c;
SELECT a, b FROM t8 INTERSECT SELECT c, d FROM t9 ORDER BY t9.c;
SELECT a, b FROM t8 UNION SELECT c, d FROM t9 ORDER BY a COLLATE NOCASE;
SELECT a, b FROM t8 UNION SELECT c, d FROM t9 ORDER BY t8.a COLLATE NOCASE;
SELECT a, b FROM t8 UNION SELECT c, d FROM t9 ORDER BY 1 COLLATE NOCASE;
SELECT a, b FROM t8 UNION SELECT c, d FROM t9 ORDER BY c COLLATE NOCASE;
SELECT a, b FROM t8 UNION SELECT c, d FROM t9 ORDER BY t9.c COLLATE NOCASE;
SELECT a, b FROM t8 EXCEPT SELECT c, d FROM t9 ORDER BY b, c COLLATE NOCASE;
SELECT a, b FROM t8 EXCEPT SELECT c, d FROM t9 ORDER BY 2, 1 COLLATE NOCASE;
SELECT a, b FROM t8 EXCEPT SELECT c, d FROM t9 ORDER BY d, a COLLATE NOCASE;
SELECT a, b FROM t8 EXCEPT SELECT * FROM t9 ORDER BY t9.d, c COLLATE NOCASE;
SELECT * FROM t8 EXCEPT SELECT c, d FROM t9 ORDER BY d, t8.a COLLATE NOCASE;
SELECT * FROM t8 UNION SELECT * FROM t9 ORDER BY a+b COLLATE NOCASE;
DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1(a INTEGER);
CREATE TABLE t2(b TEXT);
INSERT INTO t2(b) VALUES('12345');
SELECT * FROM (SELECT a FROM t1 UNION SELECT b FROM t2) WHERE a=a;
