package member;

public class MemberDAO {
	public MemberDAO() {
		System.out.println("생성자 실행???");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이브 로드 성공!!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("누리호 로켓 실패!!!!");
			e.printStackTrace();
		}
	}
	public int register(MemberDTO dto) {
		System.out.println("디비에 저장 되었습니다.");
		System.out.println(dto.getId());
		System.out.println(dto.getPwd());
		System.out.println(dto.getName());
		System.out.println(dto.getAddr());
		System.out.println(dto.getTel());
		return 1;
	}
}
