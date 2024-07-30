/*
drop table member;
drop sequence seq_member_idx;

-- 일련 번호 시퀀스 관리객체
create sequence seq_member_idx
create table member
(
    mem_idx             int,								-- 회원번호
    mem_name            varchar2(100) not null,				-- 이름
    mem_id              varchar2(100) not null,    			-- 아이디
    mem_pwd             varchar2(100) not null,    			-- 비밀번호
    mem_nickname        varchar2(100) not null,    			-- 닉네임
    mem_zipcode         char(5) not null,     				-- 우편번호
    mem_addr            varchar2(1000) not null,    		-- 주소
    mem_ip              varchar2(100) not null,     		-- 아이피
    mem_regdate         date default sysdate,      			-- 가입일자
    mem_grade           varchar2(100) default '일반',		-- 회원등급
    mem_filename		varchar2(100) default 'basic.jpg',	-- 파일명
    mem_point			int default 0						-- 포인트
)
-- 기본키 -> mem_idx
alter table member
    add constraint pk_member_idx primary key(mem_idx);
    
-- 아이디(unique)
alter table member
    add constraint unique_member_id unique(mem_id);
    
-- 닉네임(unique)
alter table member
    add constraint unique_member_nickname unique(mem_nickname);
    
-- 회원등급(check) => 회원등급 '일반' 아니면 '관리자'
alter table member
    add constraint ck_member_grade check(mem_grade in ('일반','관리자'));
    
select * from member

insert into member values(seq_member_idx.nextVal,
						 '김관리','admin','admin','관리자','12345','서울시 관악구 남부순환로','localhost',default,'관리자',default, default);
insert into member values(seq_member_idx.nextVal,
						 '일길동','one','1234','one길동','11111','서울시 용산구','localhost',default,default,default, default);
insert into member values(seq_member_idx.nextVal,
						 '이길동','two','1234','two길동','22222','서울시 동작구','localhost',default,default,'basic.jpg', default);



-- 평점(check) -> 평점 범위 0점~5점 => 평점테이블 만들기
alter table member
	add constraint ck_member_rating check(mem_rating between 0 and 5);


select * from member






*/