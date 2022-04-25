CREATE TABLE USER_BLOCK_LOG (
	SEQ BIGINT IDENTITY(1,1) NOT NULL,
	USER_SUID VARCHAR(18) NOT NULL,
    BLOCK_SUID VARCHAR(18) NOT NULL,
    IS_BLOCKING CHAR(1) NULL,
    UPDATE_DT DATETIME NOT NULL,
	CREATE_DT DATETIME NOT NULL
);

ALTER TABLE USER_BLOCK_LOG ADD CONSTRAINT PK_USER_BLOCK_LOG UNIQUE (
	SEQ
);

CREATE CLUSTERED INDEX CL_USER_BLOCK_LOG ON USER_BLOCK_LOG (CREATE_DT ASC) WITH FILLFACTOR = 90 



EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'시퀀스 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_BLOCK_LOG', @level2type=N'COLUMN',@level2name=N'SEQ';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_BLOCK_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'차단 대상 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_BLOCK_LOG', @level2type=N'COLUMN',@level2name=N'BLOCK_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'차단 상태.' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_BLOCK_LOG', @level2type=N'COLUMN',@level2name=N'IS_BLOCKING';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'수정 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_BLOCK_LOG', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_BLOCK_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';
