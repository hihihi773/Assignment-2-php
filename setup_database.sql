IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'PHP_project')
BEGIN
    CREATE DATABASE [PHP_project];
END
GO


USE [PHP_project];
GO

-- Check if the users table exists and create if it does not
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'users' AND type = 'U')
BEGIN
    CREATE TABLE [users] (
        [id] INT IDENTITY(1,1) PRIMARY KEY,
        [full_name] NVARCHAR(255) NOT NULL,
        [email] NVARCHAR(255) NOT NULL,
        [password] NVARCHAR(255) NOT NULL
    );
END
GO

-- Insert initial data
INSERT INTO [users] ([full_name], [email], [password]) VALUES
(N'himanshu', 'dhimasnhu238@gmail.com', '1234qwer'),
(N'Jane Smith', 'jane.smith@example.com', 'password456');
GO
