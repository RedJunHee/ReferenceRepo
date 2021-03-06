CREATE TABLE WORLD_USER_MAPPING (
	USER_SUID	VARCHAR(18)	NOT NULL,
	WORLD_ID	BIGINT	NOT NULL,
	WORLD_USER_CODE	CHAR(6)	NOT NULL,
	WORLD_INVITATION_CODE	CHAR(6)	NOT NULL,
	ACCESS_TIME	DATETIME	NOT NULL
);

-- 나의 월드 초대 코드 조회 할 때 조건들.
ALTER TABLE WORLD_USER_MAPPING ADD CONSTRAINT PK_WORLD_USER_MAPPING PRIMARY KEY NONCLUSTERED (
	USER_SUID,
	WORLD_ID
) WITH FILLFACTOR = 90 ON [PRIMARY];


ALTER TABLE WORLD_USER_MAPPING ADD CONSTRAINT FK_USER_TO_WORLD_USER_MAPPING_1 FOREIGN KEY (
	USER_SUID
)
REFERENCES USER_INFO (
	SUID
);

ALTER TABLE WORLD_USER_MAPPING ADD CONSTRAINT FK_WORLD_TO_WORLD_USER_MAPPING_1 FOREIGN KEY (
	WORLD_ID
)
REFERENCES WORLD (
	WORLD_ID
);


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 유니크 ID (MPS+년+월+일+핸드폰번호)' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Index값' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 별 사용자의 구분 코드 & 초대 코드' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_USER_CODE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 입장시 초대받은 코드' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_INVITATION_CODE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드에 최근 접속한 시간' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'ACCESS_TIME';
