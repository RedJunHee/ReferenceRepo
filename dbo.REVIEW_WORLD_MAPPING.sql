CREATE TABLE REVIEW_WORLD_MAPPING (
	WORLD_ID	BIGINT	NOT NULL,
	REVIEW_ID	BIGINT	NOT NULL,
	INSERT_DT	DATETIME	NOT NULL
);

ALTER TABLE REVIEW_WORLD_MAPPING ADD CONSTRAINT PK_REVIEW_WORLD_MAPPING PRIMARY KEY NONCLUSTERED (
	REVIEW_ID,
    WORLD_ID
);



ALTER TABLE REVIEW_WORLD_MAPPING ADD CONSTRAINT FK_WORLD_TO_REVIEW_WORLD_MAPPING_1 FOREIGN KEY (
	WORLD_ID
)
REFERENCES WORLD (
	WORLD_ID
);

ALTER TABLE REVIEW_WORLD_MAPPING ADD CONSTRAINT FK_REVIEW_TO_REVIEW_WORLD_MAPPING_1 FOREIGN KEY (
	REVIEW_ID
)
REFERENCES REVIEW (
	REVIEW_ID
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'월드 ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REVIEW_WORLD_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'리뷰 고유 아이디 IDENTITY VALUE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REVIEW_WORLD_MAPPING', @level2type=N'COLUMN',@level2name=N'REVIEW_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'생성 날짜' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REVIEW_WORLD_MAPPING', @level2type=N'COLUMN',@level2name=N'INSERT_DT';



