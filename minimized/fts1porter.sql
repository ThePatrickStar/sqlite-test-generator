CREATE VIRTUAL TABLE t1 USING fts1(word, tokenize Porter);
DELETE FROM t1_term;
DELETE FROM t1_content;
INSERT INTO t1(word) VALUES($pfrom);
SELECT term FROM t1_term;
