USE SaiAkshay
GO

sp_configure 'show advanced options',1;
RECONFIGURE
GO

sp_configure 'xp_cmdshell',1;
RECONFIGURE
GO

DECLARE @fileText VARCHAR(MAX);
DECLARE @fileName VARCHAR(500) ;
DECLARE @command varchar(1000);
DECLARE @instanceName VARCHAR(50)='.\SQLEXPRESS'
DECLARE @outputDir VARCHAR(250)
DECLARE @sql_command VARCHAR(MAX)

IF OBJECT_ID('tempdb..##temp') IS NOT NULL
	drop table ##temp

select e.Lname, e.Fname,d.Dname,
	P.Pname, P.Pnumber, w.Hours
into ##temp
from Employee e
inner join Department d on e.Dno = d.Dnumber
inner join Works_on w on e.Ssn = w.Essn
inner join Project p on w.Pno = p.Pnumber

SET @sql_command = 
' "SELECT Lname, Fname, Dname, \
	(SELECT i.Pname,i.Pnumber,i.hours \
		FROM ##temp i \
		WHERE i.Lname = o.Lname and i.Fname = o.Fname \
		FOR JSON PATH) AS Projects \
FROM ##temp o \
GROUP BY Lname, Fname,Dname \
FOR JSON PATH" '

set @outputDir ='C:\Jsonfiles\Employees.txt';

SET @command = 'bcp'+@sql_command+' queryout "'+ @outputDir + '" -S '+ @instanceName +' -T -c'

EXEC xp_cmdshell @command, no_output

GO


sp_configure 'xp_cmdshell',0;
RECONFIGURE
GO

sp_configure 'show advanced options',0;
RECONFIGURE
GO