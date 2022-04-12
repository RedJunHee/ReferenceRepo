CREATE TABLE API_LOG (
	SEQ	BIGINT	NOT NULL,
	API_NAME	VARCHAR(100)	NOT NULL,
	API_DESC	VARCHAR(8000)	NOT NULL,
	API_STATUS	CHAR(1)	NOT NULL,
	PROCESS_TIME	FLOAT	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL
);

ALTER TABLE API_LOG ADD CONSTRAINT PK_API_LOG PRIMARY KEY NONCLUSTERED (
	SEQ
);

CREATE CLUSTERED INDEX [CL_API_LOG_COL_CREATEDT] ON [API_LOG] (CREATE_DT)

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'시퀀스 로그 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'API_LOG', @level2type=N'COLUMN',@level2name=N'SEQ';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API 명' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'API_LOG', @level2type=N'COLUMN',@level2name=N'API_NAME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API 내용' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'API_LOG', @level2type=N'COLUMN',@level2name=N'API_DESC';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API 결과  성공: "Y", 실패 : "N"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'API_LOG', @level2type=N'COLUMN',@level2name=N'API_STATUS';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'API 처리 시간 (s)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'API_LOG', @level2type=N'COLUMN',@level2name=N'PROCESS_TIME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'로그 생성 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'API_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';
