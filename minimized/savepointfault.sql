CREATE TABLE t1(a, b, c);
INSERT INTO t1 VALUES(1, 2, 3);
SAVEPOINT one;
INSERT INTO t1 VALUES(4, 5, 6);
SAVEPOINT two;
DELETE FROM t1;
ROLLBACK TO two;
RELEASE one;
PRAGMA cache_size = 10;
CREATE TABLE t1(a, b, c);
INSERT INTO t1 VALUES(randstr(400,400), randstr(400,400), randstr(400,400));
INSERT INTO t1 SELECT;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
INSERT INTO t1
SELECT randstr(400,400), randstr(400,400), randstr(400,400) FROM t1;
PRAGMA cache_size = 10;
SAVEPOINT one;
DELETE FROM t1 WHERE rowid < 5;
SAVEPOINT two;
DELETE FROM t1 WHERE rowid > 10;
ROLLBACK TO two;
ROLLBACK TO one;
RELEASE one;
CREATE TABLE t1(a, b, c);
INSERT INTO t1 VALUES(1, randstr(1000,1000), randstr(1000,1000));
INSERT INTO t1 VALUES(2, randstr(1000,1000), randstr(1000,1000));
BEGIN;
UPDATE t1 SET a = 3 WHERE a = 1;
SAVEPOINT one;
UPDATE t1 SET a = 4 WHERE a = 2;
COMMIT;
SAVEPOINT one;
RELEASE one;
PRAGMA auto_vacuum = incremental;
PRAGMA cache_size = 1000;
CREATE TABLE t1(a, b);
CREATE TABLE t2(a, b);
CREATE TABLE t3(a, b);
INSERT INTO t1 VALUES(1, randstr(500,500));
INSERT INTO t1 VALUES(2, randstr(500,500));
INSERT INTO t1 VALUES(3, randstr(500,500));
DELETE FROM t1;
BEGIN;
INSERT INTO t1 VALUES(1, randstr(500,500));
INSERT INTO t1 VALUES(2, randstr(500,500));
INSERT INTO t1 VALUES(3, randstr(500,500));
DROP TABLE t3;                  -- Page 5 of the database file is now free.
DROP TABLE t2;                  -- Page 4 of the database file is now free.
SAVEPOINT abc;
PRAGMA incremental_vacuum;
ROLLBACK TO abc;
