USE [bdAtacado]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usrAtacado]
GO
USE [bdAtacado]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usrAtacado]
GO
USE [bdAtacado]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrAtacado]
GO
