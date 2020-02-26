USE [TEST_DB]
GO

INSERT INTO [dbo].[T_SEQ]
           ([TYPE]
           ,[CURRENT_NO]
           ,[MAX_NO]
           ,[MIN_NO])
     VALUES
           (1
           ,95000000
           ,95999991
           ,95000001)
GO

