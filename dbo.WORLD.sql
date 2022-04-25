
CREATE TABLE WORLD (
	WORLD_ID	BIGINT	NOT NULL,
	WORLD_OWNER	VARCHAR(18)	NOT NULL,
	NAME	VARCHAR(50)	NOT NULL,
	[DESCRIPTION]	VARCHAR(160)	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL,
	UPDATE_DT	DATETIME	NOT NULL
);

ALTER TABLE WORLD ADD CONSTRAINT PK_WORLD PRIMARY KEY NONCLUSTERED (
	WORLD_ID
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Index값' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 소유자 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD', @level2type=N'COLUMN',@level2name=N'WORLD_OWNER';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 이름' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD', @level2type=N'COLUMN',@level2name=N'NAME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 설명' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD', @level2type=N'COLUMN',@level2name=N'DESCRIPTION';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'생성 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'수정 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';



