-- DB切り替え
\c hogedb

-- テーブル作成
CREATE TABLE  hogeschema.sample (
  col1 VARCHAR(10),
  col2 VARCHAR(10),
  col3 VARCHAR(10),
  PRIMARY KEY (col1)
);

-- 権限追加
GRANT ALL PRIVILEGES ON hogeschema.sample TO hoge;

-- サンプルレコード作成
INSERT INTO hogeschema.sample VALUES('1111', '2221', '3331');
INSERT INTO hogeschema.sample VALUES('1112', '2222', '3332');
INSERT INTO hogeschema.sample VALUES('1113', '2223', '3333');

\set column '8888'
\set column1 '9999'
\set column2 '0000'
INSERT INTO hogeschema.sample VALUES('1114', '2223', :'column');
INSERT INTO hogeschema.sample VALUES('1115', '2223', :'column1');
INSERT INTO hogeschema.sample VALUES('1116', '2223', :'column2');
