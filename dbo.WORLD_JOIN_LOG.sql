CREATE TABLE WORLD_JOIN_LOG (
    SEQ BIGINT IDENTITY (1,1),
	USER_SUID	VARCHAR(18)	NOT NULL,
	WORLD_ID	BIGINT	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL
);

ALTER TABLE WORLD_JOIN_LOG ADD CONSTRAINT PK_UWORLD_JOIN_LOG UNIQUE (
    SEQ
);

-- 알림 조회에서 12주 알림 필터링.
CREATE CLUSTERED INDEX FK_WORLD_JOIN_LOG_CREATEDT ON WORLD_JOIN_LOG (CREATE_DT ASC) WITH FILLFACTOR = 90



EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEQ' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_JOIN_LOG', @level2type=N'COLUMN',@level2name=N'SEQ';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_JOIN_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'입장 월드' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'WORLD_JOIN_LOG', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'입장 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo',
@level1type=N'TABLE',@level1name=N'WORLD_JOIN_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

