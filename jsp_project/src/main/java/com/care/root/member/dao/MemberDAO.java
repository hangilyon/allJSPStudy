package com.care.root.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.care.root.member.dto.MemberDTO;

public class MemberDAO {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,"han","rlfdyd0603");
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public ArrayList<MemberDTO> memberView(){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		/*for(int i=0;i<5;i++) {
			MemberDTO d = new MemberDTO();
			d.setId("aaa0"+i);
			d.setPwd("aaa0"+i);
			d.setName("홍길동0"+i);
			d.setAddr("산골짜기0"+i);
			list.add(d);
		}*/
		String sql="select * from jsp_member";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				list.add(dto);
			}
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public int insertMem(MemberDTO dto) {
		//DB에 저장
		/*System.out.println("데이터 베이스 저장");
		System.out.println(dto.getId());
		System.out.println(dto.getPwd());
		System.out.println(dto.getName());
		System.out.println(dto.getAddr());*/
		String sql="insert into jsp_member(id,pwd,name,addr) values(?,?,?,?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			result = ps.executeUpdate(); // 성공하면 1 , 실패하면 에러 또는 0
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	public MemberDTO memberInfo(String userId) {
		String sql = "select* from jsp_member where id = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("Pwd"));
				dto.setName(rs.getString("Name"));
				dto.setAddr(rs.getString("Addr"));
				return dto;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	public int modify_save(MemberDTO dto) {
		String sql = "update jsp_member set addr=?,name=?,pwd=? where id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAddr());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getPwd());
			ps.setString(4, dto.getId());
			result = ps.executeUpdate();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	public int delete(String userId) {
		int result = 0;
		System.out.println(userId);
		String sql = "delete from jsp_member where id='"+userId+"'";
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	public int checkId(String userId) {
		int result = 0;
		String sql = "select id from jsp_member where id='"+userId+"'";
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	public int checkPwd(String userPwd) {
		int result = 0;
		String sql = "select pwd from jsp_member where pwd='"+userPwd+"'";
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
}