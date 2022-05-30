
CREATE TABLE USER_INFO (
	SUID	VARCHAR(18)	NOT NULL,
	[USER_ID]	VARCHAR(20)	NOT NULL,
	NAME	VARCHAR(10)	NOT NULL,
	PHONE	VARCHAR(15)	NOT NULL,
	PROFILE_URL	VARCHAR(100)	NULL,
    PROFILE_PIN_URL	VARCHAR(100)	NULL,
	FCM_TOKEN	CHAR(163)	NULL,
	NOTI_CHECK_DT   DATETIME 	NOT NULL,
    CREATE_DT DATETIME NOT NULL,
);

ALTER TABLE USER_INFO ADD CONSTRAINT PK_USER PRIMARY KEY NONCLUSTERED (
	SUID
) WITH FILLFACTOR = 90 ON [PRIMARY];

ALTER TABLE USER_INFO ADD CONSTRAINT UNIQUE_USER_PHONE UNIQUE (PHONE)
 
-- UserID 검색.
CREATE NONCLUSTERED INDEX [NC1_USER_COL_USERID] ON USER_INFO ([USER_ID]) WITH FILLFACTOR = 90 ON [PRIMARY]

-- 2. 인증번호 확인 요청 후 가입된 사용자인지 판별 할 때 사용함.
CREATE NONCLUSTERED INDEX [NC2_USER_COL_PHONE] ON USER_INFO ([PHONE]) WITH FILLFACTOR = 90 ON [PRIMARY]


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

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'회원가입 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo',
 @level1type=N'TABLE',@level1name=N'USER_INFO', @level2type=N'COLUMN',@level2name=N'CREATE_DT';
