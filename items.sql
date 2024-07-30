/*
		-- 1. items table 넣기
	
	drop sequence seq_items_item_idx
	
	
	
		-------------------------------- 시작 ------------------------------------------------------------------------------
		-------------------------------- 시작 ------------------------------------------------------------------------------
		-------------------------------- 시작 ------------------------------------------------------------------------------
		-------------------------------- 시작 ------------------------------------------------------------------------------
		-------------------------------- 시작 ------------------------------------------------------------------------------
		-------------------------------- 시작 ------------------------------------------------------------------------------
		-------------------------------- 시작 ------------------------------------------------------------------------------
		
	
	
	
	

		
	
	
			
	--------- gibon-option ---------
		
		
		
	create table gibon_option1(
		gibon_option1 int,
		gibon_option1_name varchar2(100)
	);
	
		
	
	create table gibon_option2(
		gibon_option2 int,
		gibon_option2_name varchar2(100)
	);
	
	
		
	create table gibon_option3(
		gibon_option3 int,
		gibon_option3_name varchar2(100)
	);
	
		
	
	create table gibon_option4(
		gibon_option4 int,
		gibon_option4_name varchar2(100)
	);
	
	
	create table gibon_option5(
		gibon_option5 int,
		gibon_option5_name varchar2(100)
	);
	
	
		
	create table gibon_option6(
		gibon_option6 int,
		gibon_option6_name varchar2(100)
	);
	
	
	

	create table gibon_option7(
		gibon_option7 int,
		gibon_option7_name varchar2(100)
	);
	
	
	
	
	
		
	create sequence seq_gibon_option1;
	create sequence seq_gibon_option2;
	create sequence seq_gibon_option3;
	create sequence seq_gibon_option4;
	create sequence seq_gibon_option5;
	create sequence seq_gibon_option6;
	create sequence seq_gibon_option7;
	
	
	
	
			
	
	--------- options--------- 일동추가
	
	create table options(
		option1_idx int,						 -- 옵션명(부모키)
		item_o1 varchar2(100)					 -- 아이템 옵션1
	);
	
	create table options2(
		option2_idx int,						 -- 옵션명(부모키)
		item_o2 varchar2(100)					 -- 아이템 옵션2
	);
	
	create table options3(
		option3_idx int,						 -- 옵션명(부모키)
		item_o3 varchar2(100)					 -- 아이템 옵션3
	);
	
	create table options4(
		option4_idx int,						 -- 옵션명(부모키)
		item_o4 varchar2(100)					 -- 아이템 옵션4
	);
	
	create table options5(
		option5_idx int,						 -- 옵션명(부모키)
		item_o5 varchar2(100)					 -- 아이템 옵션5
	);
	
	create table options6(
		option6_idx int,						 -- 옵션명(부모키)
		item_o6 varchar2(100)					 -- 아이템 옵션6
	);
	
	create table options7(
		option7_idx int,						 -- 옵션명(부모키)
		item_o7 varchar2(100)					 -- 아이템 옵션7
	);
	
	create table options8(
		option8_idx int,						 -- 옵션명(부모키)
		item_o8 varchar2(100)					 -- 아이템 옵션8
	);
	
	
	
	
	
	-- options sequence 설정(옵션번호)
	
	create sequence seq_options_option_idx;
	create sequence seq_options_option2_idx;
	create sequence seq_options_option3_idx;
	create sequence seq_options_option4_idx;
	create sequence seq_options_option5_idx;
	create sequence seq_options_option6_idx;
	create sequence seq_options_option7_idx;
	create sequence seq_options_option8_idx;
	
	
	
	
	create sequence seq_items_item_idx;
	

	--------- items---------
	
	create table items(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		gibon_option1		int,			-- 기본방어도(변동옵션)296~342
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본내구도
		gibon_option2_val	int,		
		gibon_option3		int,			-- 기본필요힘
		gibon_option3_val	int,		
		gibon_option4		int,			-- 요구레벨
		gibon_option4_val	int,
		gibon_option5		int,
		gibon_option5_val	int,
		gibon_option6		int,
		gibon_option6_val	int,
		gibon_option7		int,
		gibon_option7_val	int,
		
		
		--item_defense int,						-- 기본방어도(변동옵션)296~342
		--item_durability int,					-- 기본내구도
		--item_strength int,					-- 기본필요힘
		--item_level int,						-- 요구레벨
		
		option1_idx int,					-- 적중당 생명력 훔침(변동옵션)9~12
		item_o1_val int,
		option2_idx int,					-- 방어력 증가(변동옵션)160~200
		item_o2_val int,
		option3_idx int,					-- 민첩
		item_o3_val int,
		option4_idx int,					-- 생명력
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					-- 화염저항
		item_o6_val int,
		option7_idx int,					-- 괴물에게서 얻는 금화 증가(변동옵션)80~100
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
	

	
	insert into items values(
							seq_items_item_idx.nextVal,
							'도둑의 왕관 그랜드 크라운',
							'시대의 왕관 코로나.jpg',
							'투구',
							'익셉셔널',
							'유니크',
							'수리불가',4,
							-- 기본옵션
							3,342,4,50,5,103,7,49,0,0,0,0,0,0,
							-- 하단 변동옵션
							35,12,
							12,200,
							16,25,
							20,50,
							19,35,
							40,33,
							51,100,
							0,0
						);
	

	
	
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)
	
	-- items view 생성
	create or replace view items1_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
	
	
	
	
	-- 1. items table 넣기
							
	-- itmes2	
	create table items2(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본방어도(변동옵션)349~399
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본필요힘
		gibon_option2_val	int,		
		gibon_option3		int,			-- 요구레벨
		gibon_option3_val	int,		
		gibon_option4		int,			
		gibon_option4_val	int,
		gibon_option5		int,
		gibon_option5_val	int,
		gibon_option6		int,
		gibon_option6_val	int,
		gibon_option7		int,
		gibon_option7_val	int,
		
		
		--item_defense int,					-- 기본방어도(변동옵션)349~399
		--item_durability int,				-- 기본내구도
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		
		option1_idx int,					-- 파괴불가
		item_o1_val int,
		option2_idx int,					-- 모든 기술
		item_o2_val int,
		option3_idx int,					-- 타격 회복 속도
		item_o3_val int,
		option4_idx int,					-- 방어력 증가
		item_o4_val int,
		option5_idx int,					-- 방어력(변동옵션)100~150
		item_o5_val int,
		option6_idx int,					-- 모든 저항(변동옵션)20~30
		item_o6_val int,
		option7_idx int,					-- 받는 물리 피해 감소(변동옵션) 10~15
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
	
	insert into items2 values(
								seq_items_item_idx.nextVal,
								'시대의 왕관 코로나',
								'시대의 왕관 코로나.jpg',
								'투구',
								'익셉셔널',
								'유니크',
								'수리가능',2,
								-- 기본옵션
								3,399,5,174,7,82,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								62,0,
								37,1,
								26,30,
								12,50,
								36,150,
								39,30,
								33,15,
								0,0
							);
	
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
		
	-- items view 생성
	create or replace view items2_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items2 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
	
		
	-- 1. items table 넣기
	
	-- itmes3
	create table items3(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본방어도(변동옵션)99~113
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본내구도
		gibon_option2_val	int,		
		gibon_option3		int,			-- 기본필요힘
		gibon_option3_val	int,		
		gibon_option4		int,			-- 요구레벨
		gibon_option4_val	int,
		gibon_option5		int,
		gibon_option5_val	int,
		gibon_option6		int,
		gibon_option6_val	int,
		gibon_option7		int,
		gibon_option7_val	int,
		
		
		--item_defense int,					-- 기본방어도(변동옵션)99~113
		--item_durability int,				-- 기본내구도
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		
		option1_idx int,					-- 언데드에게 주는 피해
		item_o1_val int,
		option2_idx int,					-- 언데드에 대한 명중률(변동옵션)50~100
		item_o2_val int,
		option3_idx int,					-- 적중당 생명력 훔침
		item_o3_val int,
		option4_idx int,					-- 해골 숙련(강령술사 전용)
		item_o4_val int,
		option5_idx int,					-- 방어력 증가(변동옵션)30~60
		item_o5_val int,
		option6_idx int,					-- 방어력
		item_o6_val int,
		option7_idx int,					-- 독 저항
		item_o7_val int,
		option8_idx int,					-- 빙결 지속시간 절반으로 감소
		item_o8_val int
	);
				
	-- 2. items values 넣기
	
	insert into items3 values(
								seq_items_item_idx.nextVal,
								'언데드 왕관 크라운',
								'섬뜩한 얼굴 마스크.jpg',
								'투구',
								'익셉셔널',
								'유니크',
								'수리가능',0,
								-- 기본옵션
								3,113,4,50,5,55,7,29,0,0,0,0,0,0,
								-- 하단 변동옵션
								86,50,
								89,100,
								35,5,
								112,3,
								12,60,
								36,40,
								44,50,
								67,0
							);
	
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)		
	
	-- items view 생성
	create or replace view items3_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items3 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
	
	-- 1. items table 넣기
		
	-- itmes4 (두손검)
	create table items4(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items4 values(
								seq_items_item_idx.nextVal,
								'키네밀의 송곳 자이언트 소드',
								'키네밀의 송곳.jpg',
								'양손검',
								'익셉셔널',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,32,2,56,4,50,6,34,5,56,7,23,14,0,
								-- 하단 변동옵션
								11,100,		-- option1_idx
								23,150, 	-- option2_idx
								107,40,		-- option3_idx
								111,6,		-- option4_idx
								19,20,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

							

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items4_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items4 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;

		
		
		
		
		
	-- 1. items table 넣기
		
	-- itmes5 (두손검)
	create table items5(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items5 values(
								seq_items_item_idx.nextVal,
								'톱날검 플랑베르쥬',
								'톱날검 플랑베르쥬.jpg',
								'양손검',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,45,2,67,4,50,6,49,5,70,7,26,14,-10,
								-- 하단 변동옵션
								11,100,		-- option1_idx
								21,15, 	-- option2_idx
								34,6,		-- option3_idx
								31,80,		-- option4_idx
								0,0,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items5_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items5 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;

		
		
		
		
		
	-- 1. items table 넣기
		
	-- itmes6 (두손검)
	create table items6(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items6 values(
								seq_items_item_idx.nextVal,
								'공포 구토자 에스팬돈',
								'공포 구토자 에스팬돈.jpg',
								'양손검',
								'익셉셔널',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,78,2,120,4,44,6,61,5,73,7,42,14,0,
								-- 하단 변동옵션
								29,20,		-- option1_idx
								24,50, 	-- option2_idx
								11,200,		-- option3_idx
								31,80,		-- option4_idx
								84,-70,  	-- option5_idx
								33,10, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items6_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items6 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;

		
		
		
		
		
	-- 1. items table 넣기
		
	-- itmes7 (두손검)
	create table items7(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items7 values(
								seq_items_item_idx.nextVal,
								'회색 형체 퀄티드 아머',
								'회색 형체.jpg',
								'갑옷',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,31,4,20,5,12,7,7,0,0,0,0,0,0,
								-- 하단 변동옵션
								35,5,		-- option1_idx
								36,20, 	-- option2_idx
								16,10,		-- option3_idx
								41,20,		-- option4_idx
								40,20,  	-- option5_idx
								74,3, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items7_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items7 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;

		
		
		
		
		
	-- 1. items table 넣기
		
	-- itmes8 (갑옷)
	create table items8(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items8 values(
								seq_items_item_idx.nextVal,
								'바위털가죽 필드 플레이트',
								'바위털가죽.jpg',
								'갑옷',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,243,4,48,5,50,7,28,0,0,0,0,0,0,
								-- 하단 변동옵션
								12,130,		-- option1_idx
								15,5, 	-- option2_idx
								33,10,		-- option3_idx
								41,20,		-- option4_idx
								75,5,  	-- option5_idx
								78,-10, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items8_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items8 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;

		
		
		
		
		
	-- 1. items table 넣기
		
	-- itmes9 (갑옷)
	create table items9(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items9 values(
								seq_items_item_idx.nextVal,
								'독사마술사의 가죽 서펀트스킨 아머',
								'독사마술사의 가죽.jpg',
								'갑옷',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,279,4,24,5,43,7,29,0,0,0,0,0,0,
								-- 하단 변동옵션
								37,1,		-- option1_idx
								25,30, 	-- option2_idx
								12,120,		-- option3_idx
								39,35,		-- option4_idx
								74,13,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items9_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items9 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items10 (갑옷)
	create table items10(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items10 values(
								seq_items_item_idx.nextVal,
								'천상의 의복',
								'천상의 의복.jpg',
								'갑옷',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,216,4,60,5,41,7,29,0,0,0,0,0,0,
								-- 하단 변동옵션
								86,50,		-- option1_idx
								89,100, 	-- option2_idx
								12,100,		-- option3_idx
								18,15,		-- option4_idx
								74,13,  	-- option5_idx
								87,25, 	 	-- option6_idx
								39,10,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items10_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items10 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items11 (갑옷)
	create table items11(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items11 values(
								seq_items_item_idx.nextVal,
								'티리엘의 권능 세이크리드 아머',
								'티리엘의 권능.jpg',
								'갑옷',
								'엘리트',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,1923,4,60,5,232,7,74,0,0,0,0,0,0,
								-- 하단 변동옵션
								111,2,		-- option1_idx
								26,20, 	-- option2_idx
								12,220,		-- option3_idx
								101,300,		-- option4_idx
								15,15,  	-- option5_idx
								17,15, 	 	-- option6_idx
								39,10,		-- option7_idx
								120,50
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items11_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items11 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items12(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items12 values(
								seq_items_item_idx.nextVal,
								'섬뜩한 얼굴 마스크',
								'섬뜩한 얼굴 마스크.jpg',
								'투구',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,52,4,20,5,23,7,20,0,0,0,0,0,0,
								-- 하단 변동옵션
								86,50,		-- option1_idx
								59,50, 	-- option2_idx
								36,25,		-- option3_idx
								15,20,		-- option4_idx
								39,10,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items12_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items12 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items13 (갑옷)
	create table items13(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items13 values(
								seq_items_item_idx.nextVal,
								'대군주의 진노 목걸이',
								'대군주의 진노.jpg',
								'목걸이',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								7,50,0,0,0,0,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								29,30,		-- option1_idx
								24,20, 	-- option2_idx
								36,100,		-- option3_idx
								101,100,		-- option4_idx
								16,25,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items13_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items13 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items14(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items14 values(
								seq_items_item_idx.nextVal,
								'마라의 만화경 목걸이',
								'마라의 만화경.jpg',
								'목걸이',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								7,67,0,0,0,0,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								37,2,		-- option1_idx
								38,5, 	-- option2_idx
								39,30,		-- option3_idx
								0,0,		-- option4_idx
								0,0,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items14_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items14 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items15(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items15 values(
								seq_items_item_idx.nextVal,
								'초승달 목걸이',
								'초승달.jpg',
								'목걸이',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								7,50,0,0,0,0,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								34,15,		-- option1_idx
								35,6, 	-- option2_idx
								19,45,		-- option3_idx
								74,10,		-- option4_idx
								83,10,  	-- option5_idx
								77,-2, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items15_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items15 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items16(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items16 values(
								seq_items_item_idx.nextVal,
								'요르단의 반지',
								'요르단의 반지.jpg',
								'반지',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								7,29,0,0,0,0,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								37,1,		-- option1_idx
								109,12, 	-- option2_idx
								19,20,		-- option3_idx
								71,25,		-- option4_idx
								0,0,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items16_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items16 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items17(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items17 values(
								seq_items_item_idx.nextVal,
								'칠흑 서리 반지',
								'칠흑 서리.jpg',
								'반지',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								7,45,0,0,0,0,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								23,250,		-- option1_idx
								108,45, 	-- option2_idx
								16,20,		-- option3_idx
								19,40,		-- option4_idx
								98,20,  	-- option5_idx
								58,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items17_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items17 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items18(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items18 values(
								seq_items_item_idx.nextVal,
								'불카토스의 결혼 반지',
								'불카토스의 결혼 반지.jpg',
								'반지',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								7,58,0,0,0,0,0,0,0,0,0,0,0,0,
								-- 하단 변동옵션
								37,1,		-- option1_idx
								35,5, 	-- option2_idx
								20,49,		-- option3_idx
								120,50,		-- option4_idx
								0,0,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items18_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items18 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items19(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items19 values(
								seq_items_item_idx.nextVal,
								'죽음나락 불길 즈바이핸더',
								'죽음나락 불길.jpg',
								'두손검',
								'익셉셔널',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,91,2,140,4,50,6,94,5,125,7,46,14,-10,
								-- 하단 변동옵션
								11,160,		-- option1_idx
								107,200, 	-- option2_idx
								40,40,		-- option3_idx
								93,10,		-- option4_idx
								0,20,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items19_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items19 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items20(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items20 values(
								seq_items_item_idx.nextVal,
								'지옥역병 롱소드',
								'지옥역병.jpg',
								'두손검',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,34,4,44,6,39,5,55,7,22,14,-10,0,0,
								-- 하단 변동옵션
								79,2,		-- option1_idx
								11,80, 	-- option2_idx
								107,75,		-- option3_idx
								34,5,		-- option4_idx
								35,5,  	-- option5_idx
								58,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items20_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items20 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items21(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items21 values(
								seq_items_item_idx.nextVal,
								'푸른 서슬 페이즈 블레이드',
								'푸른 서슬.jpg',
								'한손검',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,114,6,136,5,25,7,85,14,-30,0,0,0,0,
								-- 하단 변동옵션
								37,1,		-- option1_idx
								24,30, 	-- option2_idx
								11,270,		-- option3_idx
								110,500,		-- option4_idx
								108,500,  	-- option5_idx
								38,10, 	 	-- option6_idx
								77,3,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items21_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items20 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items22(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items22 values(
								seq_items_item_idx.nextVal,
								'그림자송곳니 투핸드 소드',
								'그림자송곳니.jpg',
								'두손검',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,18,2,34,4,44,6,27,5,35,7,12,14,0,
								-- 하단 변동옵션
								11,100,		-- option1_idx
								108,30, 	-- option2_idx
								34,9,		-- option3_idx
								35,9,		-- option4_idx
								41,20,  	-- option5_idx
								77,-2, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items22_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items22 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items23(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items23 values(
								seq_items_item_idx.nextVal,
								'유혈자 글래디우스',
								'유혈자.jpg',
								'한손검',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								1,97,4,54,5,25,7,30,14,0,0,0,0,0,
								-- 하단 변동옵션
								24,20,		-- option1_idx
								11,140, 	-- option2_idx
								13,45,		-- option3_idx
								23,90,		-- option4_idx
								35,8,  	-- option5_idx
								116,3, 	 	-- option6_idx
								116,4,		-- option7_idx
								82,10
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items23_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items23 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items24(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items24 values(
								seq_items_item_idx.nextVal,
								'마수',
								'마수.jpg',
								'장갑',
								'노멀',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,25,4,18,5,45,7,23,0,0,0,0,0,0,
								-- 하단 변동옵션
								79,1,		-- option1_idx
								25,20, 	-- option2_idx
								107,6,		-- option3_idx
								12,30,		-- option4_idx
								36,10,  	-- option5_idx
								87,25, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items24_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items24 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items25(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items25 values(
								seq_items_item_idx.nextVal,
								'무덤손바닥 샤크스킨 글러브',
								'유혈자.jpg',
								'한손검',
								'익셉셔널',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,112,4,14,5,20,7,32,0,0,0,0,0,0,
								-- 하단 변동옵션
								86,200,		-- option1_idx
								89,200, 	-- option2_idx
								12,180,		-- option3_idx
								15,10,		-- option4_idx
								18,10,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items25_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items25 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
		
		
		
		
		
	-- 1. items table 넣기
		
	-- items12 (갑옷)
	create table items26(
		item_idx int, 						-- 아이템 번호(부모키)
		item_name varchar2(100) not null,	-- 아이템명(유니크)
		item_image varchar2(2000) not null,	-- 이미지경로
		item_type varchar2(100) not null,	-- 아이템타입
		item_grade varchar2(100) not null,	-- 아이템등급
		item_rarity varchar2(100) not null,	-- 아이템레어도
		item_im varchar2(100) default '수리가능',	-- 무형
		item_shot int default '0',			-- 솟개수
		
		
		gibon_option1		int,			-- 기본 한손 피해 5~6 - 28~32
		gibon_option1_val	int,			
		gibon_option2		int,			-- 기본 양손 피해 16~18 - 50~56
		gibon_option2_val	int,		
		gibon_option3		int default 50,			-- 기본내구도
		gibon_option3_val	int,		
		gibon_option4		int default 34,			-- 기본필요민첩
		gibon_option4_val	int,
		gibon_option5		int default 56,			-- 기본필요힘
		gibon_option5_val	int,
		gibon_option6		int default 23,			-- 요구레벨
		gibon_option6_val	int,
		gibon_option7		int default 0,			-- 기본 공격속도
		gibon_option7_val	int,
		
		
		
		--item_damage varchar2(100),		-- 기본 한손 피해 5~6 - 28~32
		--item_2hand_damage varchar2(100),	-- 기본 양손 피해 16~18 - 50~56
		--item_durability int,				-- 기본내구도
		--item_dex int,			  			-- 기본필요민첩
		--item_strength int,				-- 기본필요힘
		--item_level int,					-- 요구레벨
		--item_weapon_speed int,			-- 기본 공격속도
		
		option1_idx int,					-- 피해 증가(변동옵션)80~100
		item_o1_val int,
		option2_idx int,					-- 명중률(변동옵션)100~150
		item_o2_val int,
		option3_idx int,					-- 화염 피해 추가(변동옵션)20~40
		item_o3_val int,
		option4_idx int,					-- 신성한 불꽃(성기사 전용)
		item_o4_val int,
		option5_idx int,					-- 마나
		item_o5_val int,
		option6_idx int,					
		item_o6_val int,
		option7_idx int,					
		item_o7_val int,
		option8_idx int,					
		item_o8_val int
	);
	
	
	-- 2. items values 넣기
							
	insert into items26 values(
								seq_items_item_idx.nextVal,
								'강철찢개',
								'강철찢개.jpg',
								'장갑',
								'엘리트',
								'유니크',
								'수리가능',0,
								-- 기본옵션
							    --g1   g2   g3   g4   g5   g6   g7
								3,281,4,24,5,185,7,70,0,0,0,0,0,0,
								-- 하단 변동옵션
								11,60,		-- option1_idx
								30,10, 	-- option2_idx
								36,210,		-- option3_idx
								15,20,		-- option4_idx
								0,0,  	-- option5_idx
								0,0, 	 	-- option6_idx
								0,0,		-- option7_idx
								0,0
							);

		
		
	-- 4. items view 생성하기(items 뒤에 번호만 변경해주면 됌!! view명, from 뒤 items명)	
							
	-- items view 생성
	create or replace view items26_item_o1_view
	as
	select
		i.*,go1.gibon_option1_name gibon_option1_name, go2.gibon_option2_name gibon_option2_name, go3.gibon_option3_name gibon_option3_name,
		go4.gibon_option4_name gibon_option4_name, go5.gibon_option5_name gibon_option5_name, go6.gibon_option6_name gibon_option6_name,
		go7.gibon_option7_name gibon_option7_name,
		o1.item_o1 option_name1, o2.item_o2 option_name2, o3.item_o3 option_name3,
		o4.item_o4 option_name4, o5.item_o5 option_name5, o6.item_o6 option_name6, o7.item_o7 option_name7, o8.item_o8 option_name8
	from items26 i left outer join gibon_option1 go1 on i.gibon_option1 = go1.gibon_option1
		left outer join gibon_option2 go2 on i.gibon_option2 = go2.gibon_option2
		left outer join gibon_option3 go3 on i.gibon_option3 = go3.gibon_option3
		left outer join gibon_option4 go4 on i.gibon_option4 = go4.gibon_option4
		left outer join gibon_option5 go5 on i.gibon_option5 = go5.gibon_option5
		left outer join gibon_option6 go6 on i.gibon_option6 = go6.gibon_option6
		left outer join gibon_option7 go7 on i.gibon_option7 = go7.gibon_option7
		left outer join options o1 on i.option1_idx = o1.option1_idx
		left outer join options2 o2 on i.option2_idx = o2.option2_idx
		left outer join options3 o3 on i.option3_idx = o3.option3_idx
		left outer join options4 o4 on i.option4_idx = o4.option4_idx
		left outer join options5 o5 on i.option5_idx = o5.option5_idx
		left outer join options6 o6 on i.option6_idx = o6.option6_idx
		left outer join options7 o7 on i.option7_idx = o7.option7_idx
		left outer join options8 o8 on i.option8_idx = o8.option8_idx;
		
		
		
	
		
	

		
		
		
	-------- item trade table --------
	
	create or replace view trade_view
	as
	(SELECT * FROM items1_item_o1_view)
	UNION ALL
	(SELECT * FROM items2_item_o1_view)
	UNION ALL
	(SELECT * FROM items3_item_o1_view)
	UNION ALL
	(SELECT * FROM items4_item_o1_view)
	UNION ALL
	(SELECT * FROM items5_item_o1_view)
	UNION ALL
	(SELECT * FROM items6_item_o1_view)
	UNION ALL
	(SELECT * FROM items7_item_o1_view)
	UNION ALL
	(SELECT * FROM items8_item_o1_view)
	UNION ALL
	(SELECT * FROM items9_item_o1_view)
	UNION ALL
	(SELECT * FROM items10_item_o1_view)
	UNION ALL
	(SELECT * FROM items11_item_o1_view)
	UNION ALL
	(SELECT * FROM items12_item_o1_view)
	UNION ALL
	(SELECT * FROM items13_item_o1_view)
	UNION ALL
	(SELECT * FROM items14_item_o1_view)
	UNION ALL
	(SELECT * FROM items15_item_o1_view)
	UNION ALL
	(SELECT * FROM items16_item_o1_view)
	UNION ALL
	(SELECT * FROM items17_item_o1_view)
	UNION ALL
	(SELECT * FROM items18_item_o1_view)
	UNION ALL
	(SELECT * FROM items19_item_o1_view)
	UNION ALL
	(SELECT * FROM items20_item_o1_view)
	UNION ALL
	(SELECT * FROM items21_item_o1_view)
	UNION ALL
	(SELECT * FROM items22_item_o1_view)
	UNION ALL
	(SELECT * FROM items23_item_o1_view)
	UNION ALL
	(SELECT * FROM items24_item_o1_view)
	UNION ALL
	(SELECT * FROM items25_item_o1_view)
	UNION ALL
	(SELECT * FROM items26_item_o1_view);
	
	-------- item trade table 오름차순 정렬 --------
	
	create or replace view trade_order_by_view
	as
	select * from
	(
		select
		t.*,
		rank() over(order by item_idx desc) as rank
		from (select * from trade_view)t
	);
	
	

	
		
	
	insert into options values(seq_options_option_idx.nextVal,'한손 피해'); 		-- 1
	insert into options values(seq_options_option_idx.nextVal,'양손 피해');		 	-- 2
	insert into options values(seq_options_option_idx.nextVal,'투척 피해'); 		-- 3
	insert into options values(seq_options_option_idx.nextVal,'총 방어력'); 		-- 4
	insert into options values(seq_options_option_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options values(seq_options_option_idx.nextVal,'필요 힘');			-- 6
	insert into options values(seq_options_option_idx.nextVal,'필요 민첩');			-- 7
	insert into options values(seq_options_option_idx.nextVal,'요구 레벨');			-- 8
	insert into options values(seq_options_option_idx.nextVal,'수량');				-- 9
	insert into options values(seq_options_option_idx.nextVal,'내구도');			-- 10
	insert into options values(seq_options_option_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options values(seq_options_option_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options values(seq_options_option_idx.nextVal,'피해+');				-- 13
	insert into options values(seq_options_option_idx.nextVal,'피해');				-- 14
	insert into options values(seq_options_option_idx.nextVal,'힘+');				-- 15
	insert into options values(seq_options_option_idx.nextVal,'민첩+');				-- 16
	insert into options values(seq_options_option_idx.nextVal,'활력+');				-- 17
	insert into options values(seq_options_option_idx.nextVal,'마력+');				-- 18
	insert into options values(seq_options_option_idx.nextVal,'마나+');				-- 19
	insert into options values(seq_options_option_idx.nextVal,'생명력+');			-- 20
	insert into options values(seq_options_option_idx.nextVal,'최대 피해+');		-- 21
	insert into options values(seq_options_option_idx.nextVal,'최소 피해+');		-- 22
	insert into options values(seq_options_option_idx.nextVal,'명중률+');			-- 23
	insert into options values(seq_options_option_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options values(seq_options_option_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options values(seq_options_option_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options values(seq_options_option_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options values(seq_options_option_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options values(seq_options_option_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options values(seq_options_option_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options values(seq_options_option_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options values(seq_options_option_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options values(seq_options_option_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options values(seq_options_option_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options values(seq_options_option_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options values(seq_options_option_idx.nextVal,'방어력+');			-- 36
	insert into options values(seq_options_option_idx.nextVal,'모든 기술+');		-- 37
	insert into options values(seq_options_option_idx.nextVal,'모든 능력치+');		-- 38
	insert into options values(seq_options_option_idx.nextVal,'모든 저항+');		-- 39
	insert into options values(seq_options_option_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options values(seq_options_option_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options values(seq_options_option_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options values(seq_options_option_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options values(seq_options_option_idx.nextVal,'독 저항(%)');		-- 44
	insert into options values(seq_options_option_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options values(seq_options_option_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options values(seq_options_option_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options values(seq_options_option_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options values(seq_options_option_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options values(seq_options_option_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options values(seq_options_option_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options values(seq_options_option_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options values(seq_options_option_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options values(seq_options_option_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options values(seq_options_option_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options values(seq_options_option_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options values(seq_options_option_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options values(seq_options_option_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options values(seq_options_option_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options values(seq_options_option_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options values(seq_options_option_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options values(seq_options_option_idx.nextVal,'파괴 불가');			-- 62
	insert into options values(seq_options_option_idx.nextVal,'대상 빙결');			-- 63
	insert into options values(seq_options_option_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options values(seq_options_option_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options values(seq_options_option_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options values(seq_options_option_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options values(seq_options_option_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options values(seq_options_option_idx.nextVal,'관통공격');			-- 69
	insert into options values(seq_options_option_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options values(seq_options_option_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options values(seq_options_option_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options values(seq_options_option_idx.nextVal,'생명력 회복+');		-- 73
	insert into options values(seq_options_option_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options values(seq_options_option_idx.nextVal,'피해 감소');			-- 75
	insert into options values(seq_options_option_idx.nextVal,'생명력 흡수');		-- 76
	insert into options values(seq_options_option_idx.nextVal,'시야');				-- 77
	insert into options values(seq_options_option_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options values(seq_options_option_idx.nextVal,'화염 기술+');		-- 79
	insert into options values(seq_options_option_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options values(seq_options_option_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options values(seq_options_option_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options values(seq_options_option_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options values(seq_options_option_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options values(seq_options_option_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options values(seq_options_option_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options values(seq_options_option_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options values(seq_options_option_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options values(seq_options_option_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options values(seq_options_option_idx.nextVal,'발차기 피해');		-- 90
	insert into options values(seq_options_option_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options values(seq_options_option_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options values(seq_options_option_idx.nextVal,'화염 흡수');			-- 93
	insert into options values(seq_options_option_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options values(seq_options_option_idx.nextVal,'번개 흡수');			-- 95
	insert into options values(seq_options_option_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options values(seq_options_option_idx.nextVal,'마법 흡수');			-- 97
	insert into options values(seq_options_option_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options values(seq_options_option_idx.nextVal,'냉기 흡수');			-- 99
	insert into options values(seq_options_option_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options values(seq_options_option_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options values(seq_options_option_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options values(seq_options_option_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options values(seq_options_option_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options values(seq_options_option_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options values(seq_options_option_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options values(seq_options_option_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options values(seq_options_option_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options values(seq_options_option_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options values(seq_options_option_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options values(seq_options_option_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options values(seq_options_option_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options values(seq_options_option_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options values(seq_options_option_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options values(seq_options_option_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options values(seq_options_option_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options values(seq_options_option_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options values(seq_options_option_idx.nextVal,'암살자 전용');		-- 118
	insert into options values(seq_options_option_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options values(seq_options_option_idx.nextVal,'최대 지구력');	-- 120
	
	
	                                              
	                                              
	                                              
	insert into options2 values(seq_options_option2_idx.nextVal,'한손 피해'); 		-- 1
	insert into options2 values(seq_options_option2_idx.nextVal,'양손 피해');		 	-- 2
	insert into options2 values(seq_options_option2_idx.nextVal,'투척 피해'); 		-- 3
	insert into options2 values(seq_options_option2_idx.nextVal,'총 방어력'); 		-- 4
	insert into options2 values(seq_options_option2_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options2 values(seq_options_option2_idx.nextVal,'필요 힘');			-- 6
	insert into options2 values(seq_options_option2_idx.nextVal,'필요 민첩');			-- 7
	insert into options2 values(seq_options_option2_idx.nextVal,'요구 레벨');			-- 8
	insert into options2 values(seq_options_option2_idx.nextVal,'수량');				-- 9
	insert into options2 values(seq_options_option2_idx.nextVal,'내구도');			-- 10
	insert into options2 values(seq_options_option2_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options2 values(seq_options_option2_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options2 values(seq_options_option2_idx.nextVal,'피해+');				-- 13
	insert into options2 values(seq_options_option2_idx.nextVal,'피해');				-- 14
	insert into options2 values(seq_options_option2_idx.nextVal,'힘+');				-- 15
	insert into options2 values(seq_options_option2_idx.nextVal,'민첩+');				-- 16
	insert into options2 values(seq_options_option2_idx.nextVal,'활력+');				-- 17
	insert into options2 values(seq_options_option2_idx.nextVal,'마력+');				-- 18
	insert into options2 values(seq_options_option2_idx.nextVal,'마나+');				-- 19
	insert into options2 values(seq_options_option2_idx.nextVal,'생명력+');			-- 20
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 피해+');		-- 21
	insert into options2 values(seq_options_option2_idx.nextVal,'최소 피해+');		-- 22
	insert into options2 values(seq_options_option2_idx.nextVal,'명중률+');			-- 23
	insert into options2 values(seq_options_option2_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options2 values(seq_options_option2_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options2 values(seq_options_option2_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options2 values(seq_options_option2_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options2 values(seq_options_option2_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options2 values(seq_options_option2_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options2 values(seq_options_option2_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options2 values(seq_options_option2_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options2 values(seq_options_option2_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options2 values(seq_options_option2_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options2 values(seq_options_option2_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options2 values(seq_options_option2_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options2 values(seq_options_option2_idx.nextVal,'방어력+');			-- 36
	insert into options2 values(seq_options_option2_idx.nextVal,'모든 기술+');		-- 37
	insert into options2 values(seq_options_option2_idx.nextVal,'모든 능력치+');		-- 38
	insert into options2 values(seq_options_option2_idx.nextVal,'모든 저항+');		-- 39
	insert into options2 values(seq_options_option2_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options2 values(seq_options_option2_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options2 values(seq_options_option2_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options2 values(seq_options_option2_idx.nextVal,'독 저항(%)');		-- 44
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options2 values(seq_options_option2_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options2 values(seq_options_option2_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options2 values(seq_options_option2_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options2 values(seq_options_option2_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options2 values(seq_options_option2_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options2 values(seq_options_option2_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options2 values(seq_options_option2_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options2 values(seq_options_option2_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options2 values(seq_options_option2_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options2 values(seq_options_option2_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options2 values(seq_options_option2_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options2 values(seq_options_option2_idx.nextVal,'파괴 불가');			-- 62
	insert into options2 values(seq_options_option2_idx.nextVal,'대상 빙결');			-- 63
	insert into options2 values(seq_options_option2_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options2 values(seq_options_option2_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options2 values(seq_options_option2_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options2 values(seq_options_option2_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options2 values(seq_options_option2_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options2 values(seq_options_option2_idx.nextVal,'관통공격');			-- 69
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options2 values(seq_options_option2_idx.nextVal,'생명력 회복+');		-- 73
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options2 values(seq_options_option2_idx.nextVal,'피해 감소');			-- 75
	insert into options2 values(seq_options_option2_idx.nextVal,'생명력 흡수');		-- 76
	insert into options2 values(seq_options_option2_idx.nextVal,'시야');				-- 77
	insert into options2 values(seq_options_option2_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options2 values(seq_options_option2_idx.nextVal,'화염 기술+');		-- 79
	insert into options2 values(seq_options_option2_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options2 values(seq_options_option2_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options2 values(seq_options_option2_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options2 values(seq_options_option2_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options2 values(seq_options_option2_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options2 values(seq_options_option2_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options2 values(seq_options_option2_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options2 values(seq_options_option2_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options2 values(seq_options_option2_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options2 values(seq_options_option2_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options2 values(seq_options_option2_idx.nextVal,'발차기 피해');		-- 90
	insert into options2 values(seq_options_option2_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options2 values(seq_options_option2_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options2 values(seq_options_option2_idx.nextVal,'화염 흡수');			-- 93
	insert into options2 values(seq_options_option2_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options2 values(seq_options_option2_idx.nextVal,'번개 흡수');			-- 95
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 흡수');			-- 97
	insert into options2 values(seq_options_option2_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options2 values(seq_options_option2_idx.nextVal,'냉기 흡수');			-- 99
	insert into options2 values(seq_options_option2_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options2 values(seq_options_option2_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options2 values(seq_options_option2_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options2 values(seq_options_option2_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options2 values(seq_options_option2_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options2 values(seq_options_option2_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options2 values(seq_options_option2_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options2 values(seq_options_option2_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options2 values(seq_options_option2_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options2 values(seq_options_option2_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options2 values(seq_options_option2_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options2 values(seq_options_option2_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options2 values(seq_options_option2_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options2 values(seq_options_option2_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options2 values(seq_options_option2_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options2 values(seq_options_option2_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options2 values(seq_options_option2_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options2 values(seq_options_option2_idx.nextVal,'암살자 전용');		-- 118
	insert into options2 values(seq_options_option2_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options2 values(seq_options_option2_idx.nextVal,'최대 지구력');	-- 120
	
	                                              
	                                              
	                                              
	insert into options3 values(seq_options_option3_idx.nextVal,'한손 피해'); 		-- 1
	insert into options3 values(seq_options_option3_idx.nextVal,'양손 피해');		 	-- 2
	insert into options3 values(seq_options_option3_idx.nextVal,'투척 피해'); 		-- 3
	insert into options3 values(seq_options_option3_idx.nextVal,'총 방어력'); 		-- 4
	insert into options3 values(seq_options_option3_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options3 values(seq_options_option3_idx.nextVal,'필요 힘');			-- 6
	insert into options3 values(seq_options_option3_idx.nextVal,'필요 민첩');			-- 7
	insert into options3 values(seq_options_option3_idx.nextVal,'요구 레벨');			-- 8
	insert into options3 values(seq_options_option3_idx.nextVal,'수량');				-- 9
	insert into options3 values(seq_options_option3_idx.nextVal,'내구도');			-- 10
	insert into options3 values(seq_options_option3_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options3 values(seq_options_option3_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options3 values(seq_options_option3_idx.nextVal,'피해+');				-- 13
	insert into options3 values(seq_options_option3_idx.nextVal,'피해');				-- 14
	insert into options3 values(seq_options_option3_idx.nextVal,'힘+');				-- 15
	insert into options3 values(seq_options_option3_idx.nextVal,'민첩+');				-- 16
	insert into options3 values(seq_options_option3_idx.nextVal,'활력+');				-- 17
	insert into options3 values(seq_options_option3_idx.nextVal,'마력+');				-- 18
	insert into options3 values(seq_options_option3_idx.nextVal,'마나+');				-- 19
	insert into options3 values(seq_options_option3_idx.nextVal,'생명력+');			-- 20
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 피해+');		-- 21
	insert into options3 values(seq_options_option3_idx.nextVal,'최소 피해+');		-- 22
	insert into options3 values(seq_options_option3_idx.nextVal,'명중률+');			-- 23
	insert into options3 values(seq_options_option3_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options3 values(seq_options_option3_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options3 values(seq_options_option3_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options3 values(seq_options_option3_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options3 values(seq_options_option3_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options3 values(seq_options_option3_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options3 values(seq_options_option3_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options3 values(seq_options_option3_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options3 values(seq_options_option3_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options3 values(seq_options_option3_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options3 values(seq_options_option3_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options3 values(seq_options_option3_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options3 values(seq_options_option3_idx.nextVal,'방어력+');			-- 36
	insert into options3 values(seq_options_option3_idx.nextVal,'모든 기술+');		-- 37
	insert into options3 values(seq_options_option3_idx.nextVal,'모든 능력치+');		-- 38
	insert into options3 values(seq_options_option3_idx.nextVal,'모든 저항+');		-- 39
	insert into options3 values(seq_options_option3_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options3 values(seq_options_option3_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options3 values(seq_options_option3_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options3 values(seq_options_option3_idx.nextVal,'독 저항(%)');		-- 44
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options3 values(seq_options_option3_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options3 values(seq_options_option3_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options3 values(seq_options_option3_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options3 values(seq_options_option3_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options3 values(seq_options_option3_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options3 values(seq_options_option3_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options3 values(seq_options_option3_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options3 values(seq_options_option3_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options3 values(seq_options_option3_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options3 values(seq_options_option3_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options3 values(seq_options_option3_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options3 values(seq_options_option3_idx.nextVal,'파괴 불가');			-- 62
	insert into options3 values(seq_options_option3_idx.nextVal,'대상 빙결');			-- 63
	insert into options3 values(seq_options_option3_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options3 values(seq_options_option3_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options3 values(seq_options_option3_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options3 values(seq_options_option3_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options3 values(seq_options_option3_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options3 values(seq_options_option3_idx.nextVal,'관통공격');			-- 69
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options3 values(seq_options_option3_idx.nextVal,'생명력 회복+');		-- 73
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options3 values(seq_options_option3_idx.nextVal,'피해 감소');			-- 75
	insert into options3 values(seq_options_option3_idx.nextVal,'생명력 흡수');		-- 76
	insert into options3 values(seq_options_option3_idx.nextVal,'시야');				-- 77
	insert into options3 values(seq_options_option3_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options3 values(seq_options_option3_idx.nextVal,'화염 기술+');		-- 79
	insert into options3 values(seq_options_option3_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options3 values(seq_options_option3_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options3 values(seq_options_option3_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options3 values(seq_options_option3_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options3 values(seq_options_option3_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options3 values(seq_options_option3_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options3 values(seq_options_option3_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options3 values(seq_options_option3_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options3 values(seq_options_option3_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options3 values(seq_options_option3_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options3 values(seq_options_option3_idx.nextVal,'발차기 피해');		-- 90
	insert into options3 values(seq_options_option3_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options3 values(seq_options_option3_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options3 values(seq_options_option3_idx.nextVal,'화염 흡수');			-- 93
	insert into options3 values(seq_options_option3_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options3 values(seq_options_option3_idx.nextVal,'번개 흡수');			-- 95
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 흡수');			-- 97
	insert into options3 values(seq_options_option3_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options3 values(seq_options_option3_idx.nextVal,'냉기 흡수');			-- 99
	insert into options3 values(seq_options_option3_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options3 values(seq_options_option3_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options3 values(seq_options_option3_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options3 values(seq_options_option3_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options3 values(seq_options_option3_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options3 values(seq_options_option3_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options3 values(seq_options_option3_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options3 values(seq_options_option3_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options3 values(seq_options_option3_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options3 values(seq_options_option3_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options3 values(seq_options_option3_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options3 values(seq_options_option3_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options3 values(seq_options_option3_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options3 values(seq_options_option3_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options3 values(seq_options_option3_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options3 values(seq_options_option3_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options3 values(seq_options_option3_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options3 values(seq_options_option3_idx.nextVal,'암살자 전용');		-- 118
	insert into options3 values(seq_options_option3_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options3 values(seq_options_option3_idx.nextVal,'최대 지구력');	-- 120
	
	                                              
	                                              
	                                              
	insert into options4 values(seq_options_option4_idx.nextVal,'한손 피해'); 		-- 1
	insert into options4 values(seq_options_option4_idx.nextVal,'양손 피해');		 	-- 2
	insert into options4 values(seq_options_option4_idx.nextVal,'투척 피해'); 		-- 3
	insert into options4 values(seq_options_option4_idx.nextVal,'총 방어력'); 		-- 4
	insert into options4 values(seq_options_option4_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options4 values(seq_options_option4_idx.nextVal,'필요 힘');			-- 6
	insert into options4 values(seq_options_option4_idx.nextVal,'필요 민첩');			-- 7
	insert into options4 values(seq_options_option4_idx.nextVal,'요구 레벨');			-- 8
	insert into options4 values(seq_options_option4_idx.nextVal,'수량');				-- 9
	insert into options4 values(seq_options_option4_idx.nextVal,'내구도');			-- 10
	insert into options4 values(seq_options_option4_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options4 values(seq_options_option4_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options4 values(seq_options_option4_idx.nextVal,'피해+');				-- 13
	insert into options4 values(seq_options_option4_idx.nextVal,'피해');				-- 14
	insert into options4 values(seq_options_option4_idx.nextVal,'힘+');				-- 15
	insert into options4 values(seq_options_option4_idx.nextVal,'민첩+');				-- 16
	insert into options4 values(seq_options_option4_idx.nextVal,'활력+');				-- 17
	insert into options4 values(seq_options_option4_idx.nextVal,'마력+');				-- 18
	insert into options4 values(seq_options_option4_idx.nextVal,'마나+');				-- 19
	insert into options4 values(seq_options_option4_idx.nextVal,'생명력+');			-- 20
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 피해+');		-- 21
	insert into options4 values(seq_options_option4_idx.nextVal,'최소 피해+');		-- 22
	insert into options4 values(seq_options_option4_idx.nextVal,'명중률+');			-- 23
	insert into options4 values(seq_options_option4_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options4 values(seq_options_option4_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options4 values(seq_options_option4_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options4 values(seq_options_option4_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options4 values(seq_options_option4_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options4 values(seq_options_option4_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options4 values(seq_options_option4_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options4 values(seq_options_option4_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options4 values(seq_options_option4_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options4 values(seq_options_option4_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options4 values(seq_options_option4_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options4 values(seq_options_option4_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options4 values(seq_options_option4_idx.nextVal,'방어력+');			-- 36
	insert into options4 values(seq_options_option4_idx.nextVal,'모든 기술+');		-- 37
	insert into options4 values(seq_options_option4_idx.nextVal,'모든 능력치+');		-- 38
	insert into options4 values(seq_options_option4_idx.nextVal,'모든 저항+');		-- 39
	insert into options4 values(seq_options_option4_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options4 values(seq_options_option4_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options4 values(seq_options_option4_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options4 values(seq_options_option4_idx.nextVal,'독 저항(%)');		-- 44
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options4 values(seq_options_option4_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options4 values(seq_options_option4_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options4 values(seq_options_option4_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options4 values(seq_options_option4_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options4 values(seq_options_option4_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options4 values(seq_options_option4_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options4 values(seq_options_option4_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options4 values(seq_options_option4_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options4 values(seq_options_option4_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options4 values(seq_options_option4_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options4 values(seq_options_option4_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options4 values(seq_options_option4_idx.nextVal,'파괴 불가');			-- 62
	insert into options4 values(seq_options_option4_idx.nextVal,'대상 빙결');			-- 63
	insert into options4 values(seq_options_option4_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options4 values(seq_options_option4_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options4 values(seq_options_option4_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options4 values(seq_options_option4_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options4 values(seq_options_option4_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options4 values(seq_options_option4_idx.nextVal,'관통공격');			-- 69
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options4 values(seq_options_option4_idx.nextVal,'생명력 회복+');		-- 73
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options4 values(seq_options_option4_idx.nextVal,'피해 감소');			-- 75
	insert into options4 values(seq_options_option4_idx.nextVal,'생명력 흡수');		-- 76
	insert into options4 values(seq_options_option4_idx.nextVal,'시야');				-- 77
	insert into options4 values(seq_options_option4_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options4 values(seq_options_option4_idx.nextVal,'화염 기술+');		-- 79
	insert into options4 values(seq_options_option4_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options4 values(seq_options_option4_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options4 values(seq_options_option4_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options4 values(seq_options_option4_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options4 values(seq_options_option4_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options4 values(seq_options_option4_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options4 values(seq_options_option4_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options4 values(seq_options_option4_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options4 values(seq_options_option4_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options4 values(seq_options_option4_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options4 values(seq_options_option4_idx.nextVal,'발차기 피해');		-- 90
	insert into options4 values(seq_options_option4_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options4 values(seq_options_option4_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options4 values(seq_options_option4_idx.nextVal,'화염 흡수');			-- 93
	insert into options4 values(seq_options_option4_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options4 values(seq_options_option4_idx.nextVal,'번개 흡수');			-- 95
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 흡수');			-- 97
	insert into options4 values(seq_options_option4_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options4 values(seq_options_option4_idx.nextVal,'냉기 흡수');			-- 99
	insert into options4 values(seq_options_option4_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options4 values(seq_options_option4_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options4 values(seq_options_option4_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options4 values(seq_options_option4_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options4 values(seq_options_option4_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options4 values(seq_options_option4_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options4 values(seq_options_option4_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options4 values(seq_options_option4_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options4 values(seq_options_option4_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options4 values(seq_options_option4_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options4 values(seq_options_option4_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options4 values(seq_options_option4_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options4 values(seq_options_option4_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options4 values(seq_options_option4_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options4 values(seq_options_option4_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options4 values(seq_options_option4_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options4 values(seq_options_option4_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options4 values(seq_options_option4_idx.nextVal,'암살자 전용');		-- 118
	insert into options4 values(seq_options_option4_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options4 values(seq_options_option4_idx.nextVal,'최대 지구력');	-- 120
	                                          
	                                              
	                                              
	insert into options5 values(seq_options_option5_idx.nextVal,'한손 피해'); 		-- 1
	insert into options5 values(seq_options_option5_idx.nextVal,'양손 피해');		 	-- 2
	insert into options5 values(seq_options_option5_idx.nextVal,'투척 피해'); 		-- 3
	insert into options5 values(seq_options_option5_idx.nextVal,'총 방어력'); 		-- 4
	insert into options5 values(seq_options_option5_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options5 values(seq_options_option5_idx.nextVal,'필요 힘');			-- 6
	insert into options5 values(seq_options_option5_idx.nextVal,'필요 민첩');			-- 7
	insert into options5 values(seq_options_option5_idx.nextVal,'요구 레벨');			-- 8
	insert into options5 values(seq_options_option5_idx.nextVal,'수량');				-- 9
	insert into options5 values(seq_options_option5_idx.nextVal,'내구도');			-- 10
	insert into options5 values(seq_options_option5_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options5 values(seq_options_option5_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options5 values(seq_options_option5_idx.nextVal,'피해+');				-- 13
	insert into options5 values(seq_options_option5_idx.nextVal,'피해');				-- 14
	insert into options5 values(seq_options_option5_idx.nextVal,'힘+');				-- 15
	insert into options5 values(seq_options_option5_idx.nextVal,'민첩+');				-- 16
	insert into options5 values(seq_options_option5_idx.nextVal,'활력+');				-- 17
	insert into options5 values(seq_options_option5_idx.nextVal,'마력+');				-- 18
	insert into options5 values(seq_options_option5_idx.nextVal,'마나+');				-- 19
	insert into options5 values(seq_options_option5_idx.nextVal,'생명력+');			-- 20
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 피해+');		-- 21
	insert into options5 values(seq_options_option5_idx.nextVal,'최소 피해+');		-- 22
	insert into options5 values(seq_options_option5_idx.nextVal,'명중률+');			-- 23
	insert into options5 values(seq_options_option5_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options5 values(seq_options_option5_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options5 values(seq_options_option5_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options5 values(seq_options_option5_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options5 values(seq_options_option5_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options5 values(seq_options_option5_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options5 values(seq_options_option5_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options5 values(seq_options_option5_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options5 values(seq_options_option5_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options5 values(seq_options_option5_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options5 values(seq_options_option5_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options5 values(seq_options_option5_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options5 values(seq_options_option5_idx.nextVal,'방어력+');			-- 36
	insert into options5 values(seq_options_option5_idx.nextVal,'모든 기술+');		-- 37
	insert into options5 values(seq_options_option5_idx.nextVal,'모든 능력치+');		-- 38
	insert into options5 values(seq_options_option5_idx.nextVal,'모든 저항+');		-- 39
	insert into options5 values(seq_options_option5_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options5 values(seq_options_option5_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options5 values(seq_options_option5_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options5 values(seq_options_option5_idx.nextVal,'독 저항(%)');		-- 44
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options5 values(seq_options_option5_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options5 values(seq_options_option5_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options5 values(seq_options_option5_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options5 values(seq_options_option5_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options5 values(seq_options_option5_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options5 values(seq_options_option5_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options5 values(seq_options_option5_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options5 values(seq_options_option5_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options5 values(seq_options_option5_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options5 values(seq_options_option5_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options5 values(seq_options_option5_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options5 values(seq_options_option5_idx.nextVal,'파괴 불가');			-- 62
	insert into options5 values(seq_options_option5_idx.nextVal,'대상 빙결');			-- 63
	insert into options5 values(seq_options_option5_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options5 values(seq_options_option5_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options5 values(seq_options_option5_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options5 values(seq_options_option5_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options5 values(seq_options_option5_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options5 values(seq_options_option5_idx.nextVal,'관통공격');			-- 69
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options5 values(seq_options_option5_idx.nextVal,'생명력 회복+');		-- 73
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options5 values(seq_options_option5_idx.nextVal,'피해 감소');			-- 75
	insert into options5 values(seq_options_option5_idx.nextVal,'생명력 흡수');		-- 76
	insert into options5 values(seq_options_option5_idx.nextVal,'시야');				-- 77
	insert into options5 values(seq_options_option5_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options5 values(seq_options_option5_idx.nextVal,'화염 기술+');		-- 79
	insert into options5 values(seq_options_option5_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options5 values(seq_options_option5_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options5 values(seq_options_option5_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options5 values(seq_options_option5_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options5 values(seq_options_option5_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options5 values(seq_options_option5_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options5 values(seq_options_option5_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options5 values(seq_options_option5_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options5 values(seq_options_option5_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options5 values(seq_options_option5_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options5 values(seq_options_option5_idx.nextVal,'발차기 피해');		-- 90
	insert into options5 values(seq_options_option5_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options5 values(seq_options_option5_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options5 values(seq_options_option5_idx.nextVal,'화염 흡수');			-- 93
	insert into options5 values(seq_options_option5_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options5 values(seq_options_option5_idx.nextVal,'번개 흡수');			-- 95
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 흡수');			-- 97
	insert into options5 values(seq_options_option5_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options5 values(seq_options_option5_idx.nextVal,'냉기 흡수');			-- 99
	insert into options5 values(seq_options_option5_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options5 values(seq_options_option5_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options5 values(seq_options_option5_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options5 values(seq_options_option5_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options5 values(seq_options_option5_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options5 values(seq_options_option5_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options5 values(seq_options_option5_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options5 values(seq_options_option5_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options5 values(seq_options_option5_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options5 values(seq_options_option5_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options5 values(seq_options_option5_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options5 values(seq_options_option5_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options5 values(seq_options_option5_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options5 values(seq_options_option5_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options5 values(seq_options_option5_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options5 values(seq_options_option5_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options5 values(seq_options_option5_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options5 values(seq_options_option5_idx.nextVal,'암살자 전용');		-- 118
	insert into options5 values(seq_options_option5_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options5 values(seq_options_option5_idx.nextVal,'최대 지구력');	-- 120
	                                          
	
	                                              
	                                              
	                                              
	insert into options6 values(seq_options_option6_idx.nextVal,'한손 피해'); 		-- 1
	insert into options6 values(seq_options_option6_idx.nextVal,'양손 피해');		 	-- 2
	insert into options6 values(seq_options_option6_idx.nextVal,'투척 피해'); 		-- 3
	insert into options6 values(seq_options_option6_idx.nextVal,'총 방어력'); 		-- 4
	insert into options6 values(seq_options_option6_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options6 values(seq_options_option6_idx.nextVal,'필요 힘');			-- 6
	insert into options6 values(seq_options_option6_idx.nextVal,'필요 민첩');			-- 7
	insert into options6 values(seq_options_option6_idx.nextVal,'요구 레벨');			-- 8
	insert into options6 values(seq_options_option6_idx.nextVal,'수량');				-- 9
	insert into options6 values(seq_options_option6_idx.nextVal,'내구도');			-- 10
	insert into options6 values(seq_options_option6_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options6 values(seq_options_option6_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options6 values(seq_options_option6_idx.nextVal,'피해+');				-- 13
	insert into options6 values(seq_options_option6_idx.nextVal,'피해');				-- 14
	insert into options6 values(seq_options_option6_idx.nextVal,'힘+');				-- 15
	insert into options6 values(seq_options_option6_idx.nextVal,'민첩+');				-- 16
	insert into options6 values(seq_options_option6_idx.nextVal,'활력+');				-- 17
	insert into options6 values(seq_options_option6_idx.nextVal,'마력+');				-- 18
	insert into options6 values(seq_options_option6_idx.nextVal,'마나+');				-- 19
	insert into options6 values(seq_options_option6_idx.nextVal,'생명력+');			-- 20
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 피해+');		-- 21
	insert into options6 values(seq_options_option6_idx.nextVal,'최소 피해+');		-- 22
	insert into options6 values(seq_options_option6_idx.nextVal,'명중률+');			-- 23
	insert into options6 values(seq_options_option6_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options6 values(seq_options_option6_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options6 values(seq_options_option6_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options6 values(seq_options_option6_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options6 values(seq_options_option6_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options6 values(seq_options_option6_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options6 values(seq_options_option6_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options6 values(seq_options_option6_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options6 values(seq_options_option6_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options6 values(seq_options_option6_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options6 values(seq_options_option6_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options6 values(seq_options_option6_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options6 values(seq_options_option6_idx.nextVal,'방어력+');			-- 36
	insert into options6 values(seq_options_option6_idx.nextVal,'모든 기술+');		-- 37
	insert into options6 values(seq_options_option6_idx.nextVal,'모든 능력치+');		-- 38
	insert into options6 values(seq_options_option6_idx.nextVal,'모든 저항+');		-- 39
	insert into options6 values(seq_options_option6_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options6 values(seq_options_option6_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options6 values(seq_options_option6_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options6 values(seq_options_option6_idx.nextVal,'독 저항(%)');		-- 44
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options6 values(seq_options_option6_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options6 values(seq_options_option6_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options6 values(seq_options_option6_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options6 values(seq_options_option6_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options6 values(seq_options_option6_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options6 values(seq_options_option6_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options6 values(seq_options_option6_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options6 values(seq_options_option6_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options6 values(seq_options_option6_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options6 values(seq_options_option6_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options6 values(seq_options_option6_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options6 values(seq_options_option6_idx.nextVal,'파괴 불가');			-- 62
	insert into options6 values(seq_options_option6_idx.nextVal,'대상 빙결');			-- 63
	insert into options6 values(seq_options_option6_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options6 values(seq_options_option6_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options6 values(seq_options_option6_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options6 values(seq_options_option6_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options6 values(seq_options_option6_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options6 values(seq_options_option6_idx.nextVal,'관통공격');			-- 69
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options6 values(seq_options_option6_idx.nextVal,'생명력 회복+');		-- 73
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options6 values(seq_options_option6_idx.nextVal,'피해 감소');			-- 75
	insert into options6 values(seq_options_option6_idx.nextVal,'생명력 흡수');		-- 76
	insert into options6 values(seq_options_option6_idx.nextVal,'시야');				-- 77
	insert into options6 values(seq_options_option6_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options6 values(seq_options_option6_idx.nextVal,'화염 기술+');		-- 79
	insert into options6 values(seq_options_option6_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options6 values(seq_options_option6_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options6 values(seq_options_option6_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options6 values(seq_options_option6_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options6 values(seq_options_option6_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options6 values(seq_options_option6_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options6 values(seq_options_option6_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options6 values(seq_options_option6_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options6 values(seq_options_option6_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options6 values(seq_options_option6_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options6 values(seq_options_option6_idx.nextVal,'발차기 피해');		-- 90
	insert into options6 values(seq_options_option6_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options6 values(seq_options_option6_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options6 values(seq_options_option6_idx.nextVal,'화염 흡수');			-- 93
	insert into options6 values(seq_options_option6_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options6 values(seq_options_option6_idx.nextVal,'번개 흡수');			-- 95
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 흡수');			-- 97
	insert into options6 values(seq_options_option6_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options6 values(seq_options_option6_idx.nextVal,'냉기 흡수');			-- 99
	insert into options6 values(seq_options_option6_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options6 values(seq_options_option6_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options6 values(seq_options_option6_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options6 values(seq_options_option6_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options6 values(seq_options_option6_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options6 values(seq_options_option6_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options6 values(seq_options_option6_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options6 values(seq_options_option6_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options6 values(seq_options_option6_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options6 values(seq_options_option6_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options6 values(seq_options_option6_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options6 values(seq_options_option6_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options6 values(seq_options_option6_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options6 values(seq_options_option6_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options6 values(seq_options_option6_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options6 values(seq_options_option6_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options6 values(seq_options_option6_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options6 values(seq_options_option6_idx.nextVal,'암살자 전용');		-- 118
	insert into options6 values(seq_options_option6_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options6 values(seq_options_option6_idx.nextVal,'최대 지구력');	-- 120                                 
	
	                                              
	                                              
	                                              
	insert into options7 values(seq_options_option7_idx.nextVal,'한손 피해'); 		-- 1
	insert into options7 values(seq_options_option7_idx.nextVal,'양손 피해');		 	-- 2
	insert into options7 values(seq_options_option7_idx.nextVal,'투척 피해'); 		-- 3
	insert into options7 values(seq_options_option7_idx.nextVal,'총 방어력'); 		-- 4
	insert into options7 values(seq_options_option7_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options7 values(seq_options_option7_idx.nextVal,'필요 힘');			-- 6
	insert into options7 values(seq_options_option7_idx.nextVal,'필요 민첩');			-- 7
	insert into options7 values(seq_options_option7_idx.nextVal,'요구 레벨');			-- 8
	insert into options7 values(seq_options_option7_idx.nextVal,'수량');				-- 9
	insert into options7 values(seq_options_option7_idx.nextVal,'내구도');			-- 10
	insert into options7 values(seq_options_option7_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options7 values(seq_options_option7_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options7 values(seq_options_option7_idx.nextVal,'피해+');				-- 13
	insert into options7 values(seq_options_option7_idx.nextVal,'피해');				-- 14
	insert into options7 values(seq_options_option7_idx.nextVal,'힘+');				-- 15
	insert into options7 values(seq_options_option7_idx.nextVal,'민첩+');				-- 16
	insert into options7 values(seq_options_option7_idx.nextVal,'활력+');				-- 17
	insert into options7 values(seq_options_option7_idx.nextVal,'마력+');				-- 18
	insert into options7 values(seq_options_option7_idx.nextVal,'마나+');				-- 19
	insert into options7 values(seq_options_option7_idx.nextVal,'생명력+');			-- 20
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 피해+');		-- 21
	insert into options7 values(seq_options_option7_idx.nextVal,'최소 피해+');		-- 22
	insert into options7 values(seq_options_option7_idx.nextVal,'명중률+');			-- 23
	insert into options7 values(seq_options_option7_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options7 values(seq_options_option7_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options7 values(seq_options_option7_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options7 values(seq_options_option7_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options7 values(seq_options_option7_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options7 values(seq_options_option7_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options7 values(seq_options_option7_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options7 values(seq_options_option7_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options7 values(seq_options_option7_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options7 values(seq_options_option7_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options7 values(seq_options_option7_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options7 values(seq_options_option7_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options7 values(seq_options_option7_idx.nextVal,'방어력+');			-- 36
	insert into options7 values(seq_options_option7_idx.nextVal,'모든 기술+');		-- 37
	insert into options7 values(seq_options_option7_idx.nextVal,'모든 능력치+');		-- 38
	insert into options7 values(seq_options_option7_idx.nextVal,'모든 저항+');		-- 39
	insert into options7 values(seq_options_option7_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options7 values(seq_options_option7_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options7 values(seq_options_option7_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options7 values(seq_options_option7_idx.nextVal,'독 저항(%)');		-- 44
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options7 values(seq_options_option7_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options7 values(seq_options_option7_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options7 values(seq_options_option7_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options7 values(seq_options_option7_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options7 values(seq_options_option7_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options7 values(seq_options_option7_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options7 values(seq_options_option7_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options7 values(seq_options_option7_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options7 values(seq_options_option7_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options7 values(seq_options_option7_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options7 values(seq_options_option7_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options7 values(seq_options_option7_idx.nextVal,'파괴 불가');			-- 62
	insert into options7 values(seq_options_option7_idx.nextVal,'대상 빙결');			-- 63
	insert into options7 values(seq_options_option7_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options7 values(seq_options_option7_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options7 values(seq_options_option7_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options7 values(seq_options_option7_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options7 values(seq_options_option7_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options7 values(seq_options_option7_idx.nextVal,'관통공격');			-- 69
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options7 values(seq_options_option7_idx.nextVal,'생명력 회복+');		-- 73
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options7 values(seq_options_option7_idx.nextVal,'피해 감소');			-- 75
	insert into options7 values(seq_options_option7_idx.nextVal,'생명력 흡수');		-- 76
	insert into options7 values(seq_options_option7_idx.nextVal,'시야');				-- 77
	insert into options7 values(seq_options_option7_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options7 values(seq_options_option7_idx.nextVal,'화염 기술+');		-- 79
	insert into options7 values(seq_options_option7_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options7 values(seq_options_option7_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options7 values(seq_options_option7_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options7 values(seq_options_option7_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options7 values(seq_options_option7_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options7 values(seq_options_option7_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options7 values(seq_options_option7_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options7 values(seq_options_option7_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options7 values(seq_options_option7_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options7 values(seq_options_option7_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options7 values(seq_options_option7_idx.nextVal,'발차기 피해');		-- 90
	insert into options7 values(seq_options_option7_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options7 values(seq_options_option7_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options7 values(seq_options_option7_idx.nextVal,'화염 흡수');			-- 93
	insert into options7 values(seq_options_option7_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options7 values(seq_options_option7_idx.nextVal,'번개 흡수');			-- 95
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 흡수');			-- 97
	insert into options7 values(seq_options_option7_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options7 values(seq_options_option7_idx.nextVal,'냉기 흡수');			-- 99
	insert into options7 values(seq_options_option7_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options7 values(seq_options_option7_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options7 values(seq_options_option7_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options7 values(seq_options_option7_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options7 values(seq_options_option7_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options7 values(seq_options_option7_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options7 values(seq_options_option7_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options7 values(seq_options_option7_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options7 values(seq_options_option7_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options7 values(seq_options_option7_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options7 values(seq_options_option7_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options7 values(seq_options_option7_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options7 values(seq_options_option7_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options7 values(seq_options_option7_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options7 values(seq_options_option7_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options7 values(seq_options_option7_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options7 values(seq_options_option7_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options7 values(seq_options_option7_idx.nextVal,'암살자 전용');		-- 118
	insert into options7 values(seq_options_option7_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options7 values(seq_options_option7_idx.nextVal,'최대 지구력');	-- 120	                                          
	
	                                              
	                                              
	                                              
	insert into options8 values(seq_options_option8_idx.nextVal,'한손 피해'); 		-- 1
	insert into options8 values(seq_options_option8_idx.nextVal,'양손 피해');		 	-- 2
	insert into options8 values(seq_options_option8_idx.nextVal,'투척 피해'); 		-- 3
	insert into options8 values(seq_options_option8_idx.nextVal,'총 방어력'); 		-- 4
	insert into options8 values(seq_options_option8_idx.nextVal,'허리띠 크기'); 		-- 5
	insert into options8 values(seq_options_option8_idx.nextVal,'필요 힘');			-- 6
	insert into options8 values(seq_options_option8_idx.nextVal,'필요 민첩');			-- 7
	insert into options8 values(seq_options_option8_idx.nextVal,'요구 레벨');			-- 8
	insert into options8 values(seq_options_option8_idx.nextVal,'수량');				-- 9
	insert into options8 values(seq_options_option8_idx.nextVal,'내구도');			-- 10
	insert into options8 values(seq_options_option8_idx.nextVal,'피해 증가(%)');		-- 11
	insert into options8 values(seq_options_option8_idx.nextVal,'방어력 증가(%)');	-- 12
	insert into options8 values(seq_options_option8_idx.nextVal,'피해+');				-- 13
	insert into options8 values(seq_options_option8_idx.nextVal,'피해');				-- 14
	insert into options8 values(seq_options_option8_idx.nextVal,'힘+');				-- 15
	insert into options8 values(seq_options_option8_idx.nextVal,'민첩+');				-- 16
	insert into options8 values(seq_options_option8_idx.nextVal,'활력+');				-- 17
	insert into options8 values(seq_options_option8_idx.nextVal,'마력+');				-- 18
	insert into options8 values(seq_options_option8_idx.nextVal,'마나+');				-- 19
	insert into options8 values(seq_options_option8_idx.nextVal,'생명력+');			-- 20
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 피해+');		-- 21
	insert into options8 values(seq_options_option8_idx.nextVal,'최소 피해+');		-- 22
	insert into options8 values(seq_options_option8_idx.nextVal,'명중률+');			-- 23
	insert into options8 values(seq_options_option8_idx.nextVal,'공격 속도 증가(%)');	-- 24
	insert into options8 values(seq_options_option8_idx.nextVal,'시전 속도 증가(%)');	-- 25
	insert into options8 values(seq_options_option8_idx.nextVal,'타격 회복 속도 증가(%)'); -- 26
	insert into options8 values(seq_options_option8_idx.nextVal,'막기 확률 증가(%)');	-- 27
	insert into options8 values(seq_options_option8_idx.nextVal,'막기 속도(%)');		-- 28
	insert into options8 values(seq_options_option8_idx.nextVal,'달리기/걷기 속도(%)'); -- 29
	insert into options8 values(seq_options_option8_idx.nextVal,'강타 확률(%)');		-- 30
	insert into options8 values(seq_options_option8_idx.nextVal,'상처 악화 확률(%)');	-- 31
	insert into options8 values(seq_options_option8_idx.nextVal,'치명적 공격(%)');	-- 32
	insert into options8 values(seq_options_option8_idx.nextVal,'받는 물리 피해 감소(%)'); -- 33
	insert into options8 values(seq_options_option8_idx.nextVal,'적중당 마나 훔침(%)');	-- 34
	insert into options8 values(seq_options_option8_idx.nextVal,'적중당 생명력 훔침(%)');	-- 35
	insert into options8 values(seq_options_option8_idx.nextVal,'방어력+');			-- 36
	insert into options8 values(seq_options_option8_idx.nextVal,'모든 기술+');		-- 37
	insert into options8 values(seq_options_option8_idx.nextVal,'모든 능력치+');		-- 38
	insert into options8 values(seq_options_option8_idx.nextVal,'모든 저항+');		-- 39
	insert into options8 values(seq_options_option8_idx.nextVal,'화염 저항(%)');		-- 40
	insert into options8 values(seq_options_option8_idx.nextVal,'냉기 저항(%)');		-- 41
	insert into options8 values(seq_options_option8_idx.nextVal,'번개 저항(%)');		-- 42
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 저항(%)');		-- 43
	insert into options8 values(seq_options_option8_idx.nextVal,'독 저항(%)');		-- 44
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 화염 저항(%)');	-- 45
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 냉기 저항(%)');	-- 46
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 번개 저항(%)');	-- 47
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 마법 저항(%)');	-- 48
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 독 저항(%)');	-- 49
	insert into options8 values(seq_options_option8_idx.nextVal,'공격자가 피해를 받음');	-- 50
	insert into options8 values(seq_options_option8_idx.nextVal,'괴물에게서 얻는 금화 증가(%)'); -- 51
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 아이템 발견 확률 증가(%)'); -- 52
	insert into options8 values(seq_options_option8_idx.nextVal,'경험치 획득량 증가(%)'); -- 53
	insert into options8 values(seq_options_option8_idx.nextVal,'적 처치 시 생명력 증가'); -- 54
	insert into options8 values(seq_options_option8_idx.nextVal,'상점 물품 가격 하락(%)'); -- 55
	insert into options8 values(seq_options_option8_idx.nextVal,'명중률 보너스(%)');	-- 56
	insert into options8 values(seq_options_option8_idx.nextVal,'밀쳐내기(넉백)');	-- 57
	insert into options8 values(seq_options_option8_idx.nextVal,'빙결되지 않음');		-- 58
	insert into options8 values(seq_options_option8_idx.nextVal,'적중 시 대상 실명');	-- 59
	insert into options8 values(seq_options_option8_idx.nextVal,'중첩 수량 증가');	-- 60
	insert into options8 values(seq_options_option8_idx.nextVal,'수량 자동 회복');	-- 61
	insert into options8 values(seq_options_option8_idx.nextVal,'파괴 불가');			-- 62
	insert into options8 values(seq_options_option8_idx.nextVal,'대상 빙결');			-- 63
	insert into options8 values(seq_options_option8_idx.nextVal,'대상의 방어력 무시');	-- 64
	insert into options8 values(seq_options_option8_idx.nextVal,'독 지속시간 절반으로 감소'); -- 65
	insert into options8 values(seq_options_option8_idx.nextVal,'괴물 회복 저지');	-- 66
	insert into options8 values(seq_options_option8_idx.nextVal,'빙결 지속시간 절반으로 감소'); -- 67
	insert into options8 values(seq_options_option8_idx.nextVal,'생명력 회복 불가');	-- 68
	insert into options8 values(seq_options_option8_idx.nextVal,'관통공격');			-- 69
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 생명력 증가(%)'); -- 70
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 마나 증가(%)');	-- 71
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 내구도 증가(%)'); -- 72
	insert into options8 values(seq_options_option8_idx.nextVal,'생명력 회복+');		-- 73
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 피해 감소');	-- 74
	insert into options8 values(seq_options_option8_idx.nextVal,'피해 감소');			-- 75
	insert into options8 values(seq_options_option8_idx.nextVal,'생명력 흡수');		-- 76
	insert into options8 values(seq_options_option8_idx.nextVal,'시야');				-- 77
	insert into options8 values(seq_options_option8_idx.nextVal,'착용 조건-(%)');		-- 78
	insert into options8 values(seq_options_option8_idx.nextVal,'화염 기술+');		-- 79
	insert into options8 values(seq_options_option8_idx.nextVal,'공격자가 번개 피해를 받음'); -- 80
	insert into options8 values(seq_options_option8_idx.nextVal,'독 지속시간 감소(%)'); -- 81
	insert into options8 values(seq_options_option8_idx.nextVal,'지구력 회복 속도 증가(%)'); -- 82
	insert into options8 values(seq_options_option8_idx.nextVal,'받는 피해에 따른 마나 회복(%)'); -- 83
	insert into options8 values(seq_options_option8_idx.nextVal,'적중당 괴물 방어력 감소'); -- 84
	insert into options8 values(seq_options_option8_idx.nextVal,'악마에게 주는 피해(%)'); -- 85
	insert into options8 values(seq_options_option8_idx.nextVal,'언데드에게 주는 피해(%)'); -- 86
	insert into options8 values(seq_options_option8_idx.nextVal,'마나 재생(%)');		-- 87
	insert into options8 values(seq_options_option8_idx.nextVal,'악마에 대한 명중률'); -- 88
	insert into options8 values(seq_options_option8_idx.nextVal,'언데드에 대한 명중률'); -- 89
	insert into options8 values(seq_options_option8_idx.nextVal,'발차기 피해');		-- 90
	insert into options8 values(seq_options_option8_idx.nextVal,'적 처치 시 마나');	-- 91
	insert into options8 values(seq_options_option8_idx.nextVal,'화염 흡수(%)');		-- 92
	insert into options8 values(seq_options_option8_idx.nextVal,'화염 흡수');			-- 93
	insert into options8 values(seq_options_option8_idx.nextVal,'번개 흡수(%)');		-- 94
	insert into options8 values(seq_options_option8_idx.nextVal,'번개 흡수');			-- 95
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 흡수(%)');		-- 96
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 흡수');			-- 97
	insert into options8 values(seq_options_option8_idx.nextVal,'냉기 흡수(%)');		-- 98
	insert into options8 values(seq_options_option8_idx.nextVal,'냉기 흡수');			-- 99
	insert into options8 values(seq_options_option8_idx.nextVal,'대상의 방어력-(%)');	-- 100
	insert into options8 values(seq_options_option8_idx.nextVal,'원거리 공격 방어력'); -- 101
	insert into options8 values(seq_options_option8_idx.nextVal,'근접 공격 방어력');	-- 102
	insert into options8 values(seq_options_option8_idx.nextVal,'악마 처치 시 생명력'); -- 103
	insert into options8 values(seq_options_option8_idx.nextVal,'관통 공격(%)');		-- 104
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 화살 발사');	-- 105
	insert into options8 values(seq_options_option8_idx.nextVal,'폭발하는 화살 발사'); -- 106
	insert into options8 values(seq_options_option8_idx.nextVal,'화염 피해 추가');	-- 107
	insert into options8 values(seq_options_option8_idx.nextVal,'냉기 피해 추가');	-- 108
	insert into options8 values(seq_options_option8_idx.nextVal,'번개 피해 추가');	-- 109
	insert into options8 values(seq_options_option8_idx.nextVal,'마법 피해 추가');	-- 110
	insert into options8 values(seq_options_option8_idx.nextVal,'성기사 전용 스킬+'); -- 111
	insert into options8 values(seq_options_option8_idx.nextVal,'강령술사 전용 스킬+'); -- 112
	insert into options8 values(seq_options_option8_idx.nextVal,'아마존 전용 스킬+');	-- 113
	insert into options8 values(seq_options_option8_idx.nextVal,'마법사 전용 스킬+');	-- 114
	insert into options8 values(seq_options_option8_idx.nextVal,'드루이드 전용 스킬+'); -- 115
	insert into options8 values(seq_options_option8_idx.nextVal,'바바리안 전용 스킬+'); -- 116
	insert into options8 values(seq_options_option8_idx.nextVal,'암살자 전용 스킬+');	-- 117
	insert into options8 values(seq_options_option8_idx.nextVal,'암살자 전용');		-- 118
	insert into options8 values(seq_options_option8_idx.nextVal,'성기사 강타 피해');	-- 119
	insert into options8 values(seq_options_option8_idx.nextVal,'최대 지구력');	-- 120	                                          
	
		
	
	

	

	
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'방어력'); 		-- 3
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'내구도'); 		-- 4
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'필요 민첩');	-- 6
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'요구 레벨');	-- 7
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'막기 확률');	-- 9
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'투척 피해');	-- 11
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'수량');			-- 12
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'암살자 전용');	-- 13
	insert into gibon_option1 values(seq_gibon_option1.nextVal,'공격 속도');	-- 14

	
	

	
	
	
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'방어력'); 		-- 3
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'내구도'); 		-- 4
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'필요 민첩');	-- 6
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'요구 레벨');	-- 7
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'막기 확률');	-- 9
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'투척 피해');	-- 11
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'수량');			-- 12
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'암살자 전용');	-- 13
	insert into gibon_option2 values(seq_gibon_option2.nextVal,'공격 속도');	-- 14
	
	
	

	
	
	
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'방어력'); 		-- 3
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'내구도'); 		-- 4
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'필요 민첩');	-- 6
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'요구 레벨');	-- 7
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'막기 확률');	-- 9
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'투척 피해');	-- 11
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'수량');			-- 12
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'암살자 전용');	-- 13
	insert into gibon_option3 values(seq_gibon_option3.nextVal,'공격 속도');	-- 14	
	

	
	
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'방어력'); 		-- 3
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'내구도'); 		-- 4
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'필요 민첩');	-- 6
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'요구 레벨');	-- 7
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'막기 확률');	-- 9
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'투척 피해');	-- 11
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'수량');			-- 12
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'암살자 전용');	-- 13
	insert into gibon_option4 values(seq_gibon_option4.nextVal,'공격 속도');	-- 14	
	
	
	
	
	
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'방어력'); 		-- 3
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'내구도'); 		-- 4
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'필요 민첩');	-- 6
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'요구 레벨');	-- 7
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'막기 확률');	-- 9
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'투척 피해');	-- 11
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'수량');			-- 12
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'암살자 전용');	-- 13
	insert into gibon_option5 values(seq_gibon_option5.nextVal,'공격 속도');	-- 14
	

	
	
	
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'방어력'); 		-- 3
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'내구도'); 		-- 4
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'필요 민첩');	-- 6
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'요구 레벨');	-- 7
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'막기 확률');	-- 9
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'투척 피해');	-- 11
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'수량');			-- 12
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'암살자 전용');	-- 13
	insert into gibon_option6 values(seq_gibon_option6.nextVal,'공격 속도');	-- 14
	
	

	
	
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'한손 피해'); 	-- 1
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'양손 피해'); 	-- 2
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'방어력'); 		-- 3
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'내구도'); 		-- 4
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'필요 힘'); 		-- 5
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'필요 민첩');	-- 6
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'요구 레벨');	-- 7
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'허리띠 크기');	-- 8
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'막기 확률');	-- 9
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'성기사 강타 피해');	-- 10
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'투척 피해');	-- 11
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'수량');			-- 12
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'암살자 전용');	-- 13
	insert into gibon_option7 values(seq_gibon_option7.nextVal,'공격 속도');	-- 14
	
	
	
	
	
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	-------------------------------- 끝 ------------------------------------------------------------------------------
	
	
	
	
	
	
	
	
	---------------------------------- 여기서부턴 안봐도 됨
		-- 3. items 변동옵션 제약조건 넣기
	
	-- ㅁㅁㅁ 변동옵션 제약조건
	alter table items
		add constraint ck_item_defense_val check(gibon_option1_val between 296 and 342);
	alter table items
		add constraint ck_item_o1_val check(item_o1_val between 9 and 12);
	alter table items
		add constraint ck_item_o2_val check(item_o2_val between 160 and 200);
	alter table items
		add constraint ck_item_o7_val check(item_o7_val between 80 and 100);
	
	-- 아이템 제약조건 설정
	
	alter table items
		add constraint pk_items_item_idx primary key (item_idx);
	
	alter table items
		add constraint unique_items_item unique (item_name);
	
	-- item_im 무형 타입 제한
	alter table items
		add constraint ck_item_im check(item_im in ('수리가능','수리불가'));
		
	-- item_shot 솟개수제한
	alter table items
		add constraint ck_item_shot check(item_shot between 0 and 4);
		
	-- foreign key(foreign key는 안넣어도됨 만약을 위해서 냅둠)
	alter table items
		add constraint fk_items_item_o1 foreign key(option1_idx)
										references options(option1_idx);
	alter table items
		add constraint fk_items_item_o2 foreign key(option2_idx)
										references options2(option2_idx);									
										
	-- foreign key
	alter table items
		add constraint fk_gibon_option1 foreign key(gibon_option1)
										references gibon_option1(gibon_option1);
	alter table items
		add constraint fk_gibon_option2 foreign key(gibon_option2)
										references gibon_option2(gibon_option2);
	-- foreign key delete
	alter table items drop constraint fk_gibon_option1;
	alter table items drop constraint fk_gibon_option2;
	alter table items drop constraint fk_gibon_option3;
	alter table items drop constraint fk_gibon_option4;
	
	
	
	
	-- 3. items 변동옵션 제약조건 넣기
	
	-- ㅁㅁㅁ 변동옵션 제약조건
	alter table items2
		add constraint ck_item2_defense_val check(gibon_option1_val between 349 and 399);
	alter table items2
		add constraint ck_item2_o5_val check(item_o5_val between 100 and 150);
	alter table items2
		add constraint ck_item2_o6_val check(item_o6_val between 20 and 30);
	alter table items2
		add constraint ck_item2_o7_val check(item_o7_val between 10 and 15);
		
	-- 아이템 제약조건 설정
	
	alter table items2
		add constraint pk_items_item_idx primary key (item_idx);
	
	alter table items2
		add constraint unique_items_item unique (item_name);
	
	-- item_im 무형 타입 제한
	alter table items
		add constraint ck_item_im check(item_im in ('수리가능','수리불가'));
		
	-- item_shot 솟개수제한
	alter table items
		add constraint ck_item_shot check(item_shot between 0 and 4);
		
		
		
			-- 3. items 변동옵션 제약조건 넣기
	
	-- ㅁㅁㅁ 변동옵션 제약조건
	alter table items3
		add constraint ck_gibon_option1_val check(gibon_option1_val between 99 and 113);
	alter table items3
		add constraint ck_item3_o2_val check(item_o2_val between 50 and 100);
	alter table items3
		add constraint ck_item3_o5_val check(item_o5_val between 30 and 60);
			
	-- 아이템 제약조건 설정
	
	alter table items
		add constraint pk_items_item_idx primary key (item_idx);
	
	alter table items
		add constraint unique_items_item unique (item_name);
	
	-- item_im 무형 타입 제한
	alter table items
		add constraint ck_item_im check(item_im in ('수리가능','수리불가'));
		
	-- item_shot 솟개수제한
	alter table items
		add constraint ck_item_shot check(item_shot between 0 and 4);
		
		
		
		
	-- 3. items 변동옵션 제약조건 넣기
	
	-- ㅁㅁㅁ 변동옵션 제약조건
	alter table items4
		add constraint ck_item4_attack_val1 check(gibon_option1_val between 28 and 32);
	alter table items4
		add constraint ck_item4_attack_val2 check(gibon_option2_val between 50 and 56);
	alter table items4
		add constraint ck_item4_o1_val check(item_o1_val between 80 and 100);
	alter table items4
		add constraint ck_item4_o2_val check(item_o2_val between 100 and 150);
	alter table items4
		add constraint ck_item4_o3_val check(item_o3_val between 20 and 40);
		
	-- 아이템 제약조건 설정
	
	alter table items
		add constraint pk_items_item_idx primary key (item_idx);
	
	alter table items
		add constraint unique_items_item unique (item_name);
		
	
	-- item_im 무형 타입 제한
	alter table items
		add constraint ck_item_im check(item_im in ('수리가능','수리불가'));
		
	-- item_shot 솟개수제한
	alter table items
		add constraint ck_item_shot check(item_shot between 0 and 4);
		
		
	
		
		
		
		
	-- item option 제작소
		
		
		select * from trade_order_by_view
		where option_name1 like '방어력'
		or    option_name2 like '방어력'
		or    option_name3 like '방어력'
		or    option_name4 like '방어력'
		or    option_name5 like '방어력'
		or    option_name6 like '방어력'
		or    option_name7 like '방어력'
	
	select * from trade_order_by_view
		where option_name1 = '방어력'
		or    option_name2 = '방어력'
		or    option_name3 = '방어력'
		or    option_name4 = '방어력'
		or    option_name5 = '방어력'
		or    option_name6 = '방어력'
		or    option_name7 = '방어력'

	-- option name + option val
	create or replace view trade_order_by_view2
	as
	select s.*, option_name1 || item_o1_val as option1, 
	option_name2 || item_o2_val as option2, 
	option_name3 || item_o3_val as option3, 
	option_name4 || item_o4_val as option4, 
	option_name5 || item_o5_val as option5, 
	option_name6 || item_o6_val as option6, 
	option_name7 || item_o7_val as option7 
	from
	(select * from trade_order_by_view)s
	
	select * from trade_order_by_view2
	where option5 substring
	
	
	select s3.* from
	(select s2.* from
	(select s.* from
	(select * from trade_order_by_view
		where option_name1 = '방어력' and item_o1_val>=10
		or    option_name2 = '방어력' and item_o2_val>=10		
		or    option_name3 = '방어력' and item_o3_val>=10		
		or    option_name4 = '방어력' and item_o4_val>=10		
		or    option_name5 = '방어력' and item_o5_val>=10		
		or    option_name6 = '방어력' and item_o6_val>=10		
		or    option_name7 = '방어력' and item_o7_val>=10)
		s
		where option_name1 like '파괴불가'
		or	  option_name2 like '파괴불가'
		or	  option_name3 like '파괴불가'
		or	  option_name4 like '파괴불가'
		or	  option_name5 like '파괴불가'
		or	  option_name6 like '파괴불가'
		or	  option_name7 like '파괴불가')s2
		where option_name1 like '모든 저항' and item_o1_val>=10
		or option_name2 = '모든 저항' and item_o2_val>=10
		or option_name3 = '모든 저항' and item_o3_val>=10
		or option_name4 = '모든 저항' and item_o4_val>=10
		or option_name5 = '모든 저항' and item_o5_val>=10
		or option_name6 = '모든 저항' and item_o6_val>=10
		or option_name7 = '모든 저항' and item_o7_val>=10)s3
		where option_name1 = '방어력 증가' and item_o1_val>=10
		or option_name2 = '방어력 증가' and item_o2_val>=10
		or option_name3 = '방어력 증가' and item_o3_val>=10
		or option_name4 = '방어력 증가' and item_o4_val>=10
		or option_name5 = '방어력 증가' and item_o5_val>=10
		or option_name6 = '방어력 증가' and item_o6_val>=10
		or option_name7 = '방어력 증가' and item_o7_val>=10
		where item_type = '투구'
		
		
		or	  option_name1 = '방어력 증가' and item_o1_val>40
		or	  option_name2 = '방어력 증가' and item_o2_val>40
		or	  option_name3 = '방어력 증가' and item_o3_val>40
		or	  option_name4 = '방어력 증가' and item_o4_val>40
		or	  option_name5 = '방어력 증가' and item_o5_val>40
		or	  option_name6 = '방어력 증가' and item_o6_val>40
		or	  option_name7 = '방어력 증가' and item_o7_val>40
		or	  option_name1 like '파괴불가'
		or	  option_name2 like '파괴불가'
		or	  option_name3 like '파괴불가'
		or	  option_name4 like '파괴불가'
		or	  option_name5 like '파괴불가'
		or	  option_name6 like '파괴불가'
		or	  option_name7 like '파괴불가'
		
		
	select * from trade_order_by_view
		where option_name6 = '방어력' and item_o6_val>=10 and option_name1 like '파괴불가'
	
	
	select * from trade_order_by_view
		where 기본옵션명1 like '요구 레벨' and gibon_option1_val>20
		or    기본옵션명2 like '요구 레벨' and gibon_option2_val>20
		or    기본옵션명3 like '요구 레벨' and gibon_option3_val>20
		or    기본옵션명4 like '요구 레벨' and gibon_option4_val>20
		or    기본옵션명5 like '요구 레벨' and gibon_option5_val>20
		or    기본옵션명6 like '요구 레벨' and gibon_option6_val>20
		or    기본옵션명7 like '요구 레벨' and gibon_option7_val>20
	
	
	(SELECT * FROM trade_view)
	UNION ALL
	(SELECT * FROM items4_item_o1_view);
	
	create or replace view trade_view_add
	as
	select
	
	form trade_view t outer join items4_item_o1_view i4 on 
	
	
	
	select * from trade_view
		where 옵션명1 like '방어력' and item_o1_val>20
		or    옵션명2 like '방어력' and item_o2_val>20
		or    옵션명3 like '방어력' and item_o3_val>20
		or    옵션명4 like '방어력' and item_o4_val>20
		or    옵션명5 like '방어력' and item_o5_val>20
		or    옵션명6 like '방어력' and item_o6_val>20
		or    옵션명7 like '방어력' and item_o7_val>20
		
	select * from trade_view
		where item_shot<4
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	-- option1_idx 부모키 지정
	alter table options
		add constraint pk_options_option_idx primary key (option1_idx);
	-- option2_idx 부모키 지정
	alter table options2
		add constraint pk_options_option2_idx primary key (option2_idx);
	-- option2_idx 부모키 지정
	alter table options3
		add constraint pk_options_option3_idx primary key (option3_idx);
	-- option2_idx 부모키 지정
	alter table options4
		add constraint pk_options_option4_idx primary key (option4_idx);
	-- option2_idx 부모키 지정
	alter table options5
		add constraint pk_options_option5_idx primary key (option5_idx);
	-- option2_idx 부모키 지정
	alter table options6
		add constraint pk_options_option6_idx primary key (option6_idx);
	-- option2_idx 부모키 지정
	alter table options7
		add constraint pk_options_option7_idx primary key (option7_idx);
	-- option8_idx 부모키 지정
	alter table options8
		add constraint pk_options_option8_idx primary key (option8_idx);
		
		
		
		
		
		
			
	drop sequence seq_options_option_idx;
	drop sequence seq_options2_option2_idx;
	drop sequence seq_options3_option3_idx;
	drop sequence seq_options4_option4_idx;
	drop sequence seq_options5_option5_idx;
	drop sequence seq_options6_option6_idx;
	drop sequence seq_options7_option7_idx;
	drop sequence seq_options8_option8_idx;
	
	
	
	
	drop table options;
	drop table options2;
	drop table options3;
	drop table options4;
	drop table options5;
	drop table options6;
	drop table options7;
	drop table options8;
		
		
		
		
		
		
		
		
		
		
		
		
		insert into options2 values(seq_options2_option2_idx.nextVal,'적중당 생명력 훔침');
	insert into options2 values(seq_options2_option2_idx.nextVal,'방어력 증가');
	insert into options2 values(seq_options2_option2_idx.nextVal,'민첩');
	insert into options2 values(seq_options2_option2_idx.nextVal,'생명력');
	insert into options2 values(seq_options2_option2_idx.nextVal,'마나');
	insert into options2 values(seq_options2_option2_idx.nextVal,'화염저항');
	insert into options2 values(seq_options2_option2_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options2 values(seq_options2_option2_idx.nextVal,'파괴불가');
	insert into options2 values(seq_options2_option2_idx.nextVal,'모든 기술');
	insert into options2 values(seq_options2_option2_idx.nextVal,'타격 회복 속도');
	insert into options2 values(seq_options2_option2_idx.nextVal,'방어력');
	insert into options2 values(seq_options2_option2_idx.nextVal,'모든 저항');
	insert into options2 values(seq_options2_option2_idx.nextVal,'받는 물리 피해 감소');
	insert into options2 values(seq_options2_option2_idx.nextVal,'언데드에게 주는 피해');
	insert into options2 values(seq_options2_option2_idx.nextVal,'언데드에게 대한 명중률');
	insert into options2 values(seq_options2_option2_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options2 values(seq_options2_option2_idx.nextVal,'독 저항');
	insert into options2 values(seq_options2_option2_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options2 values(seq_options2_option2_idx.nextVal,'피해 증가');
	insert into options2 values(seq_options2_option2_idx.nextVal,'명중률');
	insert into options2 values(seq_options2_option2_idx.nextVal,'화염 피해 추가');
	insert into options2 values(seq_options2_option2_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options2 values(seq_options2_option2_idx.nextVal,'마나');
	insert into options2 values(seq_options2_option2_idx.nextVal,'빈옵션');
	
	insert into options3 values(seq_options3_option3_idx.nextVal,'적중당 생명력 훔침');
	insert into options3 values(seq_options3_option3_idx.nextVal,'방어력 증가');
	insert into options3 values(seq_options3_option3_idx.nextVal,'민첩');
	insert into options3 values(seq_options3_option3_idx.nextVal,'생명력');
	insert into options3 values(seq_options3_option3_idx.nextVal,'마나');
	insert into options3 values(seq_options3_option3_idx.nextVal,'화염저항');
	insert into options3 values(seq_options3_option3_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options3 values(seq_options3_option3_idx.nextVal,'파괴불가');
	insert into options3 values(seq_options3_option3_idx.nextVal,'모든 기술');
	insert into options3 values(seq_options3_option3_idx.nextVal,'타격 회복 속도');
	insert into options3 values(seq_options3_option3_idx.nextVal,'방어력');
	insert into options3 values(seq_options3_option3_idx.nextVal,'모든 저항');
	insert into options3 values(seq_options3_option3_idx.nextVal,'받는 물리 피해 감소');
	insert into options3 values(seq_options3_option3_idx.nextVal,'언데드에게 주는 피해');
	insert into options3 values(seq_options3_option3_idx.nextVal,'언데드에게 대한 명중률');
	insert into options3 values(seq_options3_option3_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options3 values(seq_options3_option3_idx.nextVal,'독 저항');
	insert into options3 values(seq_options3_option3_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options3 values(seq_options3_option3_idx.nextVal,'피해 증가');
	insert into options3 values(seq_options3_option3_idx.nextVal,'명중률');
	insert into options3 values(seq_options3_option3_idx.nextVal,'화염 피해 추가');
	insert into options3 values(seq_options3_option3_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options3 values(seq_options3_option3_idx.nextVal,'마나');
	insert into options3 values(seq_options3_option3_idx.nextVal,'빈옵션');
	
	insert into options4 values(seq_options4_option4_idx.nextVal,'적중당 생명력 훔침');
	insert into options4 values(seq_options4_option4_idx.nextVal,'방어력 증가');
	insert into options4 values(seq_options4_option4_idx.nextVal,'민첩');
	insert into options4 values(seq_options4_option4_idx.nextVal,'생명력');
	insert into options4 values(seq_options4_option4_idx.nextVal,'마나');
	insert into options4 values(seq_options4_option4_idx.nextVal,'화염저항');
	insert into options4 values(seq_options4_option4_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options4 values(seq_options4_option4_idx.nextVal,'파괴불가');
	insert into options4 values(seq_options4_option4_idx.nextVal,'모든 기술');
	insert into options4 values(seq_options4_option4_idx.nextVal,'타격 회복 속도');
	insert into options4 values(seq_options4_option4_idx.nextVal,'방어력');
	insert into options4 values(seq_options4_option4_idx.nextVal,'모든 저항');
	insert into options4 values(seq_options4_option4_idx.nextVal,'받는 물리 피해 감소');
	insert into options4 values(seq_options4_option4_idx.nextVal,'언데드에게 주는 피해');
	insert into options4 values(seq_options4_option4_idx.nextVal,'언데드에게 대한 명중률');
	insert into options4 values(seq_options4_option4_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options4 values(seq_options4_option4_idx.nextVal,'독 저항');
	insert into options4 values(seq_options4_option4_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options4 values(seq_options4_option4_idx.nextVal,'피해 증가');
	insert into options4 values(seq_options4_option4_idx.nextVal,'명중률');
	insert into options4 values(seq_options4_option4_idx.nextVal,'화염 피해 추가');
	insert into options4 values(seq_options4_option4_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options4 values(seq_options4_option4_idx.nextVal,'마나');
	insert into options4 values(seq_options4_option4_idx.nextVal,'빈옵션');
	
	insert into options5 values(seq_options5_option5_idx.nextVal,'적중당 생명력 훔침');
	insert into options5 values(seq_options5_option5_idx.nextVal,'방어력 증가');
	insert into options5 values(seq_options5_option5_idx.nextVal,'민첩');
	insert into options5 values(seq_options5_option5_idx.nextVal,'생명력');
	insert into options5 values(seq_options5_option5_idx.nextVal,'마나');
	insert into options5 values(seq_options5_option5_idx.nextVal,'화염저항');
	insert into options5 values(seq_options5_option5_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options5 values(seq_options5_option5_idx.nextVal,'파괴불가');
	insert into options5 values(seq_options5_option5_idx.nextVal,'모든 기술');
	insert into options5 values(seq_options5_option5_idx.nextVal,'타격 회복 속도');
	insert into options5 values(seq_options5_option5_idx.nextVal,'방어력');
	insert into options5 values(seq_options5_option5_idx.nextVal,'모든 저항');
	insert into options5 values(seq_options5_option5_idx.nextVal,'받는 물리 피해 감소');
	insert into options5 values(seq_options5_option5_idx.nextVal,'언데드에게 주는 피해');
	insert into options5 values(seq_options5_option5_idx.nextVal,'언데드에게 대한 명중률');
	insert into options5 values(seq_options5_option5_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options5 values(seq_options5_option5_idx.nextVal,'독 저항');
	insert into options5 values(seq_options5_option5_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options5 values(seq_options5_option5_idx.nextVal,'피해 증가');
	insert into options5 values(seq_options5_option5_idx.nextVal,'명중률');
	insert into options5 values(seq_options5_option5_idx.nextVal,'화염 피해 추가');
	insert into options5 values(seq_options5_option5_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options5 values(seq_options5_option5_idx.nextVal,'마나');
	insert into options5 values(seq_options5_option5_idx.nextVal,'빈옵션');
	
	insert into options6 values(seq_options6_option6_idx.nextVal,'적중당 생명력 훔침');
	insert into options6 values(seq_options6_option6_idx.nextVal,'방어력 증가');
	insert into options6 values(seq_options6_option6_idx.nextVal,'민첩');
	insert into options6 values(seq_options6_option6_idx.nextVal,'생명력');
	insert into options6 values(seq_options6_option6_idx.nextVal,'마나');
	insert into options6 values(seq_options6_option6_idx.nextVal,'화염저항');
	insert into options6 values(seq_options6_option6_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options6 values(seq_options6_option6_idx.nextVal,'파괴불가');
	insert into options6 values(seq_options6_option6_idx.nextVal,'모든 기술');
	insert into options6 values(seq_options6_option6_idx.nextVal,'타격 회복 속도');
	insert into options6 values(seq_options6_option6_idx.nextVal,'방어력');
	insert into options6 values(seq_options6_option6_idx.nextVal,'모든 저항');
	insert into options6 values(seq_options6_option6_idx.nextVal,'받는 물리 피해 감소');
	insert into options6 values(seq_options6_option6_idx.nextVal,'언데드에게 주는 피해');
	insert into options6 values(seq_options6_option6_idx.nextVal,'언데드에게 대한 명중률');
	insert into options6 values(seq_options6_option6_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options6 values(seq_options6_option6_idx.nextVal,'독 저항');
	insert into options6 values(seq_options6_option6_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options6 values(seq_options6_option6_idx.nextVal,'피해 증가');
	insert into options6 values(seq_options6_option6_idx.nextVal,'명중률');
	insert into options6 values(seq_options6_option6_idx.nextVal,'화염 피해 추가');
	insert into options6 values(seq_options6_option6_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options6 values(seq_options6_option6_idx.nextVal,'마나');
	insert into options6 values(seq_options6_option6_idx.nextVal,'빈옵션');
	
	insert into options7 values(seq_options7_option7_idx.nextVal,'적중당 생명력 훔침');
	insert into options7 values(seq_options7_option7_idx.nextVal,'방어력 증가');
	insert into options7 values(seq_options7_option7_idx.nextVal,'민첩');
	insert into options7 values(seq_options7_option7_idx.nextVal,'생명력');
	insert into options7 values(seq_options7_option7_idx.nextVal,'마나');
	insert into options7 values(seq_options7_option7_idx.nextVal,'화염저항');
	insert into options7 values(seq_options7_option7_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options7 values(seq_options7_option7_idx.nextVal,'파괴불가');
	insert into options7 values(seq_options7_option7_idx.nextVal,'모든 기술');
	insert into options7 values(seq_options7_option7_idx.nextVal,'타격 회복 속도');
	insert into options7 values(seq_options7_option7_idx.nextVal,'방어력');
	insert into options7 values(seq_options7_option7_idx.nextVal,'모든 저항');
	insert into options7 values(seq_options7_option7_idx.nextVal,'받는 물리 피해 감소');
	insert into options7 values(seq_options7_option7_idx.nextVal,'언데드에게 주는 피해');
	insert into options7 values(seq_options7_option7_idx.nextVal,'언데드에게 대한 명중률');
	insert into options7 values(seq_options7_option7_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options7 values(seq_options7_option7_idx.nextVal,'독 저항');
	insert into options7 values(seq_options7_option7_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options7 values(seq_options7_option7_idx.nextVal,'피해 증가');
	insert into options7 values(seq_options7_option7_idx.nextVal,'명중률');
	insert into options7 values(seq_options7_option7_idx.nextVal,'화염 피해 추가');
	insert into options7 values(seq_options7_option7_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options7 values(seq_options7_option7_idx.nextVal,'마나');
	insert into options7 values(seq_options7_option7_idx.nextVal,'빈옵션');
	
	
	insert into options8 values(seq_options8_option8_idx.nextVal,'적중당 생명력 훔침');
	insert into options8 values(seq_options8_option8_idx.nextVal,'방어력 증가');
	insert into options8 values(seq_options8_option8_idx.nextVal,'민첩');
	insert into options8 values(seq_options8_option8_idx.nextVal,'생명력');
	insert into options8 values(seq_options8_option8_idx.nextVal,'마나');
	insert into options8 values(seq_options8_option8_idx.nextVal,'화염저항');
	insert into options8 values(seq_options8_option8_idx.nextVal,'괴물에게서 얻는 금화 증가');
	insert into options8 values(seq_options8_option8_idx.nextVal,'파괴불가');
	insert into options8 values(seq_options8_option8_idx.nextVal,'모든 기술');
	insert into options8 values(seq_options8_option8_idx.nextVal,'타격 회복 속도');
	insert into options8 values(seq_options8_option8_idx.nextVal,'방어력');
	insert into options8 values(seq_options8_option8_idx.nextVal,'모든 저항');
	insert into options8 values(seq_options8_option8_idx.nextVal,'받는 물리 피해 감소');
	insert into options8 values(seq_options8_option8_idx.nextVal,'언데드에게 주는 피해');
	insert into options8 values(seq_options8_option8_idx.nextVal,'언데드에게 대한 명중률');
	insert into options8 values(seq_options8_option8_idx.nextVal,'해골 숙련(강령술사 전용)');
	insert into options8 values(seq_options8_option8_idx.nextVal,'독 저항');
	insert into options8 values(seq_options8_option8_idx.nextVal,'빙결 지속시간 절반으로 감소');
	insert into options8 values(seq_options8_option8_idx.nextVal,'피해 증가');
	insert into options8 values(seq_options8_option8_idx.nextVal,'명중률');
	insert into options8 values(seq_options8_option8_idx.nextVal,'화염 피해 추가');
	insert into options8 values(seq_options8_option8_idx.nextVal,'신성한 불꽃(성기사 전용)');
	insert into options8 values(seq_options8_option8_idx.nextVal,'마나');
	insert into options8 values(seq_options8_option8_idx.nextVal,'빈옵션');
	
*/