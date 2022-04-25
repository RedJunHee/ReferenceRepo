CREATE TABLE REVIEW (
	REVIEW_ID	BIGINT	IDENTITY(1,1) NOT NULL,
	PLACE_ID	VARCHAR(20)	NOT NULL,
	USER_SUID	VARCHAR(18)	NOT NULL,
	CONTENT	VARCHAR(1000)	NOT NULL,
	IMG_URL	VARCHAR(100)	NULL,
	CREATE_DT	DATETIME	NOT NULL,
	UPDATE_DT	DATETIME	NOT NULL
);

ALTER TABLE REVIEW ADD CONSTRAINT PK_REVIEW PRIMARY KEY NONCLUSTERED (
	REVIEW_ID
);

ALTER TABLE REVIEW ADD CONSTRAINT FK_PLACE_TO_REVIEW_1 FOREIGN KEY (
	PLACE_ID
)
REFERENCES PLACE (
	PLACE_ID
);

ALTER TABLE REVIEW ADD CONSTRAINT FK_USER_TO_REVIEW_1 FOREIGN KEY (
	USER_SUID
)
REFERENCES USER_INFO (
	SUID
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 고유 아이디 IDENTITY VALUE' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'REVIEW_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'장소 고유 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'PLACE_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'사용자 유니크 ID (MPS+년+월+일+핸드폰번호)' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 내용 최대 500자' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'CONTENT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 사진 경로 URL' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'IMG_URL';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'생성 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'수정 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';
