package com.study.springboot;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.dto.memberDto;
import com.study.springboot.service.memberService;

@Controller
public class Mycontroller {

	@Autowired
	private memberService memberService;

	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}

	@RequestMapping("/main")
	public String main(Model model) {

		model.addAttribute("mainPage", "main.jsp");
		return "index";
	}

	/* ----------------------------------------- admin 폴더 */

	@RequestMapping("/ad_member")
	public String ad_member(Model model) {

		model.addAttribute("mainPage", "admin/ad_member.jsp");
		return "index";
	}

	@RequestMapping("/ad_host")
	public String ad_host(Model model) {

		model.addAttribute("mainPage", "admin/ad_host.jsp");
		return "index";
	}

	@RequestMapping("/ad_one2one")
	public String ad_one2one(Model model) {

		model.addAttribute("mainPage", "admin/ad_one2one.jsp");
		return "index";
	}

	@RequestMapping("/ad_notice")
	public String ad_notice(Model model) {

		model.addAttribute("mainPage", "admin/ad_notice.jsp");
		return "index";
	}

	@RequestMapping("/ad_FAQ")
	public String ad_FAQ(Model model) {

		model.addAttribute("mainPage", "admin/ad_FAQ.jsp");
		return "index";
	}

	@RequestMapping("/ad_host_info")
	public String ad_host_info(Model model) {

		model.addAttribute("mainPage", "admin/ad_host_info.jsp");
		return "index";
	}

	@RequestMapping("/ad_one2one_answer")
	public String ad_one2one_answer(Model model) {

		model.addAttribute("mainPage", "admin/ad_one2one_answer.jsp");
		return "index";
	}

	@RequestMapping("/ad_notice_write")
	public String ad_notice_write(Model model) {

		model.addAttribute("mainPage", "admin/ad_notice_write.jsp");
		return "index";
	}

	@RequestMapping("/ad_FAQ_write")
	public String ad_FAQ_write(Model model) {

		model.addAttribute("mainPage", "admin/ad_FAQ_write.jsp");
		return "index";
	}

	/* ----------------------------------------- */

	/* ----------------------------------------- member 폴더 */
	@RequestMapping("/login")
	public String login(Model model) {

		model.addAttribute("mainPage", "member/login.jsp");
		return "index";
	}

	@RequestMapping("/reserveList")
	public String reserveList(Model model) {

		model.addAttribute("mainPage", "member/myreserve.jsp");
		return "index";
	}

	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

		List<memberDto> memberlist = memberService.mypageload(member_id);

		model.addAttribute("memberlist", memberlist);

		model.addAttribute("mainPage", "member/mypage.jsp");
		return "index";
	}

	@RequestMapping("/myreserve_info")
	public String reserve_info(Model model) {

		model.addAttribute("mainPage", "member/myreserve_info.jsp");
		return "index";
	}

	@RequestMapping("/mylist")
	public String mylist(Model model) {

		model.addAttribute("mainPage", "member/mylist.jsp");
		return "index";
	}

	@RequestMapping("/member/login_pop")
	public String login_pop() {

		return "/member/login_pop";
	}

	@RequestMapping("/idfind")
	public String idfind(Model model) {

		model.addAttribute("mainPage", "member/idfind.jsp");
		return "index";
	}

	@RequestMapping("/idfindAction")
	public String idfindAction(@RequestParam("fi_name") String member_name,
			@RequestParam("fi_phone") String member_phone, HttpServletRequest request, Model model) {

		String idfind = memberService.idfind(member_name, member_phone);

		model.addAttribute("idfind", idfind);
		model.addAttribute("mainPage", "member/idfind.jsp");

		return "index";
	}

	@RequestMapping("/pwfind")
	public String pwfind(Model model) {

		model.addAttribute("mainPage", "member/pwfind.jsp");
		return "index";
	}

	@RequestMapping("/pwfindAction")
	public String pwfindAction(@RequestParam("pw_id") String member_id, //입력한 아이디,이름 가져오기
							   @RequestParam("pw_name") String member_name,
							   HttpServletRequest request,
			Model model) {
		
		//나중에 비밀번호 변경에서 써야하므로 id 값을 setattribute로 넘겨주기(그럼 session에 남아있게 됨)
		request.getSession().setAttribute("member_id", member_id);
		
		//가져온 아이디,이름을 검색해서(xml에서 검색이 실행됨) member_pw에 넣는다
		String member_pw = memberService.select_pw(member_id, member_name);
	
		//member_pw의 값을 addattribute를 사용해 보여줌(jsp에 ${member_pw}입력!)
		model.addAttribute("member_pw",member_pw);	
		model.addAttribute("mainPage", "member/pwfind.jsp");
		return "index";
	}
	
	@RequestMapping("/pwchange")
	public String pwchange(Model model) {

		model.addAttribute("mainPage", "member/pwchange.jsp");
		return "index";
	}
	
	@RequestMapping("/pwchangeAction")
	public String pwchangeAction(@RequestParam("up_pw")String up_pw,//바꿀 새 비번 가져오기,
			HttpServletRequest request,
			Model model) {
		
		//어떤 아이디의 비밀번호 변경인지를 위해 session에 있는 아이디 값을 가져와준다
		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		
	   //id와 새 비번을 result에 넣어줌
		int result = memberService.update_pw(member_id,up_pw);

		if(result!=1) {
			//1은 실행됨, 0은 실행안됨
			request.getSession().invalidate();
			model.addAttribute("mainPage", "member/pwchange.jsp");
			return "index";
		}
		else {
			request.getSession().invalidate();
			model.addAttribute("mainPage", "member/login.jsp");
			return "index";

		}
	}
	
	@RequestMapping("/member_join")
	public String member_join(Model model) {

		model.addAttribute("mainPage", "member/join.jsp");
		return "index";
	}

	@RequestMapping("/mywish")
	public String mywish(Model model) {

		model.addAttribute("mainPage", "member/mywish.jsp");
		return "index";
	}

	@RequestMapping("/myreview")
	public String myreview(Model model) {

		model.addAttribute("mainPage", "member/myreview.jsp");
		return "index";
	}

	@RequestMapping("/joinAction")
	public String joinAction(@RequestParam("name") String join_name,
							 @RequestParam("mail") String join_email,
							 @RequestParam("phone") String join_phone,
							 @RequestParam("id") String join_id,
							 @RequestParam("password") String join_pw,
							 @RequestParam("room") String join_gender,
							 @RequestParam(value="host_check", required=false) String host_check,
			Model model) {
		
		int result = 0;
		
	
		if( host_check == null ) {
			host_check = "0";
		}else {
			host_check = "1";
		}
		
		
		String member_id = join_id;
		System.out.println(join_id);
		String member_pw = join_pw;
		System.out.println(join_pw);
		String member_email = join_email;
		System.out.println(join_email);
		String member_phone = join_phone;
		System.out.println(join_phone);
		String member_gender = join_gender;
		System.out.println(join_gender);
		String member_name = join_name;
		System.out.println(join_name);
		String member_host_check = host_check;
		System.out.println(host_check);
		
		
		try {
			result = memberService.join_member(
					member_id, member_pw, 
					member_email, member_phone,
					member_gender, member_name, 
					member_host_check);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		if(result == 1) {
			
			return "redirect:/main";
		}else {
			return "redirect:/member_join";
		}
	}

	@RequestMapping("/loginAction")
	public String loginAction(@RequestParam("lo_name") String member_id, @RequestParam("lo_pass") String member_pw,
			HttpServletRequest request, Model model) {

		int result = memberService.login(member_id, member_pw);
		if (result == 1) {

			model.addAttribute("mainPage", "main.jsp");
			request.getSession().setAttribute("member_id", member_id);
			return "index";
		} else {

			model.addAttribute("mainPage", "member/login.jsp");
			return "index";
		}

	}

	@RequestMapping("/logoutAction")
	public String logoutAction(HttpServletRequest request, Model model) {

		request.getSession().invalidate();

		model.addAttribute("mainPage", "main.jsp");
		return "index";
	}

	@RequestMapping("/mycheck")
	public String mycheck(Model model) {

		model.addAttribute("mainPage", "member/mycheck.jsp");
		return "index";
	}

	@RequestMapping("/namechangeAction")
	public String namechangeAction(@RequestParam("member_name") String member_name, Map<String, Object> map,
			HttpServletRequest request, Model model) {
		System.out.println(member_name);
		HttpSession session = request.getSession();

		String member_id = (String) session.getAttribute("member_id");

		System.out.println(member_id);

		map.put("member_name", member_name);
		map.put("member_id", member_id);

		System.out.println(map);

		int name_change = memberService.name_change(map);
		System.out.println(name_change);

		if (name_change == 1) {
//			model.addAttribute("mainPage", "member/mypage.jsp");
//			return "index";
			return "redirect:/mypage";
		} else {
//			model.addAttribute("mainPage", "member/mypage.jsp");
//			return "index";
			return "redirect:/mypage";
		}

	}
	
//	------------------------------------------------------------------ email 변경
	@RequestMapping("/emailchangeAction")
	public String emailchangeAction(@RequestParam("member_email") String member_newemail,
			HttpServletRequest request,
			Model model) {
			HttpSession session = request.getSession();
			String member_id = (String) session.getAttribute("member_id");
			
			int newemail = memberService.email_change(member_newemail, member_id);
			
			if(newemail == 1) {
	
				return "redirect:/mypage";
			}
			else {
				return "redirect:/mypage";
			}
		
	}
//	------------------------------------------------------------------

//	------------------------------------------------------------------ 전화번호 변경
	@RequestMapping("/phonechangeAction")
	public String phonechangeAction(@RequestParam("member_phone") String member_newphone,
			HttpServletRequest request,
			Model model) {
			HttpSession session = request.getSession();
			String member_id = (String) session.getAttribute("member_id");
			
			System.out.println(member_id);
			
			int newephone = memberService.phone_change(member_newphone, member_id);
			
			System.out.println(member_newphone);
			
			if(newephone == 1) {
				System.out.println(member_newphone);
				return "redirect:/mypage";
			}
			else {
				return "redirect:/mypage";
			}
		
	}
//	------------------------------------------------------------------
	
	
	/* ----------------------------------------- */

	/* ----------------------------------------- one2one 폴더 */
	@RequestMapping("/one2one")
	public String one2one(Model model) {

		model.addAttribute("mainPage", "one2one/one2one.jsp");
		return "index";
	}

	@RequestMapping("/one2one_write")
	public String one2one_write(Model model) {

		model.addAttribute("mainPage", "one2one/one2one_write.jsp");
		return "index";
	}

	@RequestMapping("/one2one_writeAction")
	public String one2one_writeAction(Model model) {

		model.addAttribute("mainPage", "one2one/one2one.jsp");
		return "index";
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- service 폴더 */
	@RequestMapping("/service")
	public String service(Model model) {

		model.addAttribute("mainPage", "service/service.jsp");
		return "index";
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- host 폴더 */
	@RequestMapping("/mypage_host")
	public String mypage_host(Model model) {

		model.addAttribute("mainPage", "host/host.jsp");
		return "index";
	}

	@RequestMapping("/spacelist_host")
	public String spacelist_host(Model model) {

		model.addAttribute("mainPage", "host/spacelist_host.jsp");
		return "index";
	}

	@RequestMapping("/enter_host")
	public String enter_host(Model model) {

		model.addAttribute("mainPage", "host/enter_host.jsp");
		return "index";
	}

	@RequestMapping("/space_info_host")
	public String space_info_host(Model model) {

		model.addAttribute("mainPage", "host/space_info_host.jsp");
		return "index";
	}

	@RequestMapping("/reserve_host")
	public String reserve_host(Model model) {

		model.addAttribute("mainPage", "host/reserve_host.jsp");
		return "index";
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- contents 폴더 */
	@RequestMapping("/community")
	public String community(Model model) {

		model.addAttribute("mainPage", "contents/community.jsp");
		return "index";
	}

	@RequestMapping("/community_info")
	public String community_info(Model model) {

		model.addAttribute("mainPage", "contents/community_info.jsp");
		return "index";
	}

	@RequestMapping("/spacerent")
	public String spacerent(Model model) {

		model.addAttribute("mainPage", "contents/spacerent.jsp");
		return "index";
	}

	@RequestMapping("/space_info")
	public String space_info(Model model) {

		model.addAttribute("mainPage", "contents/space_info.jsp");
		return "index";
	}
	/* ----------------------------------------- */

	/*-------------------------------------------*/

}
