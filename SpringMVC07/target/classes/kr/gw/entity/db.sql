-- 테이블 Board : tblBoard --
-- boardGroup : 게시글과 그 게시글에 달린 댓글을 관리 --
-- boardSequence : 게시글 댓글 순서 --
-- boardLevel : 댓글 들여쓰기 관리 --
create table tblBoard(
	idx int not null,
	memID varchar(20) not null,  
	title varchar(100) not null,
	content varchar(2000) not null,
	writer varchar(30) not null,
	indate datetime default now(),
	count int default 0,
	boardGroup int,
	boardSequence int,
	boardLevel int,
	boardAvailable int,
	primary key(idx)
);

select * from tblBoard;


select max(idx) from tblBoard; --null
select IFNULL(max(idx)+1, 1) from tblBoard;
select IFNULL(max(boardGroup)+1, 0) from tblBoard;

insert into tblBoard
select IFNULL(max(idx)+1, 1),'gw01','게시판제목','게시판내용','관리자',
now(), 0, IFNULL(max(boardGroup)+1, 0), 0, 0, 1
from tblBoard;


insert into tblBoard
select IFNULL(max(idx)+1, 1),'gw01','게시판제목','게시판내용','지우든',
now(), 0, IFNULL(max(boardGroup)+1, 0), 0, 0, 1
from tblBoard;


insert into tblBoard
select IFNULL(max(idx)+1, 1),'gw01','게시판제목','게시판내용','gwooden',
now(), 0, IFNULL(max(boardGroup)+1, 0), 0, 0, 1
from tblBoard;

-- 테이블 member --
create table tblMember(
  memID varchar(50) not null, -- 회원ID
  memPwd varchar(50) not null, -- 회원비번
  memName varchar(50) not null, -- 회원이름
  memPhone varchar(50) not null, -- 회원전화번호
  memAddr varchar(100), -- 회원주소
  latitude decimal(13,10), -- 현재위치위도
  longitude decimal(13,10), -- 현재위치경도
  primary key(memID)
);

select * from tblMember;

insert into tblMember(memID, memPwd, memName, memPhone)
values('bit01','bit01','관리자','010-1111-1111');
insert into tblMember(memID, memPwd, memName, memPhone)
values('bit02','bit02','박매일','010-2222-2222');
insert into tblMember(memID, memPwd, memName, memPhone)
values('bit03','bit03','홍길동','010-3333-3333');

