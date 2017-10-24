PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=OFF;
PRAGMA cache_size=1234;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=OFF;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA cache_size=-4321;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=ON;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA default_cache_size=-123;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
VACUUM;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=NORMAL;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=EXTRA;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=FULL;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA cache_size;
PRAGMA default_cache_size;
PRAGMA synchronous;
PRAGMA synchronous=0;
PRAGMA synchronous;
PRAGMA synchronous=2;
PRAGMA synchronous;
PRAGMA synchronous=4;
PRAGMA synchronous;
PRAGMA synchronous=3;
PRAGMA synchronous;
PRAGMA synchronous=8;
PRAGMA synchronous;
PRAGMA synchronous=10;
PRAGMA synchronous;
PRAGMA vdbe_listing=YES;
PRAGMA vdbe_listing;
PRAGMA vdbe_listing=NO;
PRAGMA vdbe_listing;
PRAGMA parser_trace=ON;
PRAGMA parser_trace=OFF;
PRAGMA bogus = -1234;  -- Parsing of negative values;
ATTACH 'test2.db' AS aux;
PRAGMA auto_vacuum=OFF;
BEGIN;
CREATE TABLE t2(a,b,c);
CREATE INDEX i2 ON t2(a);
INSERT INTO t2 VALUES(11,2,3);
INSERT INTO t2 VALUES(22,3,4);
COMMIT;
SELECT rowid, * from t2;
ATTACH DATABASE 'test.db' AS t2;
PRAGMA integrity_check;
PRAGMA integrity_check=4;
PRAGMA integrity_check=xyz;
PRAGMA integrity_check=0;
ATTACH 'testerr.db' AS t2;
PRAGMA integrity_check;
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2} {row 2 missing from index i2} {wrong # of entries in index i2}};
PRAGMA integrity_check=1;
Page 4 is never used}};
PRAGMA integrity_check=5;
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2} {row 2 missing from index i2}};
PRAGMA integrity_check=4;
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2}};
PRAGMA integrity_check=3;
Page 4 is never used
Page 5 is never used
Page 6 is never used}};
PRAGMA integrity_check(2);
Page 4 is never used
Page 5 is never used}};
ATTACH 'testerr.db' AS t3;
PRAGMA integrity_check;
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2} {row 2 missing from index i2} {wrong # of entries in index i2} {*** in database t3 ***
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2} {row 2 missing from index i2} {wrong # of entries in index i2}};
PRAGMA integrity_check(10);
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2} {row 2 missing from index i2} {wrong # of entries in index i2} {*** in database t3 ***
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2}};
PRAGMA integrity_check=8;
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2} {row 2 missing from index i2} {wrong # of entries in index i2} {*** in database t3 ***
Page 4 is never used
Page 5 is never used}};
PRAGMA integrity_check=4;
Page 4 is never used
Page 5 is never used
Page 6 is never used} {row 1 missing from index i2}};
CREATE TABLE t1(a,b);
CREATE INDEX t1a ON t1(a);
INSERT INTO t1 VALUES(1,1),(2,2),(3,3),(2,4),(NULL,5),(NULL,6);
PRAGMA writable_schema=ON;
UPDATE sqlite_master SET sql='CREATE UNIQUE INDEX t1a ON t1(a)'
WHERE name='t1a';
UPDATE sqlite_master SET sql='CREATE TABLE t1(a NOT NULL,b)'
WHERE name='t1';
PRAGMA writable_schema=OFF;
ALTER TABLE t1 RENAME TO t1x;
PRAGMA integrity_check;
PRAGMA integrity_check(3);
PRAGMA integrity_check(2);
PRAGMA integrity_check(1);
CREATE TABLE t1(a,b,c);
WITH RECURSIVE;
INSERT INTO t1(a,b,c) SELECT i, printf('xyz%08x',i), 2000-i FROM c;
CREATE INDEX t1a ON t1(a);
CREATE INDEX t1bc ON t1(b,c);
ATTACH 'test2.db' AS aux;
DETACH aux;
ATTACH 'test3.db' AS aux;
DETACH aux;
ATTACH 'test2.db' AS aux;
BEGIN;
CREATE TABLE t2(a TYPE_X, b [TYPE_Y], c "TYPE_Z");
CREATE TABLE t5(;
UNIQUE(b,c,d),
PRIMARY KEY(e,b,c);
PRAGMA table_info(t5);
CREATE TABLE t2_3(a,b INTEGER PRIMARY KEY,c);
CREATE TABLE t3(a int references t2(b), b UNIQUE);
CREATE INDEX t3i1 ON t3(a,b);
CREATE INDEX t3i2 ON t3(b,a);
PRAGMA index_info='t3i2';
DROP INDEX t3i2;
CREATE TABLE trial(col_main);
CREATE TEMP TABLE trial(col_temp);
PRAGMA table_info(trial);
PRAGMA temp.table_info(trial);
PRAGMA main.table_info(trial);
CREATE TABLE test_table(;
ORDER BY cid};
CREATE TABLE t68(a,b,c,PRIMARY KEY(a,b,a,c));
PRAGMA table_info(t68);
PRAGMA schema_version = 105;
PRAGMA schema_version;
PRAGMA schema_version = 106;
PRAGMA schema_version;
CREATE TABLE t4(a, b, c);
INSERT INTO t4 VALUES(1, 2, 3);
SELECT * FROM t4;
PRAGMA schema_version;
SELECT * FROM t4;
PRAGMA schema_version = 108;
ATTACH 'test2.db' AS aux;
CREATE TABLE aux.t1(a, b, c);
PRAGMA aux.schema_version = 205;
PRAGMA aux.schema_version;
PRAGMA schema_version;
ATTACH 'test2.db' AS aux;
SELECT * FROM aux.t1;
PRAGMA aux.schema_version = 206;
PRAGMA user_version;
PRAGMA user_version = 2;
PRAGMA user_version;
PRAGMA user_version;
PRAGMA schema_version;
VACUUM;
PRAGMA user_version;
PRAGMA schema_version;
PRAGMA aux.user_version;
PRAGMA aux.user_version = 3;
PRAGMA aux.user_version;
PRAGMA main.user_version;
BEGIN;
PRAGMA aux.user_version = 10;
PRAGMA user_version = 11;
PRAGMA aux.user_version;
PRAGMA main.user_version;
ROLLBACK;
PRAGMA aux.user_version;
PRAGMA main.user_version;
PRAGMA user_version = -450;
PRAGMA user_version;
PRAGMA temp.cache_size = 1;
CREATE TEMP TABLE IF NOT EXISTS a(b);
DELETE FROM a;
INSERT INTO a VALUES(randomblob(1000));
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
INSERT INTO a SELECT * FROM a;
PRAGMA application_id;
PRAGMA temp_store;
PRAGMA temp_store=file;
PRAGMA temp_store;
PRAGMA temp_store=memory;
PRAGMA temp_store;
PRAGMA temp_store_directory;
PRAGMA temp_store_directory='$pwd';
PRAGMA temp_store_directory;
PRAGMA temp_store_directory='/NON/EXISTENT/PATH/FOOBAR';
PRAGMA temp_store_directory='';
PRAGMA temp_store_directory;
PRAGMA temp_store=FILE;
CREATE TEMP TABLE temp_store_directory_test(a integer);
INSERT INTO temp_store_directory_test values (2);
SELECT * FROM temp_store_directory_test;
PRAGMA temp_store_directory='$pwd';
SELECT * FROM temp_store_directory_test;
PRAGMA temp_store = 0;
PRAGMA temp_store;
PRAGMA temp_store = 1;
PRAGMA temp_store;
PRAGMA temp_store = 2;
PRAGMA temp_store;
PRAGMA temp_store = 3;
PRAGMA temp_store;
BEGIN EXCLUSIVE;
CREATE TEMP TABLE temp_table(t);
INSERT INTO temp_table VALUES('valuable data');
PRAGMA temp_store = 1;
SELECT * FROM temp_table;
COMMIT;
INSERT INTO temp_table VALUES('valuable data II');
SELECT * FROM temp_table;
DROP TABLE main.t1;
PRAGMA count_changes = 1;
CREATE TABLE t1(a PRIMARY KEY);
CREATE TABLE t1_mirror(a);
CREATE TABLE t1_mirror2(a);
CREATE TRIGGER t1_bi BEFORE INSERT ON t1 BEGIN
INSERT INTO t1_mirror VALUES(new.a);
END;
CREATE TRIGGER t1_ai AFTER INSERT ON t1 BEGIN
INSERT INTO t1_mirror2 VALUES(new.a);
END;
CREATE TRIGGER t1_bu BEFORE UPDATE ON t1 BEGIN
UPDATE t1_mirror SET a = new.a WHERE a = old.a;
END;
CREATE TRIGGER t1_au AFTER UPDATE ON t1 BEGIN
UPDATE t1_mirror2 SET a = new.a WHERE a = old.a;
END;
CREATE TRIGGER t1_bd BEFORE DELETE ON t1 BEGIN
DELETE FROM t1_mirror WHERE a = old.a;
END;
CREATE TRIGGER t1_ad AFTER DELETE ON t1 BEGIN
DELETE FROM t1_mirror2 WHERE a = old.a;
END;
INSERT INTO t1 VALUES(randstr(10,10));
UPDATE t1 SET a = randstr(10,10);
DELETE FROM t1;
PRAGMA temp.table_info('abc');
PRAGMA temp.default_cache_size = 200;
PRAGMA temp.default_cache_size;
PRAGMA temp.cache_size = 400;
PRAGMA temp.cache_size;
DROP TABLE IF EXISTS t4;
PRAGMA vdbe_trace=on;
PRAGMA vdbe_listing=on;
PRAGMA sql_trace=on;
CREATE TABLE t4(a INTEGER PRIMARY KEY,b);
INSERT INTO t4(b) VALUES(x'0123456789abcdef0123456789abcdef0123456789');
INSERT INTO t4(b) VALUES(randstr(30,30));
INSERT INTO t4(b) VALUES(1.23456);
INSERT INTO t4(b) VALUES(NULL);
INSERT INTO t4(b) VALUES(0);
INSERT INTO t4(b) SELECT b||b||b||b FROM t4;
SELECT * FROM t4;
PRAGMA vdbe_trace=off;
PRAGMA vdbe_listing=off;
PRAGMA sql_trace=off;
CREATE TABLE abc(a, b, c);
PRAGMA page_count;
PRAGMA main.page_count;
PRAGMA temp.page_count;
BEGIN;
CREATE TABLE def(a, b, c);
PRAGMA page_count;
ROLLBACK;
PRAGMA page_count;
PRAGMA auto_vacuum = 0;
CREATE TABLE t1(a, b, c);
CREATE TABLE t2(a, b, c);
CREATE TABLE t3(a, b, c);
CREATE TABLE t4(a, b, c);
ATTACH 'test2.db' AS aux;
PRAGMA aux.page_count;
PRAGMA cache_size=59;
PRAGMA cache_size;
CREATE TABLE newtable(a, b, c);
PRAGMA lock_proxy_file="mylittleproxy";
PRAGMA lock_proxy_file;
PRAGMA lock_proxy_file="mylittleproxy";
PRAGMA lock_proxy_file=":auto:";
PRAGMA lock_proxy_file;
PRAGMA lock_proxy_file="myotherproxy";
PRAGMA lock_proxy_file="myoriginalproxy";
PRAGMA lock_proxy_file="myotherproxy";
PRAGMA lock_proxy_file;
PRAGMA lock_proxy_file=":auto:";
PRAGMA lock_proxy_file;
PRAGMA lock_proxy_file=":auto:";
PRAGMA lock_proxy_file;
PRAGMA lock_proxy_file=":auto:";
PRAGMA lock_proxy_file="yetanotherproxy";
PRAGMA lock_proxy_file;
PRAGMA lock_proxy_file=":auto:";
PRAGMA lock_proxy_file;
NONE 0
NoNe 0;
FULL 1;
INCREMENTAL 2;
PRAGMA auto_vacuum=$::autovac_setting;
PRAGMA auto_vacuum;
FILE 1;
MEMORY 2
MeMoRy 2;
PRAGMA temp_store=$::temp_setting;
PRAGMA temp_store=$::temp_setting;
PRAGMA temp_store;
PRAGMA page_size = 1024;
PRAGMA auto_vacuum = 0;
CREATE TABLE t1(a PRIMARY KEY, b);
INSERT INTO t1 VALUES(1, 1);
Multiple uses for byte 672 of page 15};
Multiple uses for byte 672 of page 15}
Multiple uses for byte 672 of page 15}.*/};
Multiple uses for byte 672 of page 15}.*/}
ATTACH 'testerr.db' AS 'aux';
PRAGMA integrity_check;
ATTACH 'test.db' AS 'aux';
PRAGMA integrity_check;
CREATE TABLE t1(a INTEGER PRIMARY KEY,b,c,d);
CREATE INDEX i1 ON t1(b,c);
CREATE INDEX i2 ON t1(c,d);
CREATE INDEX i2x ON t1(d COLLATE nocase, c DESC);
CREATE TABLE t2(x INTEGER REFERENCES t1);
DROP INDEX i2;
CREATE INDEX i2 ON t1(c,d,b);
CREATE INDEX i3 ON t1(d,b,c);
ALTER TABLE t1 ADD COLUMN e;
PRAGMA table_info(t1);
DROP TABLE t2;
CREATE TABLE t2(x, y INTEGER REFERENCES t1);
PRAGMA foreign_key_list(t2);
PRAGMA page_size = 1024;
CREATE TABLE t1(a, b, c);
CREATE INDEX i1 ON t1(b);
INSERT INTO t1 VALUES('a', 'b', 'c');
PRAGMA integrity_check;
SELECT * FROM t1;
PRAGMA integrity_check;