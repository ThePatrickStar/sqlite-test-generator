ATTACH 'test2.db' AS two;
CREATE TABLE two.t1(x);
ATTACH 'test3.db' AS three;
CREATE TABLE three.t1(x);
ATTACH 'test4.db' AS four;
CREATE TABLE four.t1(x);
CREATE TABLE t1(a, b, c);
CREATE INDEX i1 ON t1(a, b);
CREATE TABLE t1(d, e, f);
ATTACH 'test2.db' AS db1;
SELECT * FROM sqlite_master;
ATTACH 'test3.db' AS three;
