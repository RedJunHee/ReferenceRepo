CREATE TABLE [dbo].EMOJI(
	EMOJI_ID BIGINT NOT NULL,
	EMOJI_IMG VARCHAR(200) NULL,
	EMOJI_STATUS VARCHAR(20) NOT NULL,
	EMOJI_VALUE VARCHAR(200) NOT NULL,
    CREATE_DT DATETIME NOT NULL,
	UPDATE_DT DATETIME NOT NULL
) ON [PRIMARY]


ALTER TABLE EMOJI ADD CONSTRAINT PK_EMOJI  PRIMARY KEY CLUSTERED ( EMOJI_ID ASC ) WITH FILLFACTOR = 90 ON [PRIMARY]



EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'이모지 고유 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI', @level2type=N'COLUMN',@level2name=N'EMOJI_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'이모지 이미지 경로' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI', @level2type=N'COLUMN',@level2name=N'EMOJI_IMG';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'이모지 사용 여부(ABLE,DISABLE)' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI', @level2type=N'COLUMN',@level2name=N'EMOJI_STATUS';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'이모지 값' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI', @level2type=N'COLUMN',@level2name=N'EMOJI_VALUE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'생성날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'수정 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'EMOJI', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';


