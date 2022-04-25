
CREATE TABLE USER_INFO (
	SUID	VARCHAR(18)	NOT NULL,
	[USER_ID]	VARCHAR(20)	NOT NULL,
	NAME	VARCHAR(10)	NOT NULL,
	PHONE	VARCHAR(15)	NOT NULL,
	PROFILE_URL	VARCHAR(100)	NULL,
	FCM_TOKEN	CHAR(163)	NULL
);

ALTER TABLE USER_INFO ADD CONSTRAINT PK_USER PRIMARY KEY NONCLUSTERED (
	SUID
);

-- UserID 검색.
CREATE NONCLUSTERED INDEX [NC1_USER_COL_USERID] ON USER_INFO ([USER_ID])

-- 핸드폰 검색.
CREATE NONCLUSTERED INDEX [NC2_USER_COL_PHONE] ON USER_INFO ([PHONE])



EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 유니크 ID (MPS+년+월+일+핸드폰번호)' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'한글, 숫자, 영문으로 최대 X자 까지 입력 가능' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'USER_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 이름  최대 5자 까지 가능' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'NAME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 핸드폰 번호' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'PHONE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 프로필 사진 URL' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'PROFILE_URL';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FCM 토큰' , @level0type=N'SCHEMA',@level0name=N'dbo',
 @level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'FCM_TOKEN';
