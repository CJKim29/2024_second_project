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

 		option10		varchar2(200),		-- 옵션10
 		reg_mem_name	varchar2(200)		-- 판매등록자

 		option10		varchar2(200)		-- 옵션10

	)
	
	select * from reg_item
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
                      	option1, option2, option3, option4, option5, option6, reg_mem_name)
						values (seq_reg_item_idx.nextVal, '천상의 의복.jpg', '천상의 의복'||chr(10)||'라이트 플레이트', 2000, 0, sysdate, '갑옷', '노멀', 
        				'방어력:216', '내구도:60', '필요 힘:41', '', '요구 레벨:29', '언데드에게 주는 피해 +50%', '언데드에 대한 명중률 +100', '방어력 +100% 증가',
        				'마력 +15', '마나 재생 25%', '모든 저항 +10', '일길동');
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '시대의 왕관 코로나.jpg', '시대의 왕관'||chr(10)||'코로나', 10000, 0, sysdate, '투구', '엘리트',
  						'방어력:349~399', '필요 힘:174', '요구 레벨:82', '파괴 불가', '모든 기술 +1', '타격 회복 속도 +30%',
  						'방어력 +50 증가%', '방어력 +100~150', '모든 저항 +20~30', '받는 물리 피해 10~15% 감소', '홈 있음(1~2)', '이길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, option9, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '폭풍막이.jpg', '폭풍막이'||chr(10)||'모너크', 7000, 0, sysdate,  '방패', '엘리트', 
  						'방어력:136~519'||chr(10)||'막기 확률:77%, 72%, 67%'||chr(10)||'성기사 강타 피해:12 - 34', '필요 힘:156', '요구 레벨:73', '파괴 불가',
  						'막기 속도 +35%', '막기 확률 +25% 증가', '방어력 +3~371(캐릭터 레벨에 비례)', '힘 +30', '냉기 저항 +60%', '번개 저항 +25%',
  						'받는 물리 피해 35% 감소', '공격자가 번개 피해를 10 받음', '삼길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '마수.jpg', '마수'||chr(10)||'라이트 건틀릿', 2500, 0, sysdate, '장갑', '노멀',
  						'방어력:24~25', '내구도:18', '필요 힘:45', '요구 레벨:23', '화염 기술 +1', '시전 속도 +20%', '화염 피해 1 - 6 추가',
  						'방어력 +20~30%증가', '방어력 +10', '마나 재생 25%', '일길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '전쟁 여행자.jpg', '전쟁 여행자'||chr(10)||'배틀 부츠', 15000, 0, sysdate,  '신발', '익셉셔널',
  						'방어력:120~139'||chr(10)||'발차기 피해: 37-64', '내구도:48', '필요 힘:95', '요구 레벨:42', '이동속도 +25%', '피해 15-25 추가',
  						'방어력 +150~190%증가', '힘 +10', '활력 +10', '지구력 고갈 속도 40% 감소', '공격자가 피해를 5~10 받음',
  						'마법 아이템 발견 확률 30~50% 증가', '이길동');
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '서슬꼬리.jpg', '서슬꼬리'||chr(10)||'사크스킨 벨트', 1500, 0, sysdate,  '벨트', '익셉셔널',
  						'방어력:96~107'||chr(10)||'허리띠 크기: +12칸', '내구도:14', '필요 힘:20', '요구 레벨:32', '관통 곡격 +33%', '최대 피해 +10',
  						 '방어력 +120~150%증가', '방어력 +15', '민첩 +15', '공격자가 피해를 1~99받음 (캐릭터 레벨에 비례)', '삼길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, req_lev,
							option1, option2, option3, option4, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '요르단의 반지.jpg', '요르단의 반지'||chr(10)||'반지', 20000, 0, sysdate, '반지',
  						'요구 레벨:29', '모든 기술 +1', '번개 피해 1 - 12 추가', '마나 +20', '최대 마나 25% 증가', '일길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, req_lev,
							option1, option2, option3, option4, option5, option6, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '대군주의 진노.jpg', '대군주의 진노'||chr(10)||'목걸이', 13000, 0, sysdate, '목걸이',
  						'요구 레벨:65', '모든 기술 +1', '공격 속도 +20%', '번개 피해 1 - 30 추가', '치명적 공격 +0~37%(캐릭터 레벨에 비례)',
  						'번개 저항 +35%', '공격자가 번개 피해를 15받음', '이길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '심장 도리깨.jpg', '심장 도리깨'||chr(10)||'런들', 1000, 0, sysdate,  '단도', '익셉셔널',
  						'한손 피해:(44~49) - (110~123)', '내구도:20', '필요 힘:25', '필요 민첩:58', '요구 레벨:34', '공격 속도:[0]', '피해 +190~240% 증가',
  						'피해 15-35추가', '대상의 방어력 무시', '치명적 공격 +35%', '+4 섬뜩한 호신부 (야만용사 전용)', '+4 아이템 발견 (야만용사 전용)',
  						'+4 물약 발견 (야만용사 전용)', '삼길동');
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, option9, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '푸른 서슬.jpg', '푸른 서슬'||chr(10)||'페이즈 블레이드', 1200, 0, sysdate,  '한손검', '엘리트',
  						'한손 피해:(102~114) - (115~129)', '필요 힘:25', '필요 민첩:136', '요구 레벨:85', '공격 속도:[-30]', '장착 시 10~13 레벨 성역 오라 효과 적용', 
  						'모든 기술 +1', '공격 속도 +30%', '피해 +230~270% 증가', '마법 피해 250 - 500추가', '냉기 피해 250 - 500', '모든 능력치 +5~10',
  						'시야 +3', '일길동');
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '죽음나락 불길.jpg', '죽음나락 불길'||chr(10)||'즈바이핸더', 1500, 0, sysdate,  '양손검', '익셉셔널',
  						'한손 피해:(41~49) - (77~91)'||chr(10)||'양손 피해:(63~75) - (118~140)', '내구도:50', '필요 힘:125', '필요 민첩:94', '요구 레벨:46',
  						'공격 속도:[-10]', '공격 시 10% 확률로 6레벨 화염구 시전', '피해 +120~160% 증가', '화염 피해 50 - 200추가', '화염 저항 +40%',
  						'화염 흡수 +10', '10 레벨 마법부여 (충전 45회)', '10 레벨 화염벽 (충전 20회)', '이길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '죽음의 날.jpg', '죽음의 날'||chr(10)||'액스', 1000, 0, sysdate,  '한손도끼', '노멀',
  						'한손 피해:14 - (17~18)', '내구도:24', '필요 힘:32', '요구 레벨:9', '공격 속도:[10]', '피해 +60~70% 증가',
  						'최소 피해 +8', '명중률 보너스 15%', '적중 시 대상 실명', '적 처치 시 마나 +4', '삼길동');
 	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '미노타우루스.jpg', '미노타우루스'||chr(10)||'에이션트 액스', 700, 0, sysdate,  '양손도끼', '익셉셔널',
  						'양손 피해: (123~149) - (234~285)', '내구도:50', '필요 힘:125', '요구 레벨:45', '공격 속도:[10]', '피해 +140~200% 증가',
  						'피해 20 - 30 추가', '강타 확률 +30%', '적중 시 대상 실명 +2', '대상 감속 50%', '힘 +15~20', '빙결 지속시간 절반으로 감소', '일길동');
  	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '사신의 종소리.jpg', '사신의 종소리'||chr(10)||'쓰레셔', 100000, 0, sysdate,  '미늘창', '엘리트',
  						'양손 피해: (34~40) - (408~479)', '내구도:65', '필요 힘:114', '필요 민첩:89', '요구 레벨:75', '공격 속도:[-10]',
  						'타격 시 33% 확률로 1 레벨 노화 시전', '피해 +190~240% 증가', '대상의 방어력 무시', '냉기 피해 4 - 44 추가',
  						'적중당 생명력 11~15% 훔침', '치명적 공격 +33%', '착용 조건 -25%', '이길동');
  	  	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '서슬가지.jpg', '서슬가지'||chr(10)||'트라이던트', 500, 0, sysdate,  '창', '노멀',
  						'양손 피해: (11~13) - (19~22)', '내구도:35', '필요 힘:38', '필요 민첩:24', '요구 레벨:12', '공격 속도:[0]', '공격 속도 +30%',
  						'피해 +30~50% 증가', '대상의 방어력 -50%', '대상 감속 25%', '힘 +15', '민첩 +8', '삼길동');
  	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, option9, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '바람살.jpg', '바람살'||chr(10)||'히드라 보우', 30000, 0, sysdate,  '활', '엘리트',
  						'양손 피해: 35 - (241~547)', '필요 힘:134', '필요 민첩:167', '요구 레벨:73', '공격 속도:[10]', '공격 속도 +20%',
  						'피해 +250% 증가', '최대 피해 +3~309 (캐릭터 레벨에 비례)', '적중당 마나 6~8% 훔침', '밀쳐내기', '힘 +10',
  						'민첩 +5', '지구력 회복 속도 30% 증가', '일길동');
  	
  	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, req_str, req_dex, req_lev,
  							option1, option2, option3, option4, option5, option6, option7, option8, option9, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '눈보라 포.jpg', '눈보라 포'||chr(10)||'발리스타', 15000, 0, sysdate,  '석궁', '익셉셔널',
  						'양손 피해: (82~99) - (139~412)', '필요 힘:110', '필요 민첩:80', '요구 레벨:41', '공격 속도:[10]', '공격 속도 +80%',
  						'관통 공격 +100%', '피해 +150~200% 증가', '최대 피해 +2~247 (캐릭터 레벨에 비례)', '냉기 피해 32 - 196 추가',
  						'대상 빙결 +3', '방어력 +75~150', '민첩 +35', '이길동');
  						
  	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_lev,
  							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '이로의 횃불.jpg', '이로의 횃불'||chr(10)||'원드', 500, 0, sysdate,  '한손지팡이', '노멀',
  						'한손 피해: 2 - 4', '내구도:15', '요구 레벨:5', '공격 속도:[0]', '강령술사 기술 레벨 +1', '화염 피해 5 - 9 추가', 
  						'적중당 생명력 6% 훔침', '마력 +10', '마나 재생 5%', '시야 +3', '언데드에게 주는 피해 +50%', '삼길동');
  											
  	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
  							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '망 송의 가르침.jpg', '망 송의 가르침'||chr(10)||'아콘 스태프', 500000, 0, sysdate,  '양손지팡이', '엘리트',
  						'양손 피해: 83 - 99', '내구도:26', '필요 힘:34', '요구 레벨:82', '공격 속도:[10]', '모든 기술 +5', '시전 속도 +30%', 
  						'적의 번개 저항 -(7~15)%', '적의 화염 저항 -(7~15)%', '적의 냉기 저항 -(7~15)%', '마나 재생 10%', '언데드에게 주는 피해 +50%', '일길동');
																				
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '대지진의 망치.jpg', '대지진의 망치'||chr(10)||'배틀 해머', 100, 0, sysdate,  '철퇴', '익셉셔널',
  						'한손 피해: 98 - 162', '내구도:105', '필요 힘:100', '요구 레벨:43', '공격 속도:[20]', '타격 시 5% 확률로 7 레벨 균열 시전',
  						'+3 원소 기술 (드루이드 전용)', '공격 속도 +30%', '피해 +180% 증가', '적중 시 대상 실명', '밀쳐내기', '언데드에게 주는 피해 +50%', '이길동');

	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
							option1, option2, option3, option4, option5, option6, option7, option8, option9, option10, reg_mem_name)
  						values(seq_reg_item_idx.nextVal, '천상의 빛.jpg', '천상의 빛'||chr(10)||'마이티 셉터', 17000, 0, sysdate, '홀', '엘리트', 
  						'한손 피해: (140~160) - (182~208)', '내구도:50', '필요 힘:125', '필요 민첩:65', '요구 레벨:61', '공격 속도:[0]', '성기사 기술 레벨 +2~3',
  						'공격 속도 +20%', '피해 +250~300% 증가', '대상의 방어력 -33%', '강타 확률 +33%', '악마 처치 시 생명력 +15~20',
  						'시야 +3', '언데드에게 주는 피해 +50%', '홈 있음 (1~2)', '삼길동');
	
	
	
	
	
	
	insert into reg_item (reg_idx, filename, reg_name, reg_price, auction_price, reg_date, category, grade, intrinsic, durability, req_str, req_dex, req_lev,
                      option1, option2, option3, option4, option5, option6)
						values (seq_item_search_idx.nextVal, '천상의 의복.jpg', '천상의 의복'||chr(10)||'라이트 플레이트', 10000, 0, sysdate, '갑옷', '노멀', 
        				'방어력:216', '내구도:60', '필요 힘:41', '', '요구 레벨:29', '언데드에게 주는 피해 +50%', '언데드에 대한 명중률 +100', '방어력 +100% 증가',
        				'마력 +15', '마나 재생 25%', '모든 저항 +10')
	
	select * from reg_item
	
*/