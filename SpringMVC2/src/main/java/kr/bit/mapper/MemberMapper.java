package kr.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.bit.model.MemberVO;

//@Mapper
public interface MemberMapper {	
	@Select("select * from member")
	public List<MemberVO> memberList(); // -- SQL id="memberList"	
	@Insert(" insert into member(id, pass, name, age, email, phone)\r\n" + 
			"        values(\r\n" + 
			"        #{id},\r\n" + 
			"        #{pass},\r\n" + 
			"        #{name},\r\n" + 
			"        #{age},\r\n" + 
			"        #{email},\r\n" + 
			"        #{phone}\r\n" + 
			"        )")
	public int memberInsert(MemberVO vo);// -- SQL id="memberInsert"
	
	@Delete("delete from member where num=#{num}")
	public int memberDelete(int num);// -- SQL id="memberDelete"
	
	@Select("select * from member where num=#{num}")
	public MemberVO memberContent(int num);// -- SQL id="memberContent"	
	@Update(" update member \r\n" + 
			"         set age=#{age}, email=#{email}, phone=#{phone} \r\n" + 
			"         where num=#{num}")
	public int memberUpdate(MemberVO vo);// -- SQL id="memberUpdate"
}
