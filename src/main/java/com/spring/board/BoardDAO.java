package com.spring.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAO { 
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
	int result = sqlSession.insert("Board.insertBoard", vo); 
	return result;
	}
	
	public BoardVO getBoard(int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard",seq);
		return one;
	}
	
	public List<BoardVO> getBoardList() {
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}
	
	public int deleteBoard(int seq) {
		int i = sqlSession.delete("Board.deleteBoard",seq);
		return i;
		
	}
	
	public int updateBoard(BoardVO vo) {
		int j = sqlSession.update("Board.updateBoard", vo);
		return j;
	}

}