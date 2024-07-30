/*

drop table message
drop sequence seq_message_idx

-- 일련 번호 시퀀스 관리객체
create sequence seq_message_idx

create table message
(
	msg_idx			int,					-- 메세지 번호
	chat_idx		int,					-- 채팅방 번호(fk)
	mem_idx			int,					-- 회원 번호(식별번호)(fk)
	mem_name		varchar2(100),			-- 작성자명
	msg_text		varchar2(1000),			-- 메세지 내용
	msg_time		date default sysdate	-- 메세지 시간
)


-- 기본키
alter table message
	add constraint pk_message_msg_idx primary key(msg_idx);
	
-- 외래키(chatroom 테이블의 chat_idx 참조)  chatroom이 message의 부모
alter table message
	add constraint fk_message_chat_idx foreign key(chat_idx)
				   references chatList(chat_idx)
				   on delete cascade
				   on update cascade 





*/