CREATE TABLE [dbo].[ClientSecrets] (
    [Username]     VARCHAR (50) NOT NULL PRIMARY KEY CLUSTERED ([Username] ASC),
    [PasswordHash] BINARY (50)  NOT NULL,
    [PasswordSalt] CHAR (10)    NOT NULL,
    [CreatedAt]    DATETIME     CONSTRAINT [DEFAULT_ClientSecrets_CreatedAt] DEFAULT GetDate() NOT NULL,
    [UpdatedAt]    DATETIME     CONSTRAINT [DEFAULT_ClientSecrets_UpdatedAt] DEFAULT GetDate() NOT NULL
);
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'DateTime at which the client''s credentials were first saved', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ClientSecrets', @level2type = N'COLUMN', @level2name = N'CreatedAt';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hash of the password and salt of a registered client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ClientSecrets', @level2type = N'COLUMN', @level2name = N'PasswordHash';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Salt appended to the password of a registered client before hashing', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ClientSecrets', @level2type = N'COLUMN', @level2name = N'PasswordSalt';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'DateTime at which the client''s credentials were last updated', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ClientSecrets', @level2type = N'COLUMN', @level2name = N'UpdatedAt';
GO


EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique username of a registered client', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ClientSecrets', @level2type = N'COLUMN', @level2name = N'Username';
GO

