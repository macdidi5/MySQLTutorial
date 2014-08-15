PREPARE new_dept FROM
'INSERT INTO cmdev.dept VALUES (?, ?, ?)';


SET @my_deptno=99, @my_dname='HR', @my_location='TAIPEI';


EXECUTE new_dept USING @my_deptno,@my_dname,@my_location;


SET @my_deptno=101, @my_dname='IT';


EXECUTE new_dept USING @my_deptno,@my_dname;


EXECUTE new_dept USING @my_deptno,@my_dname,@not_exists;
