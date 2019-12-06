create table authenticated_user
(
    user_id   BINARY(16)   not null,
    created   datetime     not null,
    email     varchar(200),
    oauth_key varchar(255) not null,
    user_name varchar(50),
    primary key (user_id)
) engine = InnoDB;
create table content
(
    content_id bigint     not null,
    action     varchar(255),
    image_url  varchar(255),
    text       varchar(255),
    user_id    BINARY(16) not null,
    trail_id   bigint     not null,
    primary key (content_id)
) engine = InnoDB;
create table hibernate_sequence
(
    next_val bigint
) engine = InnoDB;
insert into hibernate_sequence
values (1);
insert into hibernate_sequence
values (1);
insert into hibernate_sequence
values (1);
create table trail
(
    trail_id     bigint                not null,
    date_created datetime,
    description  varchar(255),
    geometry     geometry,
    image_url    varchar(255),
    trail_name   varchar(255)          not null,
    trail_public BOOLEAN DEFAULT false not null,
    creator_id   BINARY(16),
    primary key (trail_id)
) engine = InnoDB;
create table user_stats
(
    user_characteristics_id bigint   not null,
    created                 datetime not null,
    first_name              varchar(255),
    height_inches           double precision,
    last_name               varchar(255),
    updated                 datetime,
    weight_lbs              double precision,
    user_id                 BINARY(16),
    primary key (user_characteristics_id)
) engine = InnoDB;
create table visibility_grant
(
    grant_id   bigint   not null,
    created    datetime not null,
    grantee_id BINARY(16),
    trail_id   bigint,
    primary key (grant_id)
) engine = InnoDB;
create index IDX3w0o92i3g0759p8rcitr1d98m on authenticated_user (created);
create index IDX2lilfgtvp6t57753kr9ne4711 on authenticated_user (user_name);
alter table authenticated_user
    add constraint UK2lilfgtvp6t57753kr9ne4711 unique (user_name);
alter table authenticated_user
    add constraint UK1m251alkem8wg6yfcjui9yx38 unique (email);
alter table authenticated_user
    add constraint UK_smnv9ssvph65qbj1e8jteiyf0 unique (oauth_key);
create index IDXlmguy4tr3os8tcsewjbkidunl on trail (date_created);
alter table trail
    add constraint UKd4py8bfy7i6d349u7mgnt1ham unique (creator_id, trail_name);
create index IDXeytooeuw1al4y3m4nl6s0nf8g on user_stats (created);
create index IDXcgfgfs7fk42h7ck71lrs42sou on user_stats (user_id);
create index IDXmk2ughxyu9fgboi4cgleojh58 on visibility_grant (created);
alter table content
    add constraint FK9i8wa0xg3eu5u0oox867inpw5 foreign key (user_id) references authenticated_user (user_id);
alter table content
    add constraint FKs3xe94k7kn9cnj1uuphbgg9yu foreign key (trail_id) references trail (trail_id);
alter table trail
    add constraint FKrh541vb21uwr2oujixwuvqjks foreign key (creator_id) references authenticated_user (user_id);
alter table user_stats
    add constraint FKwdquepcso3yfgyda8s9t81k2 foreign key (user_id) references authenticated_user (user_id);
alter table visibility_grant
    add constraint FKcp3e5wthi6tkhrea33p7roebp foreign key (grantee_id) references authenticated_user (user_id);
alter table visibility_grant
    add constraint FK21gplss1jjwgtl9sb0bsuwk9l foreign key (trail_id) references trail (trail_id)
