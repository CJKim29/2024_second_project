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
		reg_date		date,				-- 등록일자
		category		varchar2(200),		-- 카테고리
 		grade			varchar2(200),		-- 등급
 		intrinsic		varchar2(200),		-- 공격력 or 방어력
 		durability		varchar2(200),		-- 내구도
 		req_str			varchar2(200),		-- 필요 힘
 		req_dex			varchar2(200),		-- 필요 민첩
 		req_lev			varchar2(200),		-- 요구레벨
 		option1			varchar2(200),		-- 옵션1
 		option2			varchar2(200),		-- 옵션2
 		option3			varchar2(200),		-- 옵션3
 		option4			varchar2(200),		-- 옵션4
 		option5			varchar2(200),		-- 옵션5
 		option6			varchar2(200),		-- 옵션6
 		option7			varchar2(200),		-- 옵션7
 		option8			varchar2(200),		-- 옵션8
 		option9			varchar2(200),		-- 옵션9
 		option10		varchar2(200)		-- 옵션10
	)
	
	insert into reg_item values(seq_reg_item_idx.nextVal, '독사마술사의 가죽.jpg', '독사마술사의 가죽', 10000, default, sysdate);
	insert into reg_item values(seq_reg_item_idx.nextVal, '전쟁 여행자.jpg', '전쟁 여행자', 15000, default, sysdate);
	insert into reg_item values(seq_reg_item_idx.nextVal, '천상의 빛.jpg', '천상의 빛', 5000, default, sysdate);
	insert into reg_item values(seq_reg_item_idx.nextVal, '시대의 왕관 코로나.jpg', '시대의 왕관 코로나', 13000, default, sysdate);
	
	
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
                      option1, option2, option3, option4, option5, option6)
						values (seq_reg_item_idx.nextVal, '천상의 의복.jpg', '천상의 의복'||chr(10)||'라이트 플레이트', 10000, 0, sysdate, '갑옷', '노멀', 
        				'방어력:216', '내구도:60', '필요 힘:41', '', '요구 레벨:29', '언데드에게 주는 피해 +50%', '언데드에 대한 명중률 +100', '방어력 +100% 증가',
        				'마력 +15', '마나 재생 25%', '모든 저항 +10')
	
	select * from reg_item
	
*/