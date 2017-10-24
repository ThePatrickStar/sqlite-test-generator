CREATE TABLE t1(a PRIMARY KEY,b,c);
CREATE TABLE t1w(a PRIMARY KEY,b,c) WITHOUT ROWID;
INSERT INTO t1 VALUES(1565,681,1148),(1429,1190,1619),(425,358,1306);
INSERT INTO t1w SELECT a,b,c FROM t1;
SELECT rowid, _rowid_, oid FROM t1 ORDER BY a DESC;
SELECT rowid FROM t1w;
SELECT _rowid_ FROM t1w;
SELECT oid FROM t1w;
CREATE TABLE IF NOT EXISTS wordcount(;
INSERT INTO wordcount VALUES('one',1);
SELECT rowid FROM wordcount;
CREATE TABLE IF NOT EXISTS wordcount_b(;
INSERT INTO wordcount_b VALUES('one',1);
SELECT rowid FROM wordcount_b;
CREATE TABLE IF NOT EXISTS wordcount_c(;
INSERT INTO wordcount_c VALUES('one',1);
SELECT rowid FROM wordcount_c;
CREATE TABLE IF NOT EXISTS wordcount_d(;
INSERT INTO wordcount_d VALUES('one',1);
SELECT rowid FROM wordcount_d;
CREATE TABLE IF NOT EXISTS error1(;
CREATE TABLE IF NOT EXISTS error2(;
CREATE TABLE IF NOT EXISTS error3(;
CREATE TABLE ipk(key INTEGER PRIMARY KEY, val TEXT) WITHOUT ROWID;
INSERT INTO ipk VALUES('rival','bonus'); -- ok to insert non-integer key
SELECT * FROM ipk;
BEGIN;
INSERT INTO ipk VALUES(NULL,'sample'); -- no automatic generation of keys;
ROLLBACK;
CREATE TABLE ipk2(key INTEGER PRIMARY KEY AUTOINCREMENT, val TEXT)WITHOUT ROWID;
CREATE TABLE nn(a, b, c, d, e, PRIMARY KEY(c,a,e));
CREATE TABLE nnw(a, b, c, d, e, PRIMARY KEY(c,a,e)) WITHOUT ROWID;
INSERT INTO nn VALUES(1,2,3,4,5);
INSERT INTO nnw VALUES(1,2,3,4,5);
INSERT INTO nn VALUES(NULL, 3,4,5,6);
INSERT INTO nn VALUES(3,4,NULL,7,8);
INSERT INTO nn VALUES(4,5,6,7,NULL);
SELECT count(*) FROM nn;
INSERT INTO nnw VALUES(NULL, 3,4,5,6);
INSERT INTO nnw VALUES(3,4,NULL,7,8);
INSERT INTO nnw VALUES(4,5,6,7,NULL);
SELECT count(*) FROM nnw;
CREATE TABLE b1(a INTEGER PRIMARY KEY, b BLOB) WITHOUT ROWID;
INSERT INTO b1 VALUES(1,x'0102030405060708090a0b0c0d0e0f');