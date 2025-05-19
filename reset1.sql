IF EXISTS (SELECT * FROM sys.databases WHERE name = 'sqlproject')
BEGIN
    DROP DATABASE sqlproject;
END