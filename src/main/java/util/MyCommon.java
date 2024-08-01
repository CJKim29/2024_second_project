package util;

public class MyCommon {

	public static class Photo{
		
		public static final int BLOCK_LIST = 8;	//한 화면에 보여질 게시물 수
		public static final int BLOCK_PAGE = 3;	//한 화면에 보여질 페이지 수
	}
	
	// 게시판 페이징정보
	public static class Board {
		public static final int BLOCK_LIST = 8; // 한 화면에 보여질 게시물 수
		public static final int BLOCK_PAGE = 5; // 한 화면에 보여질 페이지 수
	}
		
	// 댓글 페이징정보
	public static class Comment {
		public static final int BLOCK_LIST = 3; // 한 화면에 보여질 게시물 수
		public static final int BLOCK_PAGE = 5; // 한 화면에 보여질 페이지 수
	}
}