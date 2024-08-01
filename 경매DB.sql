/*

drop sequence seq_auction_idx

drop table auction


create sequence seq_auction_idx

create table auction
(
	a_idx				int,					-- 경매(판매)번호
	a_initial_price		int default 0,			-- 최초경매가
	a_direct_price		int default 0,			-- 즉시구매가
	a_regtime			date default sysdate,	-- 등록시간
	a_selltime			varchar2(100) not null,	-- 판매시간
	a_sledding			varchar2(1) default 'y',-- 진행상태(진행중'y'-완료'n')
	item_idx			int,					-- 아이템일련번호(거래번호)
	mem_idx				int,					-- 판매자회원번호
	mem_name			varchar2(100) not null,	-- 판매자명
	mem_point			int						-- 판매자 보유 포인트
)

alter table auction
	add constraint pk_auction_idx primary key(a_idX);
	
alter table auction
	add constraint fk_auction_item_idx foreign key(item_idx)
								       references items(item_idx);	
								       
alter table auction
	add constraint fk_auction_member_idx foreign key(mem_idx)
								         references member(mem_idx);	
								         							
drop view list_view
        
 create or replace view auction_list_view
    as
    select
        t.*,a.a_idx,a.a_initial_price,a.a_direct_price,a_regtime,a_selltime,a_sledding,mem_idx,mem_name,a.item_idx as itemno
    from trade_order_by_view t inner join auction a on t.item_idx = a.item_idx     								         								         

		select * from
		(
			select
				rank() over(order by item_idx desc) as no,
				i.*
			from
				(select * from list_view) i
		)
		where no between 1 and 5

*/