
CREATE TABLE USER_TOS (
	SUID	VARCHAR(18)	NOT NULL,
	SERVICE_TOS_YN	CHAR(1)	NOT NULL,
	USER_INFO_YN	CHAR(1)	NOT NULL,
	LOCATION_INFO_YN	CHAR(1)	NOT NULL,
	AGE_COLLECTION_YN	CHAR(1)	NOT NULL,
	MARKETING_YN	CHAR(1)	NULL
);

-- 따로  조회하거나 수정하는 서비스는 없음.
-- 저장만 함.
ALTER TABLE USER_TOS ADD CONSTRAINT PK_USER_TOS PRIMARY KEY CLUSTERED (
	SUID
) WITH FILLFACTOR = 90;

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 유니크 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'서비스 이용약관 여부' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'SERVICE_TOS_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'개인정보 수집 및 이용 여부' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'USER_INFO_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'위치정보 수집 및 이용 여부' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'LOCATION_INFO_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'만 14세 이상 여부' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'AGE_COLLECTION_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'마케팅 정보 수신 동의' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'MARKETING_YN';

