CREATE TABLE t1(x);
INSERT INTO t1 VALUES (3), (4), (2), (1), (5), (6);
SELECT x FROM t1 WHERE x IN(2, 4, 5) ORDER BY x ASC;
SELECT x FROM t1 WHERE x IN(2, 4, 5) ORDER BY x DESC;
CREATE TABLE t2(x, y);
INSERT INTO t2 VALUES (5, 3), (5, 4), (5, 2), (5, 1), (5, 5), (5, 6);
INSERT INTO t2 VALUES (1, 3), (1, 4), (1, 2), (1, 1), (1, 5), (1, 6);
INSERT INTO t2 VALUES (3, 3), (3, 4), (3, 2), (3, 1), (3, 5), (3, 6);
INSERT INTO t2 VALUES (2, 3), (2, 4), (2, 2), (2, 1), (2, 5), (2, 6);
INSERT INTO t2 VALUES (4, 3), (4, 4), (4, 2), (4, 1), (4, 5), (4, 6);
INSERT INTO t2 VALUES (6, 3), (6, 4), (6, 2), (6, 1), (6, 5), (6, 6);
CREATE TABLE t3(a, b);
INSERT INTO t3 VALUES (2, 2), (4, 4), (5, 5);
CREATE UNIQUE INDEX t3i1 ON t3(a ASC);
CREATE UNIQUE INDEX t3i2 ON t3(b DESC);
SELECT x, y FROM t2 WHERE x = 1 AND y IN 1nexpr ORDER BY x ASC, y ASC;
SELECT x, y FROM t2 WHERE x = 2 AND y IN 1nexpr ORDER BY x ASC, y DESC;
SELECT x, y FROM t2 WHERE x = 3 AND y IN 1nexpr ORDER BY x DESC, y ASC;
SELECT x, y FROM t2 WHERE x = 4 AND y IN 1nexpr ORDER BY x DESC, y DESC;
SELECT a, x, y FROM t2, t3 WHERE a = 4 AND x = 1 AND y IN 1nexpr
ORDER BY a, x ASC, y ASC;
SELECT a, x, y FROM t2, t3 WHERE a = 2 AND x = 1 AND y IN 1nexpr
ORDER BY x ASC, y ASC;
SELECT a, x, y FROM t2, t3 WHERE a = 4 AND x = 1 AND y IN 1nexpr
ORDER BY a, x ASC, y DESC;
SELECT a, x, y FROM t2, t3 WHERE a = 2 AND x = 1 AND y IN 1nexpr
ORDER BY x ASC, y DESC;
SELECT a, x, y FROM t2, t3 WHERE a = 4 AND x = 1 AND y IN 1nexpr
ORDER BY a, x DESC, y ASC;
SELECT a, x, y FROM t2, t3 WHERE a = 2 AND x = 1 AND y IN 1nexpr
ORDER BY x DESC, y ASC;
SELECT a, x, y FROM t2, t3 WHERE a = 4 AND x = 1 AND y IN 1nexpr
ORDER BY a, x DESC, y DESC;
SELECT a, x, y FROM t2, t3 WHERE a = 2 AND x = 1 AND y IN 1nexpr
ORDER BY x DESC, y DESC;
CREATE TABLE t7(x);
INSERT INTO t7 VALUES (1), (2), (3);
CREATE INDEX i7 ON t7(x);
CREATE TABLE t8(y);
INSERT INTO t8 VALUES (1), (2), (3);
DROP INDEX IF EXISTS i8;
CREATE UNIQUE INDEX i8 ON t8(y 1dxdir);
SELECT x FROM t7 WHERE x IN (SELECT y FROM t8) ORDER BY x $sortdir;
