package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mycontroller {

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
	public String mypage(Model model) {

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

	@RequestMapping("/pwfind")
	public String pwfind(Model model) {

		model.addAttribute("mainPage", "member/pwfind.jsp");
		return "index";
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
		
		model.addAttribute("mainPage","host/host.jsp");
		return"index";
	}
	
	@RequestMapping("/spacelist_host")
	public String spacelist_host(Model model) {
		
		model.addAttribute("mainPage","host/spacelist_host.jsp");
		return "index";
	}
	@RequestMapping("/enter_host")
	public String enter_host(Model model) {
		
		model.addAttribute("mainPage","host/enter_host.jsp");
		return "index";
	}
	
	@RequestMapping("/space_info_host")
	public String space_info_host(Model model) {
		
		model.addAttribute("mainPage","host/space_info_host.jsp");
		return "index";
	}
	
	@RequestMapping("/reserve_host")
	public String reserve_host(Model model) {
		
		model.addAttribute("mainPage","host/reserve_host.jsp");
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
		
		model.addAttribute("mainPage","contents/spacerent.jsp");
		return "index";
	}
	@RequestMapping("/space_info")
	public String space_info(Model model) {
		
		model.addAttribute("mainPage","contents/space_info.jsp");
		return "index";
	}
	/* ----------------------------------------- */
}
