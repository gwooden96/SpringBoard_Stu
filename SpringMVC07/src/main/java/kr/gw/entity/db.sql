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