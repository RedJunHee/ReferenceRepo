CREATE TABLE REVIEW_REPORT_LOG (
	[SEQ] [bigint] IDENTITY(1,1) NOT NULL,
	[REVIEW_ID] [bigint] NOT NULL,
	[USER_SUID] [varchar](18) NOT NULL,
	[REPORT_TITLE] [varchar](100) NOT NULL,
    [REPORT_DESC] [varchar](500) NOT NULL,
	[CREATE_DT] [datetime] NOT NULL
);

ALTER TABLE REVIEW_REPORT_LOG ADD CONSTRAINT PK_REVIEW_REPORT_LOG UNIQUE (
	SEQ
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'시퀀스 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'SEQ';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'REVIEW_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고자 SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 제목' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'REPORT_TITLE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'신고 내용' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'REPORT_DESC';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 신고 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW_REPORT_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';
