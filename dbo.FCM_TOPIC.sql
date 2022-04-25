
CREATE TABLE FCM_TOPIC (
	FCM_TOKEN	CHAR(163)	NOT NULL,
	WORLD_ID	BIGINT	NOT NULL
);

ALTER TABLE FCM_TOPIC ADD CONSTRAINT PK_FCM_TOPIC PRIMARY KEY CLUSTERED (
	WORLD_ID ASC,
    FCM_TOKEN ASC 
) WITH FILLFACTOR = 90;

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 FCM토큰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FCM_TOPIC', @level2type=N'COLUMN',@level2name=N'FCM_TOKEN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FCM_TOPIC', @level2type=N'COLUMN',@level2name=N'WORLD_ID';
