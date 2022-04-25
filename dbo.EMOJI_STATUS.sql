CREATE TABLE EMOJI_STATUS(
	EMOJI_ID BIGINT NOT NULL,
	REVIEW_ID BIGINT NOT NULL,
	USER_SUID VARCHAR(18) NOT NULL,
	WORLD_ID BIGINT NOT NULL,
    CREATE_DT DATETIME NOT NULL
) ON [PRIMARY]


ALTER TABLE EMOJI_STATUS ADD CONSTRAINT PK_EMOJI_STATUS  PRIMARY KEY NONCLUSTERED ( 
	[REVIEW_ID] ,
	[USER_SUID] ,
	[WORLD_ID] ,
    [EMOJI_ID] 
)WITH FILLFACTOR = 90 ON [PRIMARY]


ALTER TABLE [dbo].[EMOJI_STATUS]  WITH CHECK ADD  CONSTRAINT FK_EMOJI_STATUS FOREIGN KEY([EMOJI_ID])
REFERENCES [dbo].[EMOJI] ([EMOJI_ID])


ALTER TABLE [dbo].[EMOJI_STATUS] CHECK CONSTRAINT FK_EMOJI_STATUS


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'이모지 고유 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI_STATUS', @level2type=N'COLUMN',@level2name=N'EMOJI_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI_STATUS', @level2type=N'COLUMN',@level2name=N'REVIEW_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI_STATUS', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI_STATUS', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'생성날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI_STATUS', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

