/*
 	create sequence seq_item_search_idx
 	
 	drop sequence seq_item_search_idx
 	
 	drop table item_search
 	
 	create table item_search
 	(
 		idx			int primary key,	-- 일련번호
 		filename	varchar2(200),		-- 이미지 이름
 		category	varchar2(200),		-- 카테고리
 		grade		varchar2(200),		-- 등급
 		name		varchar2(200),		-- 아이템이름
 		intrinsic	varchar2(200),		-- 공격력 or 방어력
 		durability	varchar2(200),		-- 내구도
 		req_str		varchar2(200),		-- 필요 힘
 		req_dex		varchar2(200),		-- 필요 민첩
 		req_lev		varchar2(200),		-- 요구레벨
 		option1		varchar2(200),		-- 옵션1
 		option2		varchar2(200),		-- 옵션2
 		option3		varchar2(200),		-- 옵션3
 		option4		varchar2(200),		-- 옵션4
 		option5		varchar2(200),		-- 옵션5
 		option6		varchar2(200),		-- 옵션6
 		option7		varchar2(200),		-- 옵션7
 		option8		varchar2(200),		-- 옵션8
 		option9		varchar2(200),		-- 옵션9
 		option10	varchar2(200)		-- 옵션10
 	);
  	
  	select * from item_search
 	
 	-- 갑옷 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '천상의 의복.jpg', '갑옷', '노멀', '천상의 의복'||chr(10)||'라이트 플레이트',
  						'방어력:216', '내구도:60', '필요 힘:41', '요구 레벨:29', '언데드에게 주는 피해 +50%', '언데드에 대한 명중률 +100', '방어력 +100% 증가',
  						'마력 +15', '마나 재생 25%', '모든 저항 +10');
  						
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5)
  						values(seq_item_search_idx.nextVal, '독사마술사의 가죽.jpg', '갑옷', '익셉셔널', '독사마술사의 가죽'||chr(10)||'서펀트스킨 아머',
  						'방어력:279', '내구도:24', '필요 힘:43', '요구 레벨:29', '모든 기술 +1', '시전 속도 +30%',
  						'방어력 +120 증가%', '모든 저항 +20~35', '마법 피해 9~13 감소');
  						
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '티리엘의 권능.jpg', '갑옷', '엘리트', '티리엘의 권능'||chr(10)||'세이크리드 아머',
  						'방어력:1322~1502', '요구 레벨:84', '파괴 불가', '달리기/걷기 속도 +20%', '악마에게 주는 피해 +50~100%',
  						'방어력 +120~150 증가%', '힘 +20~30', '모든 저항 +20~30', '빙결되지 않음', '착용 조건 -100%');
  	
  	-- 투구 -- 
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5)
  						values(seq_item_search_idx.nextVal, '섬뜩한 얼굴 마스크.jpg', '투구', '노멀', '섬뜩한 얼굴'||chr(10)||'마스크',
  						'방어력:34~52', '내구도:20', '필요 힘:23', '요구 레벨:20', '언데드에게 주는 피해 +50%',
  						'적중 시 괴물 도주 +50%', '방어력 +25', '힘 +20', '모든 저항 + 10');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5)
  						values(seq_item_search_idx.nextVal, '발키리 날개 윙드 헬름.jpg', '투구', '익셉셔널', '발키리 날개'||chr(10)||'윙드 헬름',
  						'방어력:247~297', '내구도:40', '필요 힘:115', '요구 레벨:44', '아마존 기술 레벨 +1~2',
  						'달리기/걷기 속도 +20%', '타격 회복 속도 +20%', '방어력 +150~200% 증가', '적 처치 시 마나 +2~4');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '시대의 왕관 코로나.jpg', '투구', '엘리트', '시대의 왕관'||chr(10)||'코로나',
  						'방어력:349~399', '필요 힘:174', '요구 레벨:82', '파괴 불가', '모든 기술 +1', '타격 회복 속도 +30%',
  						'방어력 +50 증가%', '방어력 +100~150', '모든 저항 +20~30', '받는 물리 피해 10~15% 감소', '홈 있음(1~2)');
 	
 	-- 방패 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '브베리트 성채.jpg', '방패', '노멀', '브베리트 성채'||chr(10)||'타워 쉴드',
  						'방어력:76~87'||chr(10)||'막기 확률:64%, 59%, 54%'||chr(10)||'성기사 강타 피해:1 - 5', '내구도:140~160', '필요 힘:75', '요구 레벨:19', 
  						'막기 확률 10% 증가', '방어력 +80~120%증가', '방어력 +30', '힘 +5', '화염 저항 75%', '마법 피해 5 감소');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '각성의 벽.jpg', '방패', '익셉셔널', '각성의 벽'||chr(10)||'그림 쉴드',
  						'방어력:271~347'||chr(10)||'막기 확률:50%, 45%, 40%'||chr(10)||'성기사 강타 피해:14 - 20', '내구도:70', '필요 힘:58', '요구 레벨:41', 
  						'모든 기술 +1', '시전 속도 +20%', '방어력 +80~130%증가', '마력 +10', '최대 마나 10% 증가', '적 처치 시 마나 +3~5', '시야 +1');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '폭풍막이.jpg', '방패', '엘리트', '폭풍막이'||chr(10)||'모너크',
  						'방어력:136~519'||chr(10)||'막기 확률:77%, 72%, 67%'||chr(10)||'성기사 강타 피해:12 - 34', '필요 힘:156', '요구 레벨:73', '파괴 불가',
  						'막기 속도 +35%', '막기 확률 +25% 증가', '방어력 +3~371(캐릭터 레벨에 비례)', '힘 +30', '냉기 저항 +60%', '번개 저항 +25%',
  						'받는 물리 피해 35% 감소', '공격자가 번개 피해를 10 받음');
 	
 	-- 장갑 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '마수.jpg', '장갑', '노멀', '마수'||chr(10)||'라이트 건틀릿',
  						'방어력:24~25', '내구도:18', '필요 힘:45', '요구 레벨:23', '화염 기술 +1', '시전 속도 +20%', '화염 피해 1 - 6 추가',
  						'방어력 +20~30%증가', '방어력 +10', '마나 재생 25%');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5)
  						values(seq_item_search_idx.nextVal, '무덤손바닥.jpg', '장갑', '익셉셔널', '무덤손바닥'||chr(10)||'샤크스킨 글러브',
  						'방어력:96~112', '내구도:14', '필요 힘:20', '요구 레벨:32', '언데드에게 주는 피해 +100~200%', '언데드에 대한 명중률 +100~200', 
  						'방어력 +140~180%증가', '힘 +10', '마력 +10');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4)
  						values(seq_item_search_idx.nextVal, '강철찢개.jpg', '장갑', '엘리트', '강철찢개'||chr(10)||'오우거 건틀릿',
  						'방어력:232~281', '내구도:24', '필요 힘:185', '요구 레벨:70', '피해 +30~60% 증가', '강타 확률 +10%', '방어력 +170~210',
  						'힘 +15~20');
 	
 	-- 신발 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '다혈질.jpg', '신발', '노멀', '다혈질'||chr(10)||'부츠',
  						'방어력:10'||chr(10)||'발차기 피해: 3-8', '내구도:12', '요구 레벨:5', '화염 피해 3-6 추가', '방어력 +10~20%증가', '방어력 +6', '생명력 +15', 
  						'최대 화염 저항 +15%', '화염 저항 +45%');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '전쟁 여행자.jpg', '신발', '익셉셔널', '전쟁 여행자'||chr(10)||'배틀 부츠',
  						'방어력:120~139'||chr(10)||'발차기 피해: 37-64', '내구도:48', '필요 힘:95', '요구 레벨:42', '이동속도 +25%', '피해 15-25 추가',
  						'방어력 +150~190%증가', '힘 +10', '활력 +10', '지구력 고갈 속도 40% 감소', '공격자가 피해를 5~10 받음',
  						'마법 아이템 발견 확률 30~50% 증가');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '모래폭풍 여로.jpg', '신발', '엘리트', '모래폭풍 여로'||chr(10)||'스캐럽쉘 부츠',
  						'방어력:158~178'||chr(10)||'발차기 피해: 37-64', '내구도:14', '필요 힘:91', '요구 레벨:64', '이동속도 +20%', '타격 회복 속도 +20%',
  						'방어력 +140~170%증가', '힘 +10~15', '활력 +10~15', '최대 지구력 +(캐릭터 레벨 x 1)', '지구력 고갈 속도 50% 감소',
  						'독 저항 +40~70%', '내구도 1회복(20초마다)');
  						
 	-- 벨트 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '밤연기.jpg', '벨트', '노멀', '밤연기'||chr(10)||'벨트',
  						'방어력:22~24'||chr(10)||'허리띠 크기: +8칸', '내구도:16', '필요 힘:25', '요구 레벨:20', '방어력 +30~50%증가', '방어력 +15', '마나 +20', 
  						'모든 저항 +10', '피해 2 감소', '받는 피해의 +50%만큼 마나 회복');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '서슬꼬리.jpg', '벨트', '익셉셔널', '서슬꼬리'||chr(10)||'사크스킨 벨트',
  						'방어력:96~107'||chr(10)||'허리띠 크기: +12칸', '내구도:14', '필요 힘:20', '요구 레벨:32', '관통 곡격 +33%', '최대 피해 +10',
  						 '방어력 +120~150%증가', '방어력 +15', '민첩 +15', '공격자가 피해를 1~99받음 (캐릭터 레벨에 비례)');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '거미 그물띠.jpg', '벨트', '엘리트', '거미 그물띠'||chr(10)||'스파이더웹 새시',
  						'방어력:119~138'||chr(10)||'허리띠 크기: +12칸', '내구도:12', '필요 힘:50', '요구 레벨:80', '모든 기술 +1', '시전 속도 +20%',
  						 '대상 감속 10%', '방어력 +90~120%증가', '최대 마나 5% 증가', '3 레벨 맹독 (충전 11회)');
 	
 	-- 반지 --
 	
 	insert into item_search (idx, filename, category, name, req_lev, option1, option2, option3, option4)
  						values(seq_item_search_idx.nextVal, '요르단의 반지.jpg', '반지', '요르단의 반지'||chr(10)||'반지',
  						'요구 레벨:29', '모든 기술 +1', '번개 피해 1 - 12 추가', '마나 +20', '최대 마나 25% 증가');
 	
 	insert into item_search (idx, filename, category, name, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '칠흑 서리.jpg', '반지', '칠흑 서리'||chr(10)||'반지',
  						'요구 레벨:45', '명중률 +150~250', '냉기 피해 15 - 45 추가', '민첩 +15~20', '마나 +40', '냉기 흡수 +20%',
  						'빙결되지 않음');
  						
 	insert into item_search (idx, filename, category, name, req_lev, option1, option2, option3, option4)
  						values(seq_item_search_idx.nextVal, '불카토스의 결혼 반지.jpg', '반지', '불카토스의 결혼 반지'||chr(10)||'반지',
  						'요구 레벨:58', '모든 기술 +1', '적중당 생명력 3~5% 훔침', '생명력 +0~49(캐릭터 레벨에 비례)', '최대 지구력 +50');
 	
 	-- 목걸이 --
 	
 	insert into item_search (idx, filename, category, name, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '초승달.jpg', '목걸이', '초승달'||chr(10)||'목걸이',
  						'요구 레벨:50', '적중당 마나 11~15% 훔침', '적중당 생명력 3~6% 훔침', '마나 +45', '마법 피해 10 감소',
  						'받는 피해의 10%만큼 마나 회복', '시야-2');
 	
 	insert into item_search (idx, filename, category, name, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '대군주의 진노.jpg', '목걸이', '대군주의 진노'||chr(10)||'목걸이',
  						'요구 레벨:65', '모든 기술 +1', '공격 속도 +20%', '번개 피해 1 - 30 추가', '치명적 공격 +0~37%(캐릭터 레벨에 비례)',
  						'번개 저항 +35%', '공격자가 번개 피해를 15받음');
 	
 	insert into item_search (idx, filename, category, name, req_lev, option1, option2, option3)
  						values(seq_item_search_idx.nextVal, '마라의 만화경.jpg', '목걸이', '마라의 만화경'||chr(10)||'목걸이',
  						'요구 레벨:67', '모든 기술 +2', '모든 능력치 +5', '모든 저항 +20~30');
 	
 	-- 단도 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_dex, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '비취 단도.jpg', '단도', '노멀', '비취 단도'||chr(10)||'크리스',
  						'한손 피해:2 - 11', '내구도:24', '필요 민첩:45', '요구 레벨:5', '공격 속도:[-20]', '명중률 +100~150', '독 피해 +180(4초에 걸쳐)',
  						'최대 독 저항 +20%', '독 저항 +95%', '빙결되지 않음');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '심장 도리깨.jpg', '단도', '익셉셔널', '심장 도리깨'||chr(10)||'런들',
  						'한손 피해:(44~49) - (110~123)', '내구도:20', '필요 힘:25', '필요 민첩:58', '요구 레벨:34', '공격 속도:[0]', '피해 +190~240% 증가',
  						'피해 15-35추가', '대상의 방어력 무시', '치명적 공격 +35%', '+4 섬뜩한 호신부 (야만용사 전용)', '+4 아이템 발견 (야만용사 전용)',
  						'+4 물약 발견 (야만용사 전용)');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '유령불꽃.jpg', '단도', '엘리트', '유령불꽃'||chr(10)||'레전드 스파이크',
  						'한손 피해:(133~156) - (203-238)', '필요 힘:55', '필요 민첩:57', '요구 레벨:66', '공격 속도:[-10]', '파괴 불가', '피해 +190~240% 증가',
  						'대상의 방어력 무시', '마법 피해 +108', '적중단 마나 10~15% 훔침', '시야 +2', '무형 (수리 불가)');
 	
 	-- 한손검 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '지옥역병.jpg', '한손검', '노멀', '지옥역병'||chr(10)||'롱소드',
  						'한손 피해:5 - (32~34)', '내구도:44', '필요 힘:55', '필요 민첩:39', '요구 레벨:22', '공격 속도:[-10]', '화염 기술 +2', '피해 +70~80% 증가',
  						'화염 피해 25-75추가', '독 피해 +28~56 (6초에 걸쳐)', '적중당 마나 5% 훔침', '적중당 생명력 5% 훔침');
  						
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '유혈자.jpg', '한손검', '익셉셔널', '유혈자'||chr(10)||'글래디우스',
  						'한손 피해:31 - 97', '내구도:54', '필요 힘:25', '요구 레벨:30', '공격 속도:[0]', '공격 속도 +20%', '피해 +140% 증가',
  						'피해 12 - 45추가', '명중률 +90', '적중당 생명력 8% 훔침', '+1~3 소용돌이 (야만용사 전용)', '+2~4 검숙련 (야만용사 전용)',
  						'지구력 고갈 속도 10% 감소');
  						
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '푸른 서슬.jpg', '한손검', '엘리트', '푸른 서슬'||chr(10)||'페이즈 블레이드',
  						'한손 피해:(102~114) - (115~129)', '필요 힘:25', '필요 민첩:136', '요구 레벨:85', '공격 속도:[-30]', '장착 시 10~13 레벨 성역 오라 효과 적용', 
  						'모든 기술 +1', '공격 속도 +30%', '피해 +230~270% 증가', '마법 피해 250 - 500추가', '냉기 피해 250 - 500', '모든 능력치 +5~10',
  						'시야 +3');
 	
 	-- 양손검 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '그림자송곳니.jpg', '양손검', '노멀', '그림자송곳니'||chr(10)||'투핸드 소드',
  						'한손 피해:5 - 18'||chr(10)||'양손 피해:16 - 34', '내구도:44', '필요 힘:35', '필요 민첩:27', '요구 레벨:12', '공격 속도:[0]',
  						'피해 +100% 증가', '냉기 피해 10 - 30추가', '적중당 마나 9% 훔침', '적중당 생명력 9% 훔침', '냉기 저항 +20%', '시야 -2');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '죽음나락 불길.jpg', '양손검', '익셉셔널', '죽음나락 불길'||chr(10)||'즈바이핸더',
  						'한손 피해:(41~49) - (77~91)'||chr(10)||'양손 피해:(63~75) - (118~140)', '내구도:50', '필요 힘:125', '필요 민첩:94', '요구 레벨:46',
  						'공격 속도:[-10]', '공격 시 10% 확률로 6레벨 화염구 시전', '피해 +120~160% 증가', '화염 피해 50 - 200추가', '화염 저항 +40%',
  						'화염 흡수 +10', '10 레벨 마법부여 (충전 45회)', '10 레벨 화염벽 (충전 20회)');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '한아비.jpg', '양손검', '엘리트', '한아비'||chr(10)||'콜로서스 블레이드',
  						'한손 피해:(62~87) - (164~474)'||chr(10)||'양손 피해:(145~203) - (289~649)', '필요 힘:189', '필요 민첩:110', '요구 레벨:81',
  						'공격 속도:[5]', '파괴 불가', '피해 +150~250% 증가', '최대 피해 +2~247 (캐릭터 레벨에 비례)', '명중률 보너스 50%',
  						'모든 능력치 +20', '생명력 +80');
 	
 	-- 한손도끼 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '죽음의 날.jpg', '한손도끼', '노멀', '죽음의 날'||chr(10)||'액스',
  						'한손 피해:14 - (17~18)', '내구도:24', '필요 힘:32', '요구 레벨:9', '공격 속도:[10]', '피해 +60~70% 증가',
  						'최소 피해 +8', '명중률 보너스 15%', '적중 시 대상 실명', '적 처치 시 마나 +4');
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '폼페이의 진노.jpg', '한손도끼', '익셉셔널', '폼페이의 진노'||chr(10)||'크로우빌',
  						'한손 피해:(33~37) - (81~91)', '내구도:26', '필요 힘:94', '필요 민첩:70', '요구 레벨:45', '공격 속도:[-10]', '타격 시 4% 확률로 8 레벨 화산 시전',
  						'피해 +140~170% 증가', '화염 피해 35 - 150 추가', '대상 감속 50%', '밀쳐내기');
  
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '죽음 가르개.jpg', '한손도끼', '엘리트', '죽음 가르개'||chr(10)||'버서커 액스',
  						'한손 피해:(79~91) - (234~269)', '내구도:26', '필요 힘:138', '필요 민첩:59', '요구 레벨:70', '공격 속도:[0]', '공격 속도 +40%',
  						'피해 +230~280% 증가', '대상의 방어력 -33%', '치명적 공격 +66%', '적 처치 시 생명력 +6~9');
  	
 	-- 양손도끼 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5)
  						values(seq_item_search_idx.nextVal, '페크마르의 도끼.jpg', '양손도끼', '노멀', '페크마르의 도끼'||chr(10)||'라지 액스',
  						'양손 피해: (10~11) - (22~24)', '내구도:30', '필요 힘:35', '요구 레벨:8', '공격 속도:[-10]',
  						'피해 +70~90% 증가', '대상 빙결 +3', '냉기 저항 +50%', '시야 +2');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '미노타우루스.jpg', '양손도끼', '익셉셔널', '미노타우루스'||chr(10)||'에이션트 액스',
  						'양손 피해: (123~149) - (234~285)', '내구도:50', '필요 힘:125', '요구 레벨:45', '공격 속도:[10]', '피해 +140~200% 증가',
  						'피해 20 - 30 추가', '강타 확률 +30%', '적중 시 대상 실명 +2', '대상 감속 50%', '힘 +15~20', '빙결 지속시간 절반으로 감소');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '집행자의 정의.jpg', '양손도끼', '엘리트', '집행자의 정의'||chr(10)||'글로리어스 액스',
  						'양손 피해: (204~234) - (421~483)', '내구도:50', '필요 힘:165', '필요 민첩:55', '요구 레벨:75', '공격 속도:[10]',
  						 '적 처치 시 50% 확률로 6 레벨 노화 시전',	'공격 속도 +30%', '피해 +240~290% 증가', 
  						 '대상의 방어력 -33%', '강타 확률 +25%');
  	
  	-- 미늘창 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '혼령 수확자.jpg', '미늘창', '노멀', '혼령 수확자'||chr(10)||'싸이드',
  						'양손 피해: (12~15) - (30~38)', '내구도:65', '필요 힘:41', '필요 민첩:41', '요구 레벨:19', '공격 속도:[-10]',
  						'피해 +50~90% 증가', '명중률 +45', '적중당 마나 10% 훔침', '상처 악화 확률 +30%', '마력 +5', '모든 저항 +20');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '아테나의 진노.jpg', '미늘창', '익셉셔널', '아테나의 진노'||chr(10)||'배틀 싸이드',
  						'양손 피해: (45~50) - (113~224)', '내구도:65', '필요 힘:82', '필요 민첩:82', '요구 레벨:42', '공격 속도:[-10]',
  						'드루이드 기술 레벨 +1~3', '공격 속도 +30%', '피해 +150~180% 증가', '최대 피해 +1~99 (캐릭터 레벨에 비례)',
  						'민첩 +15', '생명력 +1~99 (캐릭터 레벨에 비례)');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '사신의 종소리.jpg', '미늘창', '엘리트', '사신의 종소리'||chr(10)||'쓰레셔',
  						'양손 피해: (34~40) - (408~479)', '내구도:65', '필요 힘:114', '필요 민첩:89', '요구 레벨:75', '공격 속도:[-10]',
  						'타격 시 33% 확률로 1 레벨 노화 시전', '피해 +190~240% 증가', '대상의 방어력 무시', '냉기 피해 4 - 44 추가',
  						'적중당 생명력 11~15% 훔침', '치명적 공격 +33%', '착용 조건 -25%');
  	  	
  	-- 창 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '서슬가지.jpg', '창', '노멀', '서슬가지'||chr(10)||'트라이던트',
  						'양손 피해: (11~13) - (19~22)', '내구도:35', '필요 힘:38', '필요 민첩:24', '요구 레벨:12', '공격 속도:[0]', '공격 속도 +30%',
  						'피해 +30~50% 증가', '대상의 방어력 -50%', '대상 감속 25%', '힘 +15', '민첩 +8');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '골 토막.jpg', '창', '익셉셔널', '골 토막'||chr(10)||'야리',
  						'양손 피해: (95~107) - (193~217)', '내구도:28', '필요 힘:101', '요구 레벨:37', '공격 속도:[0]', '피해 +160~200% 증가',
  						'피해 20 - 40 추가', '강타 확률 +45%', '내구도 1 회복 (10초마다)', '홈 있음 (3)');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '맹독갈퀴.jpg', '창', '엘리트', '맹독갈퀴'||chr(10)||'맨캐쳐',
  						'양손 피해: (121~142) - (266~312)', '내구도:28', '필요 힘:132', '필요 민첩:134', '요구 레벨:71', '공격 속도:[-20]',
  						'타격 시 15% 확률로 9 레벨 맹독 폭발 시전',	'공격 속도 +50%', '피해 +190~240% 증가', '명중률 +200~250',
  						'독 피해 +325 (10초에 걸쳐)', '독 저항 +30~50%');
  	  	
  	-- 활 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '도적의 활.jpg', '활', '노멀', '도적의 활'||chr(10)||'컴포지트 보우',
  						'양손 피해: (5~6) - (11~12)', '필요 힘:25', '필요 민첩:35', '요구 레벨:20', '공격 속도:[-10]', '공격 속도 +50%',
  						'피해 +40~60% 증가', '명중률 +60', '언데드에게 주는 피해 +100%', '치명적 공격 +30%', '모든 저항 +10');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '마녀림의 시위.jpg', '활', '익셉셔널', '마녀림의 시위'||chr(10)||'숏 시즈 보우',
  						'양손 피해: (32~35) - (75~81)', '필요 힘:65', '필요 민첩:80', '요구 레벨:39', '공격 속도:[0]', '타격 시 2% 확률로 5 레벨 피해 증폭 시전',
  						'마법 화살 발사', '피해 +150~170% 증가', '치명적 공격 +1~99% (캐릭터 레벨에 비례)', '모든 저항 +40', '홈 있음 (2)');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '바람살.jpg', '활', '엘리트', '바람살'||chr(10)||'히드라 보우',
  						'양손 피해: 35 - (241~547)', '필요 힘:134', '필요 민첩:167', '요구 레벨:73', '공격 속도:[10]', '공격 속도 +20%',
  						'피해 +250% 증가', '최대 피해 +3~309 (캐릭터 레벨에 비례)', '적중당 마나 6~8% 훔침', '밀쳐내기', '힘 +10',
  						'민첩 +5', '지구력 회복 속도 30% 증가');
  											
  	-- 석궁 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '신혈쐐기.jpg', '석궁', '노멀', '신혈쐐기'||chr(10)||'크로스보우',
  						'양손 피해: 13 - 24', '필요 힘:40',  '요구 레벨:18', '공격 속도:[0]', '공격 속도 +20%', '관통 공격 +50%', 
  						'피해 +50% 증가', '명중률 +50', '독 피해 +30 (3초에 걸쳐)', '민첩 +20');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '눈보라 포.jpg', '석궁', '익셉셔널', '눈보라 포'||chr(10)||'발리스타',
  						'양손 피해: (82~99) - (139~412)', '필요 힘:110', '필요 민첩:80', '요구 레벨:41', '공격 속도:[10]', '공격 속도 +80%',
  						'관통 공격 +100%', '피해 +150~200% 증가', '최대 피해 +2~247 (캐릭터 레벨에 비례)', '냉기 피해 32 - 196 추가',
  						'대상 빙결 +3', '방어력 +75~150', '민첩 +35');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6)
  						values(seq_item_search_idx.nextVal, '내장 흡수.jpg', '석궁', '엘리트', '내장 흡수'||chr(10)||'데몬 크로스보우',
  						'양손 피해: (67~83) - (104~128)', '필요 힘:141', '필요 민첩:98', '요구 레벨:71', '공격 속도:[-60]', '관통 공격 +33%',
  						'피해 +160~220% 증가', '적중당 생명력 12~18% 훔침', '상처 악화 확률 +33%', '대상 감속 25%');
  	
  	-- 한손지팡이 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '이로의 횃불.jpg', '한손지팡이', '노멀', '이로의 횃불'||chr(10)||'원드',
  						'한손 피해: 2 - 4', '내구도:15', '요구 레벨:5', '공격 속도:[0]', '강령술사 기술 레벨 +1', '화염 피해 5 - 9 추가', 
  						'적중당 생명력 6% 훔침', '마력 +10', '마나 재생 5%', '시야 +3', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9, option10)
  						values(seq_item_search_idx.nextVal, '검은손 열쇠.jpg', '한손지팡이', '익셉셔널', '검은손 열쇠'||chr(10)||'그레이브 원드',
  						'한손 피해: 13 - 29', '내구도:15', '필요 힘: 25', '요구 레벨:41', '공격 속도:[0]', '+1 저주(강령술사 전용)', '강령술사 기술 레벨 +2', 
  						'시전 속도 +30%', '생명력 +50', '화염 저항 +37%', '받는 피해의 +20%만큼 마나 회복', '시야 -2',
  						'13 레벨 섬뜩한 호신부(충전 30회)', '언데드에게 주는 피해 +50%');
  						
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7)
  						values(seq_item_search_idx.nextVal, '죽음의 거미줄.jpg', '한손지팡이', '엘리트', '죽음의 거미줄'||chr(10)||'언어스드 원드',
  						'한손 피해: 22 - 28', '내구도:18', '필요 힘:25', '요구 레벨:66', '공격 속도:[0]', '모든 기술 +2', '+1~2 독과 뼈 기술(강령술사 전용)', 
  						'적의 독 저항 -(40~50)%', '적 처치 시 마나 +7~12', '적 처치 시 생명력 +7~12', '언데드에게 주는 피해 +50%');
  	
  	 -- 양손지팡이 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '불도마뱀.jpg', '양손지팡이', '노멀', '불도마뱀'||chr(10)||'배틀 스태프',
  						'양손 피해: 6 - 13', '내구도:40', '요구 레벨:21', '공격 속도:[0]', '화염 기술 +2', '화염 피해 15 - 32 추가', 
  						'+1 화염벽(원소술사 전용)', '+2 화염구(원소술사 전용)', '+3 온기(원소술사 전용)', '화염 저항 +30%', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9, option10)
  						values(seq_item_search_idx.nextVal, '찬란한 분노.jpg', '양손지팡이', '익셉서녈', '찬란한 분노'||chr(10)||'시더 스태프',
  						'양손 피해: 11 - 32', '내구도:35', '필요 힘:25', '요구 레벨:35', '공격 속도:[10]', '원소술사 기술 레벨 +3', '시전 속도 +20%', 
  						'+1 냉기 숙련(원소술사 전용)', '+1 번개 숙련(원소술사 전용)', '+1 화염 숙련(원소술사 전용)', '최대 생명력 20~25% 증가',
  						'모든 저항 +20~40', '공격자가 번개 피해를 20 받음', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '망 송의 가르침.jpg', '양손지팡이', '엘리트', '망 송의 가르침'||chr(10)||'아콘 스태프',
  						'양손 피해: 83 - 99', '내구도:26', '필요 힘:34', '요구 레벨:82', '공격 속도:[10]', '모든 기술 +5', '시전 속도 +30%', 
  						'적의 번개 저항 -(7~15)%', '적의 화염 저항 -(7~15)%', '적의 냉기 저항 -(7~15)%', '마나 재생 10%', '언데드에게 주는 피해 +50%');

  	
  	-- 철퇴 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '장군의 단도리깨.jpg', '철퇴', '노멀', '장군의 단도리깨'||chr(10)||'프레일',
  						'한손 피해: 2 - (56~58)', '내구도:30', '필요 힘:41', '필요 민첩:35', '요구 레벨:21', '공격 속도:[-10]', '공격 속도 +20%',
  						'피해 +50~60% 증가', '피해 1 - 20 추가', '적중당 마나 5% 훔침', '대상 감속 50%', '방어력 +25', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8)
  						values(seq_item_search_idx.nextVal, '대지진의 망치.jpg', '철퇴', '익셉셔널', '대지진의 망치'||chr(10)||'배틀 해머',
  						'한손 피해: 98 - 162', '내구도:105', '필요 힘:100', '요구 레벨:43', '공격 속도:[20]', '타격 시 5% 확률로 7 레벨 균열 시전',
  						'+3 원소 기술 (드루이드 전용)', '공격 속도 +30%', '피해 +180% 증가', '적중 시 대상 실명', '밀쳐내기', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9, option10)
  						values(seq_item_search_idx.nextVal, '두개골 분쇄망치.jpg', '철퇴', '엘리트', '두개골 분쇄망치'||chr(10)||'썬더 마울',
  						'양손 피해: (119~132) - (560~632)', '필요 힘:253', '요구 레벨:87', '공격 속도:[20]', '파괴 불가', '타격 시 4% 확률로 1 레벨 피해 증폭 시전',
  						'공격 속도 +20%', '피해 +200~240% 증가', '최소 피해 +20', '강타 확률 +75%', '힘 +25', '모든 저항 +25', '언데드에게 주는 피해 +50%');
  	
  	-- 홀 --
 	
 	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '폭풍눈.jpg', '홀', '노멀', '폭풍눈'||chr(10)||'워 셉터',
  						'한손 피해: (18~22) - (30~37)', '내구도:70', '필요 힘:55', '요구 레벨:30', '공격 속도:[-10]', '피해 +80~120% 증가',
  						'번개 피해 1 - 6 추가', '냉기 피해 3 - 5 추가', '+1 천상의 주먹 (성기사 전용)', '+3 신성한 충격 (성기사 전용)',
  						'+3~5 번개 저항 (성기사 전용)', '생명력 회복 +10', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9)
  						values(seq_item_search_idx.nextVal, '썩은 뿌리개.jpg', '홀', '익셉셔널', '썩은 뿌리개'||chr(10)||'홀리 워터 스프링클러',
  						'한손 피해: (51~55) - (118~129)', '내구도:60', '필요 힘:76', '요구 레벨:38', '공격 속도:[10]', '타격 시 5% 확률로 1 레벨 노화 시전',
  						'타격 시 10% 확률로 1 레벨 혼란 시전', '성기사 기술 레벨 +2', '피해 +160~190% 증가', '피해 15 - 25 추가',
  						'명중률 +150~200', '독 피해 +160 (4초에 걸쳐)', '언데드에게 주는 피해 +50%');
  	
  	insert into item_search (idx, filename, category, grade, name, intrinsic, durability, req_str, req_dex, req_lev, option1, option2, option3, option4, option5, option6, option7, option8, option9, option10)
  						values(seq_item_search_idx.nextVal, '천상의 빛.jpg', '홀', '엘리트', '천상의 빛'||chr(10)||'마이티 셉터',
  						'한손 피해: (140~160) - (182~208)', '내구도:50', '필요 힘:125', '필요 민첩:65', '요구 레벨:61', '공격 속도:[0]', '성기사 기술 레벨 +2~3',
  						'공격 속도 +20%', '피해 +250~300% 증가', '대상의 방어력 -33%', '강타 확률 +33%', '악마 처치 시 생명력 +15~20',
  						'시야 +3', '언데드에게 주는 피해 +50%', '홈 있음 (1~2)');

  	
  	
  	
  	
*/