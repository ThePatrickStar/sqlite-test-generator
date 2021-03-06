CREATE TABLE t1(a PRIMARY KEY);
INSERT INTO t1 VALUES(2);
INSERT INTO t1 VALUES(1);
INSERT INTO t1 VALUES(3);
UPDATE OR REPLACE t1 SET a = 1;
SELECT * FROM t1;
CREATE TABLE t2(a, b);
CREATE TRIGGER t2_t AFTER UPDATE ON t2 BEGIN
DELETE FROM t2 WHERE a = new.a + 1;
END;
INSERT INTO t2 VALUES(1, 2);
INSERT INTO t2 VALUES(2, 3);
UPDATE t2 SET b = 5;
CREATE TABLE t3(a, b);
CREATE TRIGGER t3_t AFTER DELETE ON t3 BEGIN
DELETE FROM t3 WHERE a = old.a + 1;
END;
INSERT INTO t3 VALUES(1, 2);
INSERT INTO t3 VALUES(2, 3);
