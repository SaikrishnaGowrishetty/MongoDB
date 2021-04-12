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


select P.Pname, P.Pnumber, d.Dname, 
	e.Lname, e.Fname, w.Hours
into ##temp
from Project p
inner join Department d on p.Dnum = d.Dnumber
inner join Works_on w on p.Pnumber = w.Pno
inner join Employee e on w.Essn = e.Ssn


SET @sql_command = 
' "SELECT Pname, Pnumber, Dname, \
	(SELECT i.Lname,i.Fname,i.hours \
		FROM ##temp i \
		WHERE i.Pname = o.Pname \
		FOR JSON PATH) AS employees \
FROM ##temp o \
GROUP BY Pname, Pnumber,Dname \
FOR JSON PATH" '

set @outputDir ='C:\Jsonfiles\projects.txt';

SET @command = 'bcp'+@sql_command+' queryout "'+ @outputDir + '" -S '+ @instanceName +' -T -c'

EXEC xp_cmdshell @command, no_output

GO


sp_configure 'xp_cmdshell',0;
RECONFIGURE
GO