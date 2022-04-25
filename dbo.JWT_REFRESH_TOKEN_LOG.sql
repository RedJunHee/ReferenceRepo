
CREATE TABLE JWT_REFRESH_TOKEN_LOG (
	USER_SUID	VARCHAR(18)	NOT NULL,
	REFRESH_TOKEN	VARCHAR(300)	NOT NULL
);

ALTER TABLE JWT_REFRESH_TOKEN_LOG ADD CONSTRAINT PK_JWT_REFRESH_TOKEN_LOG PRIMARY KEY NONCLUSTERED (
	USER_SUID
) WITH FILLFACTOR = 90;


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'서비스 유저 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'JWT_REFRESH_TOKEN_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리프레시 토큰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'JWT_REFRESH_TOKEN_LOG', @level2type=N'COLUMN',@level2name=N'REFRESH_TOKEN';
