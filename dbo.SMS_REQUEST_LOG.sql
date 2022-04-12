CREATE TABLE SMS_REQUEST_LOG (
	SEQ	BIGINT	NOT NULL,
	PHONE	VARCHAR(15)	NOT NULL,
	REQUEST_AUTH_NUM	CHAR(6)	NOT NULL,
	RESPONSE_AUTH_NUM	CHAR(6)	NULL,
	DUID	VARCHAR(50)	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL,
	UPDATE_DT	DATETIME	NOT NULL
);

ALTER TABLE SMS_REQUEST_LOG ADD CONSTRAINT PK_SMS_REQUEST_LOG PRIMARY KEY NONCLUSTERED (
	SEQ
);

CREATE CLUSTERED INDEX [CL_SMS_REQUEST_LOG_COL_CREATEDT] ON [SMS_REQUEST_LOG] (CREATE_DT)
CREATE NONCLUSTERED INDEX (NC1_SMS_REQUEST_LOG_COL_PHONE) ON [SMS_REQUEST_LOG] (PHONE)

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'요청 INDEX' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'SEQ';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'핸드폰 번호' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'PHONE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'요청된 인증번호' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'REQUEST_AUTH_NUM';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'입력된 인증번호' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'RESPONSE_AUTH_NUM';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'유저 단말 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'DUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'생성 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'수정 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SMS_REQUEST_LOG', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';
