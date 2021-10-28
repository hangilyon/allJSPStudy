package com.care.root.board.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.care.root.board.dto.BoardDTO;
import com.care.root.paging.PageCount;

import jdk.jshell.spi.ExecutionControl.ExecutionControlException;

public class BoardDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
		
	public BoardDAO() {
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,"han","rlfdyd0603");
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<BoardDTO> list(int start, int end){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		//String sql = "select * from test_board";
		//String sql = "select * from test_board order by idgroup desc, step asc";
		String sql = "select B.* from(select rownum rn, A.* from"
				+ "(select * from test_board order by idgroup desc, step asc)A)B where rn between ? and ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setId(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				
				dto.setSavedate(rs.getTimestamp("savedate"));
				
				list.add(dto);
			}
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public void writeSave(String name, String title, String content) {
		String sql = "insert into test_board(id,name,title,content,idgroup,step,indent) "
				+ "values(test_board_seq.nextval,?,?,?,test_board_seq.currval,0,0)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, title);
			ps.setString(3, content);
			
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public BoardDTO contentView(int id, int flag) {
		if(flag == 1) {
			upHit(id);
		}
		
		BoardDTO dto = new BoardDTO();
		String sql = "select * from test_board where id ="+id;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				dto.setId(rs.getInt("id"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				
				dto.setSavedate(rs.getTimestamp("savedate"));
				
				return dto;
			}
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return dto;
	}
	private void upHit(int id) {
		String sql = "update test_board set hit = hit + 1 where id ="+id;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	public void modify(String id, String name, String title, String content) {
		String sql = "update test_board set "
				+ "name = ?, title = ?, content = ? where id = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, title);
			ps.setString(3, content);
			ps.setString(4, id);
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void delete(String id) {
		String sql = "delete from test_board where id = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	public void reply(BoardDTO dto) {
		replyShape(dto);
		String sql = "insert into test_board(id, name, title, content, idgroup, step, indent) "
				+ "values(test_board_seq.nextval, ?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(4, dto.getIdgroup());
			ps.setInt(5, dto.getStep()+1);
			ps.setInt(6, dto.getIndent()+1);
			
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	public void replyShape(BoardDTO dto) {
		String sql = "update test_board set step=step+1 where idgroup=? and step>?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, dto.getIdgroup());
			ps.setInt(2, dto.getStep());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	public int getTotalPage() {
		String sql = "select count(*) from test_board";
		int totPage = 0;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				totPage = rs.getInt(1);
			}
			return totPage;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return totPage;
	}
	public PageCount pagingNum(int start) {
		PageCount pc = new PageCount();
		if(start == 0) {
			start = 1;
		}
		int pageNum = 3;
		int totalPage = getTotalPage();
		
		int totEndPage = totalPage / pageNum;
		if(totalPage%pageNum != 0 ) {
			totEndPage++;
		}
		
		int endPage = start * pageNum;
		int startPage = endPage +1 - pageNum;
		
		pc.setStartPage(startPage);
		pc.setEndPage(endPage);
		pc.setTotEndPage(totEndPage);
		
		return pc;
	}
 }










































