
 -- INSERT DATA
  
        
        
        
        
        
            -- INSERT: Person
            --  STATIC: 
            --  Rows: 11
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'rec04zjEFruvgl4PJ')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'rec04zjEFruvgl4PJ', 
                        
                                'Alexis Pham', 
                        
                                'Product', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Alexis', 
                        
                                'Pham', 
                        
                                '(444) 444-4444', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Alexis Pham', 
                                [JobRoles] = 'Product', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Alexis', 
                                [LastName] = 'Pham', 
                                [Phone] = '(444) 444-4444', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'rec04zjEFruvgl4PJ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'rec7Up8MLCy1CncWa')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'rec7Up8MLCy1CncWa', 
                        
                                'Peyton Devereaux', 
                        
                                'Engineering', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Peyton', 
                        
                                'Devereaux', 
                        
                                '(222) 222-2222', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Peyton Devereaux', 
                                [JobRoles] = 'Engineering', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Peyton', 
                                [LastName] = 'Devereaux', 
                                [Phone] = '(222) 222-2222', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'rec7Up8MLCy1CncWa';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'rec9eyeSDx892lrdM')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'rec9eyeSDx892lrdM', 
                        
                                'Kelly Sall', 
                        
                                'IT', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Kelly', 
                        
                                'Sall', 
                        
                                '(111) 111-1111', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Kelly Sall', 
                                [JobRoles] = 'IT', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Kelly', 
                                [LastName] = 'Sall', 
                                [Phone] = '(111) 111-1111', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'rec9eyeSDx892lrdM';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recGVbAlg7H3TewyK')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recGVbAlg7H3TewyK', 
                        
                                'Sandy Hagen', 
                        
                                'Business Analyst', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Sandy', 
                        
                                'Hagen', 
                        
                                '(999) 999-9999', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Sandy Hagen', 
                                [JobRoles] = 'Business Analyst', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Sandy', 
                                [LastName] = 'Hagen', 
                                [Phone] = '(999) 999-9999', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recGVbAlg7H3TewyK';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recHkaDb7LOazgtnv')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recHkaDb7LOazgtnv', 
                        
                                'Pat Everett', 
                        
                                'Marketing', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Pat', 
                        
                                'Everett', 
                        
                                '(777) 777-7777', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Pat Everett', 
                                [JobRoles] = 'Marketing', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Pat', 
                                [LastName] = 'Everett', 
                                [Phone] = '(777) 777-7777', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recHkaDb7LOazgtnv';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recJIJj6c5An9E95y')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recJIJj6c5An9E95y', 
                        
                                'Lee Szabo', 
                        
                                'Operations', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Lee', 
                        
                                'Szabo', 
                        
                                '(000) 000-0000', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Lee Szabo', 
                                [JobRoles] = 'Operations', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Lee', 
                                [LastName] = 'Szabo', 
                                [Phone] = '(000) 000-0000', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recJIJj6c5An9E95y';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recKmtw8ckT7nhsEi')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recKmtw8ckT7nhsEi', 
                        
                                'Quinn Nguyen', 
                        
                                'Marketing', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Quinn', 
                        
                                'Nguyen', 
                        
                                '(888) 888-8888', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Quinn Nguyen', 
                                [JobRoles] = 'Marketing', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Quinn', 
                                [LastName] = 'Nguyen', 
                                [Phone] = '(888) 888-8888', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recKmtw8ckT7nhsEi';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recTkELBeQMhm9FjE')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recTkELBeQMhm9FjE', 
                        
                                'Jess Patel', 
                        
                                'Support', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Jess', 
                        
                                'Patel', 
                        
                                '(666) 666-6666', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Jess Patel', 
                                [JobRoles] = 'Support', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Jess', 
                                [LastName] = 'Patel', 
                                [Phone] = '(666) 666-6666', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recTkELBeQMhm9FjE';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recd8fpwPlBavJ2oJ')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recd8fpwPlBavJ2oJ', 
                        
                                'Harley Holbrook', 
                        
                                'Product', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Harley', 
                        
                                'Holbrook', 
                        
                                '(555) 555-5555', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Harley Holbrook', 
                                [JobRoles] = 'Product', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Harley', 
                                [LastName] = 'Holbrook', 
                                [Phone] = '(555) 555-5555', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recd8fpwPlBavJ2oJ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recgvganALTn21vml')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recgvganALTn21vml', 
                        
                                'Robin Jaffe', 
                        
                                'Product', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Robin', 
                        
                                'Jaffe', 
                        
                                '(333) 333-3333', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Robin Jaffe', 
                                [JobRoles] = 'Product', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Robin', 
                                [LastName] = 'Jaffe', 
                                [Phone] = '(333) 333-3333', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recgvganALTn21vml';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'reclkfineMvdbG6N5')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'reclkfineMvdbG6N5', 
                        
                                'Skyler Xu', 
                        
                                'Engineering', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Skyler', 
                        
                                'Xu', 
                        
                                '(111) 111-1111', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Skyler Xu', 
                                [JobRoles] = 'Engineering', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Skyler', 
                                [LastName] = 'Xu', 
                                [Phone] = '(111) 111-1111', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'reclkfineMvdbG6N5';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Feedback
            --  STATIC: 
            --  Rows: 9
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'rec4WGefhq5A73vcB')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'rec4WGefhq5A73vcB', 
                        
                                'Large table support', 
                        
                                '1', 
                        
                                '2014-09-25T23:40:57Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Large table support', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:40:57Z'
                        WHERE FeedbackId = 'rec4WGefhq5A73vcB';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'rec5PI5e5o7o68new')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'rec5PI5e5o7o68new', 
                        
                                'Slow loading time', 
                        
                                '2', 
                        
                                '2014-07-16T00:58:30Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Slow loading time', 
                                [Sessions] = '2', 
                                [createdTime] = '2014-07-16T00:58:30Z'
                        WHERE FeedbackId = 'rec5PI5e5o7o68new';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recRZNa89kbu26ufF')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recRZNa89kbu26ufF', 
                        
                                'Mobile app', 
                        
                                '2', 
                        
                                '2014-07-16T00:17:01Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Mobile app', 
                                [Sessions] = '2', 
                                [createdTime] = '2014-07-16T00:17:01Z'
                        WHERE FeedbackId = 'recRZNa89kbu26ufF';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recTPK7ccs3CcaxaE')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recTPK7ccs3CcaxaE', 
                        
                                'Inline document previews', 
                        
                                '3', 
                        
                                '2014-07-16T00:17:01Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Inline document previews', 
                                [Sessions] = '3', 
                                [createdTime] = '2014-07-16T00:17:01Z'
                        WHERE FeedbackId = 'recTPK7ccs3CcaxaE';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recUPA853kbx27paH')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recUPA853kbx27paH', 
                        
                                'Importing spreadsheets', 
                        
                                '1', 
                        
                                '2014-09-25T23:40:43Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Importing spreadsheets', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:40:43Z'
                        WHERE FeedbackId = 'recUPA853kbx27paH';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recUSNb63m0t17ldI')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recUSNb63m0t17ldI', 
                        
                                'Better version control', 
                        
                                '3', 
                        
                                '2014-07-16T00:17:01Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Better version control', 
                                [Sessions] = '3', 
                                [createdTime] = '2014-07-16T00:17:01Z'
                        WHERE FeedbackId = 'recUSNb63m0t17ldI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recWUF5bhr4x1ao8A')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recWUF5bhr4x1ao8A', 
                        
                                'Color coding', 
                        
                                '1', 
                        
                                '2014-09-25T23:41:25Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Color coding', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:41:25Z'
                        WHERE FeedbackId = 'recWUF5bhr4x1ao8A';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recWXB2i7ndC29kcu')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recWXB2i7ndC29kcu', 
                        
                                'Themes and customization', 
                        
                                '1', 
                        
                                '2014-09-25T23:40:42Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Themes and customization', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:40:42Z'
                        WHERE FeedbackId = 'recWXB2i7ndC29kcu';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recWYNe87p7w2ev9x')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recWYNe87p7w2ev9x', 
                        
                                'Better search', 
                        
                                '2', 
                        
                                '2014-09-25T23:41:08Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Better search', 
                                [Sessions] = '2', 
                                [createdTime] = '2014-09-25T23:41:08Z'
                        WHERE FeedbackId = 'recWYNe87p7w2ev9x';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Company
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec1VDd35oaA64o8B')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec1VDd35oaA64o8B', 
                        
                                'Halibutron', 
                        
                                '1000+', 
                        
                                'An American multinational corporation headquartered in Texas, with many subsidiaries. The majority of its business relates to petroleum and natural gas extraction.', 
                        
                                '2014-07-16T00:16:58Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Halibutron', 
                                [CompanySize] = '1000+', 
                                [About] = 'An American multinational corporation headquartered in Texas, with many subsidiaries. The majority of its business relates to petroleum and natural gas extraction.', 
                                [createdTime] = '2014-07-16T00:16:58Z'
                        WHERE CompanyId = 'rec1VDd35oaA64o8B';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec3SH7ihu4xZgr4C')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec3SH7ihu4xZgr4C', 
                        
                                'FireBasket', 
                        
                                '0-24', 
                        
                                'FireBasket is an on-demand hot sauce delivery service that brings you hot sauce wherever you want, whenever you wantâ€”customized to your exact taste buds. No longer will you have to carry hot sauce in your bag.', 
                        
                                '2014-07-23T00:37:59Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'FireBasket', 
                                [CompanySize] = '0-24', 
                                [About] = 'FireBasket is an on-demand hot sauce delivery service that brings you hot sauce wherever you want, whenever you wantâ€”customized to your exact taste buds. No longer will you have to carry hot sauce in your bag.', 
                                [createdTime] = '2014-07-23T00:37:59Z'
                        WHERE CompanyId = 'rec3SH7ihu4xZgr4C';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec4RLc37n2x88r8w')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec4RLc37n2x88r8w', 
                        
                                'Hot Take Media Group', 
                        
                                '200-999', 
                        
                                'An online social news aggregator and listicle production enterprise.', 
                        
                                '2014-09-25T23:57:10Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Hot Take Media Group', 
                                [CompanySize] = '200-999', 
                                [About] = 'An online social news aggregator and listicle production enterprise.', 
                                [createdTime] = '2014-09-25T23:57:10Z'
                        WHERE CompanyId = 'rec4RLc37n2x88r8w';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec6TK4gbxbBYdo6E')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec6TK4gbxbBYdo6E', 
                        
                                'Self-employed', 
                        
                                '0-24', 
                        
                                'Be your own boss.', 
                        
                                '2014-07-16T00:16:58Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Self-employed', 
                                [CompanySize] = '0-24', 
                                [About] = 'Be your own boss.', 
                                [createdTime] = '2014-07-16T00:16:58Z'
                        WHERE CompanyId = 'rec6TK4gbxbBYdo6E';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'recU1A4f2ubxYfucy')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'recU1A4f2ubxYfucy', 
                        
                                'Lyons, Tiger & Behr', 
                        
                                '1000+', 
                        
                                'A global, New-York based advertising agency which was responsible for many of the 20th century''s most iconic advertising campaigns.', 
                        
                                '2014-07-23T00:38:03Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Lyons, Tiger & Behr', 
                                [CompanySize] = '1000+', 
                                [About] = 'A global, New-York based advertising agency which was responsible for many of the 20th century''s most iconic advertising campaigns.', 
                                [createdTime] = '2014-07-23T00:38:03Z'
                        WHERE CompanyId = 'recU1A4f2ubxYfucy';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'recU3K1icuZrc3veu')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'recU3K1icuZrc3veu', 
                        
                                'Triaria', 
                        
                                '1000+', 
                        
                                'A multinational investment banking firm providing asset management, securities, and other financial services to large businesses.', 
                        
                                '2014-07-16T00:16:58Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Triaria', 
                                [CompanySize] = '1000+', 
                                [About] = 'A multinational investment banking firm providing asset management, securities, and other financial services to large businesses.', 
                                [createdTime] = '2014-07-16T00:16:58Z'
                        WHERE CompanyId = 'recU3K1icuZrc3veu';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: FeedbackSession
            --  STATIC: 
            --  Rows: 13
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec3SDe3bo3yYaw4A')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec3SDe3bo3yYaw4A', 
                        
                                'User flow: Right-clicked on tree, selected Reports; sent to Reports; right-clicked on the WAN product icon in the Filters section; then used Reports menu to select WAN Availability report. Result: Success with issues.TOT: 125 seconds.Analysis: He assumed that he could select a particular network segment on to which to run the WAN report, but since the tree was hidden in Reports, he tried to click the WAN filter button. This was reinforced by being able to right-click on the treeâ€”he thought he was running the report on just that element. When presented with the concept of business views (custom trees), he said that would satisfy his need for running reports on discrete network segments', 
                        
                                '2018-05-28', 
                        
                                '1080', 
                        
                                'Initial Interview', 
                        
                                '1', 
                        
                                'Robin Jaffe, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'User flow: Right-clicked on tree, selected Reports; sent to Reports; right-clicked on the WAN product icon in the Filters section; then used Reports menu to select WAN Availability report. Result: Success with issues.TOT: 125 seconds.Analysis: He assumed that he could select a particular network segment on to which to run the WAN report, but since the tree was hidden in Reports, he tried to click the WAN filter button. This was reinforced by being able to right-click on the treeâ€”he thought he was running the report on just that element. When presented with the concept of business views (custom trees), he said that would satisfy his need for running reports on discrete network segments', 
                                [Date] = '2018-05-28', 
                                [mm] = '1080', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '1', 
                                [Name] = 'Robin Jaffe, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec3SDe3bo3yYaw4A';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec4ZO0bhs3v52paI')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec4ZO0bhs3v52paI', 
                        
                                'Had already visited Reports so he went directly there and correctly selected the WAN Availability report.', 
                        
                                '2018-05-24', 
                        
                                '1800', 
                        
                                'Initial Interview', 
                        
                                '5', 
                        
                                'Quinn Nguyen, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Had already visited Reports so he went directly there and correctly selected the WAN Availability report.', 
                                [Date] = '2018-05-24', 
                                [mm] = '1800', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '5', 
                                [Name] = 'Quinn Nguyen, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec4ZO0bhs3v52paI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec5UC9b5y4ydbmbG')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec5UC9b5y4ydbmbG', 
                        
                                'Clicked to Reports; selected WAN Availability report, ran it; commented that if the report ran more than a minute, she would click the â€œNotify on Completionâ€ button. Result: Success. TOT: 20 seconds.', 
                        
                                '2018-03-30', 
                        
                                '1800', 
                        
                                'Initial Interview', 
                        
                                '1', 
                        
                                'Alexis Pham, Initial Interview', 
                        
                                '2014-07-16T00:37:13Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Clicked to Reports; selected WAN Availability report, ran it; commented that if the report ran more than a minute, she would click the â€œNotify on Completionâ€ button. Result: Success. TOT: 20 seconds.', 
                                [Date] = '2018-03-30', 
                                [mm] = '1800', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '1', 
                                [Name] = 'Alexis Pham, Initial Interview', 
                                [createdTime] = '2014-07-16T00:37:13Z'
                        WHERE FeedbackSessionId = 'rec5UC9b5y4ydbmbG';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec5XF97ajax31p1x')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec5XF97ajax31p1x', 
                        
                                'Right-clicked on tree and looked at Reports menu; selected Dashboard, clicked WAN tab; read ticket list, confused about non-date order; went back to tree and right-clicked to Reports; ran WAN Availability, cancelled; went to Network Details; end. Result: Success with issues.Time on task (TOT): 325 seconds. 

Analysis: Since he''d never used a portal as part of his job, he was unclear on the purpose of the site and tended to click around randomly. He still judged correctly that the network was doing well in general.', 
                        
                                '2018-05-14', 
                        
                                '1920', 
                        
                                'Initial Interview', 
                        
                                '2', 
                        
                                'Kelly Sall, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Right-clicked on tree and looked at Reports menu; selected Dashboard, clicked WAN tab; read ticket list, confused about non-date order; went back to tree and right-clicked to Reports; ran WAN Availability, cancelled; went to Network Details; end. Result: Success with issues.Time on task (TOT): 325 seconds. 

Analysis: Since he''d never used a portal as part of his job, he was unclear on the purpose of the site and tended to click around randomly. He still judged correctly that the network was doing well in general.', 
                                [Date] = '2018-05-14', 
                                [mm] = '1920', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '2', 
                                [Name] = 'Kelly Sall, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec5XF97ajax31p1x';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec63Ibfdv6z48vaF')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec63Ibfdv6z48vaF', 
                        
                                'See screenshots for some confusing interaction flows encountered by Lauren during the live demo session.', 
                        
                                '2018-04-03', 
                        
                                '1560', 
                        
                                'Followup Session', 
                        
                                '4', 
                        
                                'Alexis Pham, Followup Session', 
                        
                                '2014-07-16T00:48:35Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'See screenshots for some confusing interaction flows encountered by Lauren during the live demo session.', 
                                [Date] = '2018-04-03', 
                                [mm] = '1560', 
                                [SessionType] = 'Followup Session', 
                                [OverallFeedbackScore] = '4', 
                                [Name] = 'Alexis Pham, Followup Session', 
                                [createdTime] = '2014-07-16T00:48:35Z'
                        WHERE FeedbackSessionId = 'rec63Ibfdv6z48vaF';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec6PKaf5j9qb7rby')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec6PKaf5j9qb7rby', 
                        
                                'Expanded network tree, clicked on red element; sent to Network Details, examined the list of open tickets, "Just Austin has problems, HQ is up with problems." Correct. Result: Success.TOT: 60 seconds', 
                        
                                '2018-05-16', 
                        
                                '1860', 
                        
                                'Initial Interview', 
                        
                                '3', 
                        
                                'Harley Holbrook, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Expanded network tree, clicked on red element; sent to Network Details, examined the list of open tickets, "Just Austin has problems, HQ is up with problems." Correct. Result: Success.TOT: 60 seconds', 
                                [Date] = '2018-05-16', 
                                [mm] = '1860', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '3', 
                                [Name] = 'Harley Holbrook, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec6PKaf5j9qb7rby';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recR4J1acjcBdckeE')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recR4J1acjcBdckeE', 
                        
                                'Clicked Home/Dashboard, viewed Combined tab; saw the Health icon but interpreted the arrow pointing to the current health level as the desired health level (opposite of design); commented that she wasnâ€™t sure of the context of health, what was the definition, and that â€œinfrastructureâ€ meant â€œeverythingâ€ to her regardless of tab context; after clicking to several other Dashboard tabs she noticed the health level arrow changing and corrected her interpretation, commented that the tickets listed in each tab didnâ€™t seem to match tab names; correctly judged network health.', 
                        
                                '2018-05-21', 
                        
                                '1620', 
                        
                                'Initial Interview', 
                        
                                '4', 
                        
                                'Skyler Xu, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Clicked Home/Dashboard, viewed Combined tab; saw the Health icon but interpreted the arrow pointing to the current health level as the desired health level (opposite of design); commented that she wasnâ€™t sure of the context of health, what was the definition, and that â€œinfrastructureâ€ meant â€œeverythingâ€ to her regardless of tab context; after clicking to several other Dashboard tabs she noticed the health level arrow changing and corrected her interpretation, commented that the tickets listed in each tab didnâ€™t seem to match tab names; correctly judged network health.', 
                                [Date] = '2018-05-21', 
                                [mm] = '1620', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '4', 
                                [Name] = 'Skyler Xu, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'recR4J1acjcBdckeE';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recS2G8fbyYAc3uby')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recS2G8fbyYAc3uby', 
                        
                                'Give a high priority to re-implementing the legacy Inventory screen in order to eliminate confusing navigation

RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network treeâ€”Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab
', 
                        
                                '2018-05-02', 
                        
                                '1560', 
                        
                                'Initial Interview', 
                        
                                '1', 
                        
                                'Lee Szabo, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Give a high priority to re-implementing the legacy Inventory screen in order to eliminate confusing navigation

RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network treeâ€”Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab
', 
                                [Date] = '2018-05-02', 
                                [mm] = '1560', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '1', 
                                [Name] = 'Lee Szabo, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'recS2G8fbyYAc3uby';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recWSDed2p7vadxax')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recWSDed2p7vadxax', 
                        
                                'Expanded network tree manually, clicked on Austin (red); viewed ticket list but did not click for details; clicked on Home, read recent ticket list; correctly identified which sites were up, with and without problems as well as differentiating between fail and caution tickets. Result: Success. TOT: 95 seconds.', 
                        
                                '2018-04-23', 
                        
                                '720', 
                        
                                'Initial Interview', 
                        
                                '3', 
                        
                                'Sandy Hagen, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Expanded network tree manually, clicked on Austin (red); viewed ticket list but did not click for details; clicked on Home, read recent ticket list; correctly identified which sites were up, with and without problems as well as differentiating between fail and caution tickets. Result: Success. TOT: 95 seconds.', 
                                [Date] = '2018-04-23', 
                                [mm] = '720', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '3', 
                                [Name] = 'Sandy Hagen, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'recWSDed2p7vadxax';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recWTA284scx4bpgE')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recWTA284scx4bpgE', 
                        
                                'RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                        
                                '2018-04-06', 
                        
                                '1500', 
                        
                                'Initial Interview', 
                        
                                '2', 
                        
                                'Jess Patel, Initial Interview', 
                        
                                '2014-07-16T00:37:13Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                                [Date] = '2018-04-06', 
                                [mm] = '1500', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '2', 
                                [Name] = 'Jess Patel, Initial Interview', 
                                [createdTime] = '2014-07-16T00:37:13Z'
                        WHERE FeedbackSessionId = 'recWTA284scx4bpgE';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recXPI6d2t6yd2n5J')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recXPI6d2t6yd2n5J', 
                        
                                'Fix icon/feedback for grid column sorting

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                        
                                '2018-04-11', 
                        
                                '2460', 
                        
                                'Followup Session', 
                        
                                '3', 
                        
                                'Jess Patel, Followup Session', 
                        
                                '2014-07-16T00:51:03Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Fix icon/feedback for grid column sorting

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                                [Date] = '2018-04-11', 
                                [mm] = '2460', 
                                [SessionType] = 'Followup Session', 
                                [OverallFeedbackScore] = '3', 
                                [Name] = 'Jess Patel, Followup Session', 
                                [createdTime] = '2014-07-16T00:51:03Z'
                        WHERE FeedbackSessionId = 'recXPI6d2t6yd2n5J';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recY3O0i5p9v9dw1w')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recY3O0i5p9v9dw1w', 
                        
                                'Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)', 
                        
                                '2018-04-09', 
                        
                                '3000', 
                        
                                'Initial Interview', 
                        
                                '4', 
                        
                                'Peyton Devereaux, Initial Interview', 
                        
                                '2014-07-16T00:37:13Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)', 
                                [Date] = '2018-04-09', 
                                [mm] = '3000', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '4', 
                                [Name] = 'Peyton Devereaux, Initial Interview', 
                                [createdTime] = '2014-07-16T00:37:13Z'
                        WHERE FeedbackSessionId = 'recY3O0i5p9v9dw1w';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recYQL552yYzb4p4G')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recYQL552yYzb4p4G', 
                        
                                'Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)



', 
                        
                                '2018-04-13', 
                        
                                '1080', 
                        
                                'Initial Interview', 
                        
                                '5', 
                        
                                'Pat Everett, Initial Interview', 
                        
                                '2014-07-16T00:47:28Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)



', 
                                [Date] = '2018-04-13', 
                                [mm] = '1080', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '5', 
                                [Name] = 'Pat Everett, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:28Z'
                        WHERE FeedbackSessionId = 'recYQL552yYzb4p4G';
                    END
                
            
 

-- ADD RELATIONSHIPS
   
        
        
        
        
        
            -- ADD ALL DATA FOR: Person
            --  STATIC: 
            --  Rows: 11
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'rec04zjEFruvgl4PJ')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'rec04zjEFruvgl4PJ', 
                        
                                'Alexis Pham', 
                        
                                'Product', 
                        
                                'recU3K1icuZrc3veu', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Alexis', 
                        
                                'Pham', 
                        
                                '(444) 444-4444', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Alexis Pham', 
                                [JobRoles] = 'Product', 
                                [Company] = 'recU3K1icuZrc3veu', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Alexis', 
                                [LastName] = 'Pham', 
                                [Phone] = '(444) 444-4444', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'rec04zjEFruvgl4PJ';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'rec7Up8MLCy1CncWa')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'rec7Up8MLCy1CncWa', 
                        
                                'Peyton Devereaux', 
                        
                                'Engineering', 
                        
                                'rec3SH7ihu4xZgr4C', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Peyton', 
                        
                                'Devereaux', 
                        
                                '(222) 222-2222', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Peyton Devereaux', 
                                [JobRoles] = 'Engineering', 
                                [Company] = 'rec3SH7ihu4xZgr4C', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Peyton', 
                                [LastName] = 'Devereaux', 
                                [Phone] = '(222) 222-2222', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'rec7Up8MLCy1CncWa';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'rec9eyeSDx892lrdM')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'rec9eyeSDx892lrdM', 
                        
                                'Kelly Sall', 
                        
                                'IT', 
                        
                                'rec6TK4gbxbBYdo6E', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Kelly', 
                        
                                'Sall', 
                        
                                '(111) 111-1111', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Kelly Sall', 
                                [JobRoles] = 'IT', 
                                [Company] = 'rec6TK4gbxbBYdo6E', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Kelly', 
                                [LastName] = 'Sall', 
                                [Phone] = '(111) 111-1111', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'rec9eyeSDx892lrdM';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recGVbAlg7H3TewyK')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recGVbAlg7H3TewyK', 
                        
                                'Sandy Hagen', 
                        
                                'Business Analyst', 
                        
                                'rec6TK4gbxbBYdo6E', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Sandy', 
                        
                                'Hagen', 
                        
                                '(999) 999-9999', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Sandy Hagen', 
                                [JobRoles] = 'Business Analyst', 
                                [Company] = 'rec6TK4gbxbBYdo6E', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Sandy', 
                                [LastName] = 'Hagen', 
                                [Phone] = '(999) 999-9999', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recGVbAlg7H3TewyK';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recHkaDb7LOazgtnv')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recHkaDb7LOazgtnv', 
                        
                                'Pat Everett', 
                        
                                'Marketing', 
                        
                                'rec4RLc37n2x88r8w', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Pat', 
                        
                                'Everett', 
                        
                                '(777) 777-7777', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Pat Everett', 
                                [JobRoles] = 'Marketing', 
                                [Company] = 'rec4RLc37n2x88r8w', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Pat', 
                                [LastName] = 'Everett', 
                                [Phone] = '(777) 777-7777', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recHkaDb7LOazgtnv';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recJIJj6c5An9E95y')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recJIJj6c5An9E95y', 
                        
                                'Lee Szabo', 
                        
                                'Operations', 
                        
                                'rec1VDd35oaA64o8B', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Lee', 
                        
                                'Szabo', 
                        
                                '(000) 000-0000', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Lee Szabo', 
                                [JobRoles] = 'Operations', 
                                [Company] = 'rec1VDd35oaA64o8B', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Lee', 
                                [LastName] = 'Szabo', 
                                [Phone] = '(000) 000-0000', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recJIJj6c5An9E95y';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recKmtw8ckT7nhsEi')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recKmtw8ckT7nhsEi', 
                        
                                'Quinn Nguyen', 
                        
                                'Marketing', 
                        
                                'recU1A4f2ubxYfucy', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Quinn', 
                        
                                'Nguyen', 
                        
                                '(888) 888-8888', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Quinn Nguyen', 
                                [JobRoles] = 'Marketing', 
                                [Company] = 'recU1A4f2ubxYfucy', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Quinn', 
                                [LastName] = 'Nguyen', 
                                [Phone] = '(888) 888-8888', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recKmtw8ckT7nhsEi';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recTkELBeQMhm9FjE')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recTkELBeQMhm9FjE', 
                        
                                'Jess Patel', 
                        
                                'Support', 
                        
                                'recU3K1icuZrc3veu', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Jess', 
                        
                                'Patel', 
                        
                                '(666) 666-6666', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Jess Patel', 
                                [JobRoles] = 'Support', 
                                [Company] = 'recU3K1icuZrc3veu', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Jess', 
                                [LastName] = 'Patel', 
                                [Phone] = '(666) 666-6666', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recTkELBeQMhm9FjE';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recd8fpwPlBavJ2oJ')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recd8fpwPlBavJ2oJ', 
                        
                                'Harley Holbrook', 
                        
                                'Product', 
                        
                                'rec3SH7ihu4xZgr4C', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Harley', 
                        
                                'Holbrook', 
                        
                                '(555) 555-5555', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Harley Holbrook', 
                                [JobRoles] = 'Product', 
                                [Company] = 'rec3SH7ihu4xZgr4C', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Harley', 
                                [LastName] = 'Holbrook', 
                                [Phone] = '(555) 555-5555', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recd8fpwPlBavJ2oJ';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'recgvganALTn21vml')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'recgvganALTn21vml', 
                        
                                'Robin Jaffe', 
                        
                                'Product', 
                        
                                'rec6TK4gbxbBYdo6E', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Robin', 
                        
                                'Jaffe', 
                        
                                '(333) 333-3333', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Robin Jaffe', 
                                [JobRoles] = 'Product', 
                                [Company] = 'rec6TK4gbxbBYdo6E', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Robin', 
                                [LastName] = 'Jaffe', 
                                [Phone] = '(333) 333-3333', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'recgvganALTn21vml';
                    END
                

                    IF NOT EXISTS (SELECT PersonId FROM Person WHERE PersonId = 'reclkfineMvdbG6N5')
                    BEGIN
                        INSERT INTO [Person] ([PersonId] , [Name] , [JobRoles] , [Company] , [LinkedInProfile] , [FirstName] , [LastName] , [Phone] , [createdTime] ) VALUES (
                        
                                'reclkfineMvdbG6N5', 
                        
                                'Skyler Xu', 
                        
                                'Engineering', 
                        
                                'rec1VDd35oaA64o8B', 
                        
                                'https://www.linkedin.com/fakeaddress', 
                        
                                'Skyler', 
                        
                                'Xu', 
                        
                                '(111) 111-1111', 
                        
                                '2016-05-16T23:19:23Z');
                    END ELSE BEGIN
                        UPDATE  [Person] 
                            SET 
                                [Name] = 'Skyler Xu', 
                                [JobRoles] = 'Engineering', 
                                [Company] = 'rec1VDd35oaA64o8B', 
                                [LinkedInProfile] = 'https://www.linkedin.com/fakeaddress', 
                                [FirstName] = 'Skyler', 
                                [LastName] = 'Xu', 
                                [Phone] = '(111) 111-1111', 
                                [createdTime] = '2016-05-16T23:19:23Z'
                        WHERE PersonId = 'reclkfineMvdbG6N5';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Feedback
            --  STATIC: 
            --  Rows: 9
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'rec4WGefhq5A73vcB')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'rec4WGefhq5A73vcB', 
                        
                                'Large table support', 
                        
                                '1', 
                        
                                '2014-09-25T23:40:57Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Large table support', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:40:57Z'
                        WHERE FeedbackId = 'rec4WGefhq5A73vcB';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'rec5PI5e5o7o68new')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'rec5PI5e5o7o68new', 
                        
                                'Slow loading time', 
                        
                                '2', 
                        
                                '2014-07-16T00:58:30Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Slow loading time', 
                                [Sessions] = '2', 
                                [createdTime] = '2014-07-16T00:58:30Z'
                        WHERE FeedbackId = 'rec5PI5e5o7o68new';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recRZNa89kbu26ufF')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recRZNa89kbu26ufF', 
                        
                                'Mobile app', 
                        
                                '2', 
                        
                                '2014-07-16T00:17:01Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Mobile app', 
                                [Sessions] = '2', 
                                [createdTime] = '2014-07-16T00:17:01Z'
                        WHERE FeedbackId = 'recRZNa89kbu26ufF';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recTPK7ccs3CcaxaE')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recTPK7ccs3CcaxaE', 
                        
                                'Inline document previews', 
                        
                                '3', 
                        
                                '2014-07-16T00:17:01Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Inline document previews', 
                                [Sessions] = '3', 
                                [createdTime] = '2014-07-16T00:17:01Z'
                        WHERE FeedbackId = 'recTPK7ccs3CcaxaE';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recUPA853kbx27paH')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recUPA853kbx27paH', 
                        
                                'Importing spreadsheets', 
                        
                                '1', 
                        
                                '2014-09-25T23:40:43Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Importing spreadsheets', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:40:43Z'
                        WHERE FeedbackId = 'recUPA853kbx27paH';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recUSNb63m0t17ldI')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recUSNb63m0t17ldI', 
                        
                                'Better version control', 
                        
                                '3', 
                        
                                '2014-07-16T00:17:01Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Better version control', 
                                [Sessions] = '3', 
                                [createdTime] = '2014-07-16T00:17:01Z'
                        WHERE FeedbackId = 'recUSNb63m0t17ldI';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recWUF5bhr4x1ao8A')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recWUF5bhr4x1ao8A', 
                        
                                'Color coding', 
                        
                                '1', 
                        
                                '2014-09-25T23:41:25Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Color coding', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:41:25Z'
                        WHERE FeedbackId = 'recWUF5bhr4x1ao8A';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recWXB2i7ndC29kcu')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recWXB2i7ndC29kcu', 
                        
                                'Themes and customization', 
                        
                                '1', 
                        
                                '2014-09-25T23:40:42Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Themes and customization', 
                                [Sessions] = '1', 
                                [createdTime] = '2014-09-25T23:40:42Z'
                        WHERE FeedbackId = 'recWXB2i7ndC29kcu';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackId FROM Feedback WHERE FeedbackId = 'recWYNe87p7w2ev9x')
                    BEGIN
                        INSERT INTO [Feedback] ([FeedbackId] , [Name] , [Sessions] , [createdTime] ) VALUES (
                        
                                'recWYNe87p7w2ev9x', 
                        
                                'Better search', 
                        
                                '2', 
                        
                                '2014-09-25T23:41:08Z');
                    END ELSE BEGIN
                        UPDATE  [Feedback] 
                            SET 
                                [Name] = 'Better search', 
                                [Sessions] = '2', 
                                [createdTime] = '2014-09-25T23:41:08Z'
                        WHERE FeedbackId = 'recWYNe87p7w2ev9x';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Company
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec1VDd35oaA64o8B')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec1VDd35oaA64o8B', 
                        
                                'Halibutron', 
                        
                                '1000+', 
                        
                                'An American multinational corporation headquartered in Texas, with many subsidiaries. The majority of its business relates to petroleum and natural gas extraction.', 
                        
                                '2014-07-16T00:16:58Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Halibutron', 
                                [CompanySize] = '1000+', 
                                [About] = 'An American multinational corporation headquartered in Texas, with many subsidiaries. The majority of its business relates to petroleum and natural gas extraction.', 
                                [createdTime] = '2014-07-16T00:16:58Z'
                        WHERE CompanyId = 'rec1VDd35oaA64o8B';
                    END
                

                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec3SH7ihu4xZgr4C')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec3SH7ihu4xZgr4C', 
                        
                                'FireBasket', 
                        
                                '0-24', 
                        
                                'FireBasket is an on-demand hot sauce delivery service that brings you hot sauce wherever you want, whenever you wantâ€”customized to your exact taste buds. No longer will you have to carry hot sauce in your bag.', 
                        
                                '2014-07-23T00:37:59Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'FireBasket', 
                                [CompanySize] = '0-24', 
                                [About] = 'FireBasket is an on-demand hot sauce delivery service that brings you hot sauce wherever you want, whenever you wantâ€”customized to your exact taste buds. No longer will you have to carry hot sauce in your bag.', 
                                [createdTime] = '2014-07-23T00:37:59Z'
                        WHERE CompanyId = 'rec3SH7ihu4xZgr4C';
                    END
                

                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec4RLc37n2x88r8w')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec4RLc37n2x88r8w', 
                        
                                'Hot Take Media Group', 
                        
                                '200-999', 
                        
                                'An online social news aggregator and listicle production enterprise.', 
                        
                                '2014-09-25T23:57:10Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Hot Take Media Group', 
                                [CompanySize] = '200-999', 
                                [About] = 'An online social news aggregator and listicle production enterprise.', 
                                [createdTime] = '2014-09-25T23:57:10Z'
                        WHERE CompanyId = 'rec4RLc37n2x88r8w';
                    END
                

                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'rec6TK4gbxbBYdo6E')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'rec6TK4gbxbBYdo6E', 
                        
                                'Self-employed', 
                        
                                '0-24', 
                        
                                'Be your own boss.', 
                        
                                '2014-07-16T00:16:58Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Self-employed', 
                                [CompanySize] = '0-24', 
                                [About] = 'Be your own boss.', 
                                [createdTime] = '2014-07-16T00:16:58Z'
                        WHERE CompanyId = 'rec6TK4gbxbBYdo6E';
                    END
                

                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'recU1A4f2ubxYfucy')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'recU1A4f2ubxYfucy', 
                        
                                'Lyons, Tiger & Behr', 
                        
                                '1000+', 
                        
                                'A global, New-York based advertising agency which was responsible for many of the 20th century''s most iconic advertising campaigns.', 
                        
                                '2014-07-23T00:38:03Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Lyons, Tiger & Behr', 
                                [CompanySize] = '1000+', 
                                [About] = 'A global, New-York based advertising agency which was responsible for many of the 20th century''s most iconic advertising campaigns.', 
                                [createdTime] = '2014-07-23T00:38:03Z'
                        WHERE CompanyId = 'recU1A4f2ubxYfucy';
                    END
                

                    IF NOT EXISTS (SELECT CompanyId FROM Company WHERE CompanyId = 'recU3K1icuZrc3veu')
                    BEGIN
                        INSERT INTO [Company] ([CompanyId] , [Name] , [CompanySize] , [About] , [createdTime] ) VALUES (
                        
                                'recU3K1icuZrc3veu', 
                        
                                'Triaria', 
                        
                                '1000+', 
                        
                                'A multinational investment banking firm providing asset management, securities, and other financial services to large businesses.', 
                        
                                '2014-07-16T00:16:58Z');
                    END ELSE BEGIN
                        UPDATE  [Company] 
                            SET 
                                [Name] = 'Triaria', 
                                [CompanySize] = '1000+', 
                                [About] = 'A multinational investment banking firm providing asset management, securities, and other financial services to large businesses.', 
                                [createdTime] = '2014-07-16T00:16:58Z'
                        WHERE CompanyId = 'recU3K1icuZrc3veu';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: FeedbackSession
            --  STATIC: 
            --  Rows: 13
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec3SDe3bo3yYaw4A')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec3SDe3bo3yYaw4A', 
                        
                                'User flow: Right-clicked on tree, selected Reports; sent to Reports; right-clicked on the WAN product icon in the Filters section; then used Reports menu to select WAN Availability report. Result: Success with issues.TOT: 125 seconds.Analysis: He assumed that he could select a particular network segment on to which to run the WAN report, but since the tree was hidden in Reports, he tried to click the WAN filter button. This was reinforced by being able to right-click on the treeâ€”he thought he was running the report on just that element. When presented with the concept of business views (custom trees), he said that would satisfy his need for running reports on discrete network segments', 
                        
                                'recgvganALTn21vml', 
                        
                                '2018-05-28', 
                        
                                '1080', 
                        
                                'Initial Interview', 
                        
                                '1', 
                        
                                'Robin Jaffe, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'User flow: Right-clicked on tree, selected Reports; sent to Reports; right-clicked on the WAN product icon in the Filters section; then used Reports menu to select WAN Availability report. Result: Success with issues.TOT: 125 seconds.Analysis: He assumed that he could select a particular network segment on to which to run the WAN report, but since the tree was hidden in Reports, he tried to click the WAN filter button. This was reinforced by being able to right-click on the treeâ€”he thought he was running the report on just that element. When presented with the concept of business views (custom trees), he said that would satisfy his need for running reports on discrete network segments', 
                                [PersonInterviewed] = 'recgvganALTn21vml', 
                                [Date] = '2018-05-28', 
                                [mm] = '1080', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '1', 
                                [Name] = 'Robin Jaffe, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec3SDe3bo3yYaw4A';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec4ZO0bhs3v52paI')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec4ZO0bhs3v52paI', 
                        
                                'Had already visited Reports so he went directly there and correctly selected the WAN Availability report.', 
                        
                                'recKmtw8ckT7nhsEi', 
                        
                                '2018-05-24', 
                        
                                '1800', 
                        
                                'Initial Interview', 
                        
                                '5', 
                        
                                'Quinn Nguyen, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Had already visited Reports so he went directly there and correctly selected the WAN Availability report.', 
                                [PersonInterviewed] = 'recKmtw8ckT7nhsEi', 
                                [Date] = '2018-05-24', 
                                [mm] = '1800', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '5', 
                                [Name] = 'Quinn Nguyen, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec4ZO0bhs3v52paI';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec5UC9b5y4ydbmbG')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec5UC9b5y4ydbmbG', 
                        
                                'Clicked to Reports; selected WAN Availability report, ran it; commented that if the report ran more than a minute, she would click the â€œNotify on Completionâ€ button. Result: Success. TOT: 20 seconds.', 
                        
                                'rec04zjEFruvgl4PJ', 
                        
                                '2018-03-30', 
                        
                                '1800', 
                        
                                'Initial Interview', 
                        
                                '1', 
                        
                                'Alexis Pham, Initial Interview', 
                        
                                '2014-07-16T00:37:13Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Clicked to Reports; selected WAN Availability report, ran it; commented that if the report ran more than a minute, she would click the â€œNotify on Completionâ€ button. Result: Success. TOT: 20 seconds.', 
                                [PersonInterviewed] = 'rec04zjEFruvgl4PJ', 
                                [Date] = '2018-03-30', 
                                [mm] = '1800', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '1', 
                                [Name] = 'Alexis Pham, Initial Interview', 
                                [createdTime] = '2014-07-16T00:37:13Z'
                        WHERE FeedbackSessionId = 'rec5UC9b5y4ydbmbG';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec5XF97ajax31p1x')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec5XF97ajax31p1x', 
                        
                                'Right-clicked on tree and looked at Reports menu; selected Dashboard, clicked WAN tab; read ticket list, confused about non-date order; went back to tree and right-clicked to Reports; ran WAN Availability, cancelled; went to Network Details; end. Result: Success with issues.Time on task (TOT): 325 seconds. 

Analysis: Since he''d never used a portal as part of his job, he was unclear on the purpose of the site and tended to click around randomly. He still judged correctly that the network was doing well in general.', 
                        
                                'rec9eyeSDx892lrdM', 
                        
                                '2018-05-14', 
                        
                                '1920', 
                        
                                'Initial Interview', 
                        
                                '2', 
                        
                                'Kelly Sall, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Right-clicked on tree and looked at Reports menu; selected Dashboard, clicked WAN tab; read ticket list, confused about non-date order; went back to tree and right-clicked to Reports; ran WAN Availability, cancelled; went to Network Details; end. Result: Success with issues.Time on task (TOT): 325 seconds. 

Analysis: Since he''d never used a portal as part of his job, he was unclear on the purpose of the site and tended to click around randomly. He still judged correctly that the network was doing well in general.', 
                                [PersonInterviewed] = 'rec9eyeSDx892lrdM', 
                                [Date] = '2018-05-14', 
                                [mm] = '1920', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '2', 
                                [Name] = 'Kelly Sall, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec5XF97ajax31p1x';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec63Ibfdv6z48vaF')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec63Ibfdv6z48vaF', 
                        
                                'See screenshots for some confusing interaction flows encountered by Lauren during the live demo session.', 
                        
                                'rec04zjEFruvgl4PJ', 
                        
                                '2018-04-03', 
                        
                                '1560', 
                        
                                'Followup Session', 
                        
                                '4', 
                        
                                'Alexis Pham, Followup Session', 
                        
                                '2014-07-16T00:48:35Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'See screenshots for some confusing interaction flows encountered by Lauren during the live demo session.', 
                                [PersonInterviewed] = 'rec04zjEFruvgl4PJ', 
                                [Date] = '2018-04-03', 
                                [mm] = '1560', 
                                [SessionType] = 'Followup Session', 
                                [OverallFeedbackScore] = '4', 
                                [Name] = 'Alexis Pham, Followup Session', 
                                [createdTime] = '2014-07-16T00:48:35Z'
                        WHERE FeedbackSessionId = 'rec63Ibfdv6z48vaF';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'rec6PKaf5j9qb7rby')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'rec6PKaf5j9qb7rby', 
                        
                                'Expanded network tree, clicked on red element; sent to Network Details, examined the list of open tickets, "Just Austin has problems, HQ is up with problems." Correct. Result: Success.TOT: 60 seconds', 
                        
                                'recd8fpwPlBavJ2oJ', 
                        
                                '2018-05-16', 
                        
                                '1860', 
                        
                                'Initial Interview', 
                        
                                '3', 
                        
                                'Harley Holbrook, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Expanded network tree, clicked on red element; sent to Network Details, examined the list of open tickets, "Just Austin has problems, HQ is up with problems." Correct. Result: Success.TOT: 60 seconds', 
                                [PersonInterviewed] = 'recd8fpwPlBavJ2oJ', 
                                [Date] = '2018-05-16', 
                                [mm] = '1860', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '3', 
                                [Name] = 'Harley Holbrook, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'rec6PKaf5j9qb7rby';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recR4J1acjcBdckeE')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recR4J1acjcBdckeE', 
                        
                                'Clicked Home/Dashboard, viewed Combined tab; saw the Health icon but interpreted the arrow pointing to the current health level as the desired health level (opposite of design); commented that she wasnâ€™t sure of the context of health, what was the definition, and that â€œinfrastructureâ€ meant â€œeverythingâ€ to her regardless of tab context; after clicking to several other Dashboard tabs she noticed the health level arrow changing and corrected her interpretation, commented that the tickets listed in each tab didnâ€™t seem to match tab names; correctly judged network health.', 
                        
                                'reclkfineMvdbG6N5', 
                        
                                '2018-05-21', 
                        
                                '1620', 
                        
                                'Initial Interview', 
                        
                                '4', 
                        
                                'Skyler Xu, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Clicked Home/Dashboard, viewed Combined tab; saw the Health icon but interpreted the arrow pointing to the current health level as the desired health level (opposite of design); commented that she wasnâ€™t sure of the context of health, what was the definition, and that â€œinfrastructureâ€ meant â€œeverythingâ€ to her regardless of tab context; after clicking to several other Dashboard tabs she noticed the health level arrow changing and corrected her interpretation, commented that the tickets listed in each tab didnâ€™t seem to match tab names; correctly judged network health.', 
                                [PersonInterviewed] = 'reclkfineMvdbG6N5', 
                                [Date] = '2018-05-21', 
                                [mm] = '1620', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '4', 
                                [Name] = 'Skyler Xu, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'recR4J1acjcBdckeE';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recS2G8fbyYAc3uby')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recS2G8fbyYAc3uby', 
                        
                                'Give a high priority to re-implementing the legacy Inventory screen in order to eliminate confusing navigation

RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network treeâ€”Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab
', 
                        
                                'recJIJj6c5An9E95y', 
                        
                                '2018-05-02', 
                        
                                '1560', 
                        
                                'Initial Interview', 
                        
                                '1', 
                        
                                'Lee Szabo, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Give a high priority to re-implementing the legacy Inventory screen in order to eliminate confusing navigation

RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network treeâ€”Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab
', 
                                [PersonInterviewed] = 'recJIJj6c5An9E95y', 
                                [Date] = '2018-05-02', 
                                [mm] = '1560', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '1', 
                                [Name] = 'Lee Szabo, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'recS2G8fbyYAc3uby';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recWSDed2p7vadxax')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recWSDed2p7vadxax', 
                        
                                'Expanded network tree manually, clicked on Austin (red); viewed ticket list but did not click for details; clicked on Home, read recent ticket list; correctly identified which sites were up, with and without problems as well as differentiating between fail and caution tickets. Result: Success. TOT: 95 seconds.', 
                        
                                'recGVbAlg7H3TewyK', 
                        
                                '2018-04-23', 
                        
                                '720', 
                        
                                'Initial Interview', 
                        
                                '3', 
                        
                                'Sandy Hagen, Initial Interview', 
                        
                                '2014-07-16T00:47:30Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Expanded network tree manually, clicked on Austin (red); viewed ticket list but did not click for details; clicked on Home, read recent ticket list; correctly identified which sites were up, with and without problems as well as differentiating between fail and caution tickets. Result: Success. TOT: 95 seconds.', 
                                [PersonInterviewed] = 'recGVbAlg7H3TewyK', 
                                [Date] = '2018-04-23', 
                                [mm] = '720', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '3', 
                                [Name] = 'Sandy Hagen, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:30Z'
                        WHERE FeedbackSessionId = 'recWSDed2p7vadxax';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recWTA284scx4bpgE')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recWTA284scx4bpgE', 
                        
                                'RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                        
                                'recTkELBeQMhm9FjE', 
                        
                                '2018-04-06', 
                        
                                '1500', 
                        
                                'Initial Interview', 
                        
                                '2', 
                        
                                'Jess Patel, Initial Interview', 
                        
                                '2014-07-16T00:37:13Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'RenameÂ SearchÂ tab toÂ SearchesÂ to get users to see the search functionality as part of the portal data, not the portal itself (see Task 9 details below) (DONE)

Fix icon/feedback for grid column sorting (DONE)

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                                [PersonInterviewed] = 'recTkELBeQMhm9FjE', 
                                [Date] = '2018-04-06', 
                                [mm] = '1500', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '2', 
                                [Name] = 'Jess Patel, Initial Interview', 
                                [createdTime] = '2014-07-16T00:37:13Z'
                        WHERE FeedbackSessionId = 'recWTA284scx4bpgE';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recXPI6d2t6yd2n5J')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recXPI6d2t6yd2n5J', 
                        
                                'Fix icon/feedback for grid column sorting

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                        
                                'recTkELBeQMhm9FjE', 
                        
                                '2018-04-11', 
                        
                                '2460', 
                        
                                'Followup Session', 
                        
                                '3', 
                        
                                'Jess Patel, Followup Session', 
                        
                                '2014-07-16T00:51:03Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Fix icon/feedback for grid column sorting

Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab', 
                                [PersonInterviewed] = 'recTkELBeQMhm9FjE', 
                                [Date] = '2018-04-11', 
                                [mm] = '2460', 
                                [SessionType] = 'Followup Session', 
                                [OverallFeedbackScore] = '3', 
                                [Name] = 'Jess Patel, Followup Session', 
                                [createdTime] = '2014-07-16T00:51:03Z'
                        WHERE FeedbackSessionId = 'recXPI6d2t6yd2n5J';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recY3O0i5p9v9dw1w')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recY3O0i5p9v9dw1w', 
                        
                                'Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)', 
                        
                                'rec7Up8MLCy1CncWa', 
                        
                                '2018-04-09', 
                        
                                '3000', 
                        
                                'Initial Interview', 
                        
                                '4', 
                        
                                'Peyton Devereaux, Initial Interview', 
                        
                                '2014-07-16T00:37:13Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Add more right-click links to the network tree--Support tab, Report a Problem form, Request Service form

Fix look & feel of tree filter buttons so they do not resemble shortcut links

Add default â€œNo ticketsâ€ text to Dashboard ticket lists (see Task 9/User 4 note below)

Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)', 
                                [PersonInterviewed] = 'rec7Up8MLCy1CncWa', 
                                [Date] = '2018-04-09', 
                                [mm] = '3000', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '4', 
                                [Name] = 'Peyton Devereaux, Initial Interview', 
                                [createdTime] = '2014-07-16T00:37:13Z'
                        WHERE FeedbackSessionId = 'recY3O0i5p9v9dw1w';
                    END
                

                    IF NOT EXISTS (SELECT FeedbackSessionId FROM FeedbackSession WHERE FeedbackSessionId = 'recYQL552yYzb4p4G')
                    BEGIN
                        INSERT INTO [FeedbackSession] ([FeedbackSessionId] , [Notes] , [PersonInterviewed] , [Date] , [mm] , [SessionType] , [OverallFeedbackScore] , [Name] , [createdTime] ) VALUES (
                        
                                'recYQL552yYzb4p4G', 
                        
                                'Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)



', 
                        
                                'recHkaDb7LOazgtnv', 
                        
                                '2018-04-13', 
                        
                                '1080', 
                        
                                'Initial Interview', 
                        
                                '5', 
                        
                                'Pat Everett, Initial Interview', 
                        
                                '2014-07-16T00:47:28Z');
                    END ELSE BEGIN
                        UPDATE  [FeedbackSession] 
                            SET 
                                [Notes] = 'Explore the possibility of adding a Search Trouble Tickets link on the Trouble Tickets sub-tab

Revisit Dashboard iconography to see if thereâ€™s a better way of displaying status

Even though business views was not part of this test, it came up several times in the context of reports and status. Add an interface for creating business views as soon as possible since it is clear that business views will greatly increase the portal functionality for all sets of users.

Consider making the Dashboard sub-tab the default home screen (discuss with Business)



', 
                                [PersonInterviewed] = 'recHkaDb7LOazgtnv', 
                                [Date] = '2018-04-13', 
                                [mm] = '1080', 
                                [SessionType] = 'Initial Interview', 
                                [OverallFeedbackScore] = '5', 
                                [Name] = 'Pat Everett, Initial Interview', 
                                [createdTime] = '2014-07-16T00:47:28Z'
                        WHERE FeedbackSessionId = 'recYQL552yYzb4p4G';
                    END
                
            
 
                