----------Script to create the tables for the database----------
create table f17_t14_customer
(U_NAME VARCHAR2(25) not null,
PWD VARCHAR2(25) not null,
C_NAME VARCHAR2(40) not null,
C_ADDRESS VARCHAR2(60),
EMAIL VARCHAR2(30) not null,
PHONENO VARCHAR2(16),
REGION VARCHAR2(15) not null
);

create table f17_t14_profile
(P_ID varchar2(10) primary key,
P_Name varchar2(50) not null,
DOB date not null,
U_Name varchar2(25) not null,
foreign key (U_name) references f17_t14_customer(U_Name) on delete cascade
);

create table f17_t14_wishlist
(
WL_ID varchar2(15) primary key,
U_Name varchar2(25) not null,
WL_Name varchar(30),
Priority integer not null,
foreign key (U_Name) references f17_t14_customer(U_Name) on delete cascade
);

create table f17_t14_payment
(
t_ID varchar2(20) primary key,
u_name varchar2(20) not null,
subtype varchar2(20),
from_date date ,
to_date date ,
payment_date date,
foreign key (u_name) references f17_t14_customer(u_name) on delete cascade
);

create table f17_t14_cc
(
cc_no varchar2(30) primary key,
t_ID varchar2(20),
name varchar2(20),
cvv integer,
expiry varchar2(10),
type varchar2(20),
foreign key (t_ID) references f17_t14_payment(t_ID) on delete cascade
);

create table f17_t14_paypal
(
paypal_email varchar2(15) primary key,
t_ID varchar2(20),
pwd varchar2(20),
foreign key (t_ID) references f17_t14_payment(t_ID) on delete cascade
);

create table f17_t14_videos
(
video_ID varchar2(15) primary key,
title varchar2(50) not null,
genre varchar2(15),
description varchar2(100),
language varchar(15),
release_date Date,
region varchar2(15),
pg_rating varchar2(10),
copies integer,
dist_email varchar2(40) not null,
dist_sell_date date,
dist_sell_price integer,
foreign key (dist_email) references f17_t14_distributor(d_email) on delete cascade
);

create table f17_t_14_actor
(
A_ID varchar2(15) primary key,
Name varchar(25),
Introduction varchar(150),
DOB date);

create table f17_t14_acts
(A_ID varchar2(15),
video_ID varchar2(15),
foreign key (video_ID) references f17_t14_videos(Video_ID) on delete cascade,
foreign key (A_ID) references f17_t_14_actor(A_ID) on delete cascade
);

create table f17_t14_distributor
(
d_email varchar2(50) primary key,
name varchar2(50),
phoneno varchar2(25)
);

create table f17_t14_shipped
(
Video_ID varchar2(15),
U_name varchar2(30),
ShippingDate date,
Shipping_Address varchar2(70),
primary key(video_ID,u_name),
foreign key (video_ID) references f17_t14_videos(video_ID) on delete cascade,
foreign key (u_name) references f17_t14_customer(u_name) on delete cascade
);

create table f17_t14_movies
(
Video_ID varchar2(15) primary key,
ProductionHouse varchar2(40),
foreign key (video_ID) references f17_t14_videos(video_ID) on delete cascade
);

create table f17_t14_tvshows
(Video_ID varchar2(15) primary key,
Channel varchar2(40),
NoofSeasons integer,
foreign key (video_ID) references f17_t14_videos(video_ID) on delete cascade
);

create table f17_t14_returns
(
Video_ID varchar2(15),
U_name varchar2(30),
ReturnDate date,
primary key(video_ID,u_name),
foreign key(video_ID) references f17_t14_videos(video_ID) on delete cascade,
foreign key (u_name) references f17_t14_customer(u_name) on delete cascade
);

create table f17_t14_streams
(
p_id varchar(15) not null,
video_id varchar2(30) not null,
stream_date date,
stream_time timestamp,
rating integer,
pause_point timestamp,
primary key(p_id,video_id),
foreign key (video_ID) references f17_t14_videos(video_ID),
foreign key (p_id) references f17_t14_profile(p_id) on delete cascade
);
