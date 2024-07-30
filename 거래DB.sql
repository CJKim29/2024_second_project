/*
	
	create sequence seq_transaction_idx
	
	drop sequence seq_transaction_idx
	
	drop table transaction
	
	create table transaction
	(
		idx			int primary key,	-- 일련번호
		mem_id		varchar2(200),		-- 아이디
		inc_point	int default 0,		-- 포인트증가
		dec_point	int	default 0		-- 포인트감소
	);
	
	insert into transaction values
	(seq_transaction_idx.nextVal, '거래아이디', 10000, 1000)
	
	select * from transaction
	
*/