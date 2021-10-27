create table test_board(
id number(4) primary key,
name varchar2(20),
title varchar2(100),
content varchar2(300),
savedate date default sysdate, //디폴트로 시간을 넣어줌
hit number(4) default 0,		// 디폴트로 0을 넣어줌
idgroup number(4),
step number(4),
indent number(4)
);
create sequence test_board_seq;   