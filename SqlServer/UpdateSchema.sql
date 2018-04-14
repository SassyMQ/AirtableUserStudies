
    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
    
    
      -- TABLE: Person
      -- TABLE: Feedback
      -- TABLE: Company
      -- TABLE: FeedbackSession

      -- CREATE DATABASE
      IF NOT EXISTS (SELECT * from sys.databases WHERE name = 'AirtableUserStudies')
      BEGIN
          CREATE DATABASE [AirtableUserStudies];
      END
        GO
        
     USE [AirtableUserStudies];
GO
      
        -- TABLE: Person
        -- ****** Object:  Table [dbo].[Person]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Person] (
          [PersonId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [JobRoles] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Company] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [LinkedInProfile] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [FirstName] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [LastName] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Phone] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED
          (
            [PersonId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Feedback
        -- ****** Object:  Table [dbo].[Feedback]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Feedback] (
          [FeedbackId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Sessions] INT NULL
          -- INT32.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED
          (
            [FeedbackId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Company
        -- ****** Object:  Table [dbo].[Company]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Company] (
          [CompanyId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [CompanySize] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [About] NVARCHAR(max) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED
          (
            [CompanyId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: FeedbackSession
        -- ****** Object:  Table [dbo].[FeedbackSession]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedbackSession]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[FeedbackSession] (
          [FeedbackSessionId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Notes] NVARCHAR(max) NULL
          -- TEXT.
        ,
          [PersonInterviewed] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Date] DATE NULL
          -- xs:date.
        ,
          [mm] INT NULL
          -- SHORT.
        ,
          [SessionType] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [OverallFeedbackScore] INT NULL
          -- INT32.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_FeedbackSession] PRIMARY KEY CLUSTERED
          (
            [FeedbackSessionId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO


      
DECLARE @ObjectName NVARCHAR(100)

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'PersonId' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [PersonId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'JobRoles' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [JobRoles] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [JobRoles] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Company' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [Company] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [Company] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'LinkedInProfile' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [LinkedInProfile] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [LinkedInProfile] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'FirstName' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [FirstName] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [FirstName] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'LastName' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [LastName] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [LastName] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Phone' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [Phone] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [Phone] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Person'))
    BEGIN
            ALTER TABLE [dbo].[Person] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Person] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'FeedbackId' AND Object_ID = Object_ID(N'Feedback'))
    BEGIN
            ALTER TABLE [dbo].[Feedback] ADD [FeedbackId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Feedback'))
    BEGIN
            ALTER TABLE [dbo].[Feedback] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Feedback] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Sessions' AND Object_ID = Object_ID(N'Feedback'))
    BEGIN
            ALTER TABLE [dbo].[Feedback] ADD [Sessions] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Feedback] ALTER COLUMN [Sessions] INT NULL;

    

	END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Feedback'))
    BEGIN
            ALTER TABLE [dbo].[Feedback] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Feedback] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'CompanyId' AND Object_ID = Object_ID(N'Company'))
    BEGIN
            ALTER TABLE [dbo].[Company] ADD [CompanyId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Company'))
    BEGIN
            ALTER TABLE [dbo].[Company] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Company] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'CompanySize' AND Object_ID = Object_ID(N'Company'))
    BEGIN
            ALTER TABLE [dbo].[Company] ADD [CompanySize] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Company] ALTER COLUMN [CompanySize] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'About' AND Object_ID = Object_ID(N'Company'))
    BEGIN
            ALTER TABLE [dbo].[Company] ADD [About] NVARCHAR(max) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Company] ALTER COLUMN [About] NVARCHAR(max) NULL;

    

	END

    
    -- COUNT: 7
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Company'))
    BEGIN
            ALTER TABLE [dbo].[Company] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Company] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'FeedbackSessionId' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [FeedbackSessionId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Notes' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [Notes] NVARCHAR(max) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [Notes] NVARCHAR(max) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'PersonInterviewed' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [PersonInterviewed] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [PersonInterviewed] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Date' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [Date] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [Date] DATE NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'mm' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [mm] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [mm] INT NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'SessionType' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [SessionType] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [SessionType] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'OverallFeedbackScore' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [OverallFeedbackScore] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [OverallFeedbackScore] INT NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'FeedbackSession'))
    BEGIN
            ALTER TABLE [dbo].[FeedbackSession] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[FeedbackSession] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    

              -- ****** KEYS FOR Table [dbo].[Person]
          -- FK for Company :: 1 :: Person :: Company
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Person_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Person]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Person_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Person]'))
                ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Company] FOREIGN KEY([Company])
                    REFERENCES [dbo].[Company] (CompanyId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Person_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[Person]'))
            ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Company]
            GO
          

              -- ****** KEYS FOR Table [dbo].[Feedback]

              -- ****** KEYS FOR Table [dbo].[Company]

              -- ****** KEYS FOR Table [dbo].[FeedbackSession]
          -- FK for PersonInterviewed :: 0 :: FeedbackSession :: Person
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeedbackSession_Person]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeedbackSession]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeedbackSession_Person]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeedbackSession]'))
                ALTER TABLE [dbo].[FeedbackSession]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackSession_Person] FOREIGN KEY([PersonInterviewed])
                    REFERENCES [dbo].[Person] (PersonId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeedbackSession_Person]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeedbackSession]'))
            ALTER TABLE [dbo].[FeedbackSession] CHECK CONSTRAINT [FK_FeedbackSession_Person]
            GO
          


            SELECT 'Successful' as Value
            FROM (SELECT NULL AS FIELD) as Result
            FOR XML AUTO

          