CREATE TABLE USER_WORLD_INVITING_LOG (
	TARGET_SUID	VARCHAR(18)	NOT NULL,
	USER_SUID	VARCHAR(18)	NOT NULL,
	WORLD_INVITATION_CODE	CHAR(6)	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL,
	UPDATE_DT	DATETIME	NOT NULL
);
ALTER TABLE USER_WORLD_INVITING_LOG ADD CONSTRAINT PK_USER_WORLD_INVITING_LOG PRIMARY KEY NONCLUSTERED (
	WORLD_INVITATION_CODE,
    TARGET_SUID,
	USER_SUID
);

CREATE NONCLUSTERED INDEX [NC1_INVITING_LOG_COL_CODE] ON [USER_WORLD_INVITING_LOG] (WORLD_INVITATION_CODE)


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'초대 대상 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'TARGET_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'초대자 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'초대 코드' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'WORLD_INVITATION_CODE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'초대 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'초대 수락, 거절 한 날짜.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';
