CREATE TABLE USER_REPORT_LOG (
	SEQ BIGINT IDENTITY(1,1) NOT NULL,
	USER_SUID VARCHAR(18) NOT NULL,
    REPORT_SUID VARCHAR(18) NOT NULL,
	REPORT_TITLE VARCHAR(100) NOT NULL,
    REPORT_DESC VARCHAR(500) NOT NULL,
	CREATE_DT DATETIME NOT NULL
);

ALTER TABLE USER_REPORT_LOG ADD CONSTRAINT PK_USER_REPORT_LOG UNIQUE (
	SEQ
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'시퀀스 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'SEQ';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고자 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 대상 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'REPORT_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 제목' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'REPORT_TITLE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 내용' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'REPORT_DESC';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';
