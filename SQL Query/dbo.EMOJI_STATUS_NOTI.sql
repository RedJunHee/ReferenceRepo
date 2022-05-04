create table EMOJI_STATUS_NOTI
(
    USER_SUID varchar(18) not null,
    WORLD_ID  bigint      not null,
    REVIEW_ID bigint      not null,
    CREATE_DT datetime,
    constraint EMOJI_STATUS_NOTI_pk
        primary key (USER_SUID, WORLD_ID, REVIEW_ID)
);

exec sp_addextendedproperty 'MS_Description', '이모지 상태 알림', 'SCHEMA', 'dbo', 'TABLE', 'EMOJI_STATUS_NOTI';
