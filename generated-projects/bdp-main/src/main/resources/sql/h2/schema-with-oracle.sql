drop table if exists bdp_task;
drop table if exists bdp_user;

create table bdp_task (
	id bigint,
	title varchar(128) not null,
	description varchar(255),
	user_id bigint not null,
    primary key (id)
);

create table bdp_user (
	id bigint,
	login_name varchar(64) not null unique,
	name varchar(64) not null,
	password varchar(255) not null,
	salt varchar(64) not null,
	roles varchar(255) not null,
	register_date timestamp not null,
	primary key (id)
);


create sequence bdp_seq_task start with 100 increment by 20;
create sequence bdp_seq_user start with 100 increment by 20;