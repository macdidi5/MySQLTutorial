ALTER TABLE mytable ADD newcolumn int


ALTER TABLE mytable ADD newcolumn int FIRST


ALTER TABLE mytable ADD newcolumn int AFTER two


ALTER TABLE mytable 
ADD (newcolumn int, newcolumn2 int)


ALTER TABLE mytable 
CHANGE one changecolumn BIGINT AFTER two


ALTER TABLE mytable 
MODIFY one BIGINT AFTER three


ALTER TABLE mytable DROP two


ALTER TABLE mytable RENAME mynewtable


RENAME TABLE mytable TO mynewtable
