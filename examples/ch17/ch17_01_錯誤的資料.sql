SET sql_mode = ''


SET sql_mode = 'STRICT_TRANS_TABLES'


SET sql_mode = 'STRICT_ALL_TABLES'


CREATE TABLE debug (
  fint TINYINT NOT NULL,
  fdouble DOUBLE(5, 2),
  fchar VARCHAR(3),
  fdate DATE DEFAULT '2000-01-01',
  ftime TIME,
  fdatetime DATETIME,
  ftimestamp TIMESTAMP,
  fyear YEAR,
  fenum ENUM('A', 'B', 'C'),
  fset SET('X', 'Y', 'Z')
)
