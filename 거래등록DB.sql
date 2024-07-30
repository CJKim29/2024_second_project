/*
	create sequence seq_reg_item_idx
	
	drop sequence seq_reg_item_idx
	
	drop table reg_item
	
	create table reg_item
	(
		reg_idx			int primary key,	-- 일련번호
		filename		varchar2(200),		-- 이미지 이름
		reg_name		varchar2(200),		-- 아이템이름
		reg_price		int,				-- 아이템가격
		auction_price	int default 0,		-- 경매가격
		reg_date		date				-- 등록일자
	)
	
	insert into reg_item values(seq_reg_item_idx.nextVal, '독사마술사의 가죽.jpg', '독사마술사의 가죽', 10000, default, sysdate);
	insert into reg_item values(seq_reg_item_idx.nextVal, '전쟁 여행자.jpg', '전쟁 여행자', 15000, default, sysdate);
	insert into reg_item values(seq_reg_item_idx.nextVal, '천상의 빛.jpg', '천상의 빛', 5000, default, sysdate);
	insert into reg_item values(seq_reg_item_idx.nextVal, '시대의 왕관 코로나.jpg', '시대의 왕관 코로나', 13000, default, sysdate);
	
	
	select * from reg_item
	
*/