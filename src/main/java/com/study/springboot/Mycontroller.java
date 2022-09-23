package com.study.springboot;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.study.springboot.dto.communityDto;
import com.study.springboot.dto.contentsDto;
import com.study.springboot.dto.faqDto;
import com.study.springboot.dto.hostenterDto;
import com.study.springboot.dto.memberDto;
import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.one2oneDto;
import com.study.springboot.dto.one2one_answerDto;
import com.study.springboot.dto.replyDto;
import com.study.springboot.dto.reviewDto;
import com.study.springboot.service.communityService;
import com.study.springboot.service.contentsService;
import com.study.springboot.service.faqService;
import com.study.springboot.service.hostenterService;
import com.study.springboot.service.hostenter_imgDaoService;
import com.study.springboot.service.memberService;
import com.study.springboot.service.noticeService;
import com.study.springboot.service.one2oneService;
import com.study.springboot.service.one2one_answerService;
import com.study.springboot.service.replyService;
import com.study.springboot.service.reviewService;

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

	@Autowired
	private noticeService noticeService;

	@Autowired
	private one2oneService one2oneService;

	@Autowired
	private faqService faqService;

	@Autowired
	private one2one_answerService one2one_answerService;

	@Autowired
	private reviewService reviewService;

	@Autowired
	private communityService communityService;

	@Autowired
	private contentsService contentsService;

	@Autowired
	private hostenterService hostenterService;
	
	@Autowired
	private hostenter_imgDaoService hostenter_imgDaoService;
	
	@Autowired
	private replyService replyService;
	
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
	@RequestMapping("/ad_one2one_answer")
	public String ad_one2one_answer(Model model) {

		model.addAttribute("mainPage", "admin/ad_one2one_answer.jsp");
		return "index";
	}

	@RequestMapping("/ad_notice")
	public String ad_notice(Model model) {

		model.addAttribute("mainPage", "admin/ad_notice.jsp");
		return "index";
	}
	@RequestMapping("/ad_notice_write")
	public String ad_notice_write(Model model) {

		model.addAttribute("mainPage", "admin/ad_notice_write.jsp");
		return "index";
	}

	@RequestMapping("/ad_FAQ")
	public String ad_FAQ(HttpServletRequest request, Model model) {
		List<faqDto> faq_list = faqService.faq();
		request.setAttribute("faq_list", faq_list);

		model.addAttribute("mainPage", "admin/ad_FAQ.jsp");
		return "index";
	}
	@RequestMapping("/ad_FAQ_write")
	public String ad_FAQ_write(Model model) {

		model.addAttribute("mainPage", "admin/ad_FAQ_write.jsp");
		return "index";
	}

	@RequestMapping("/ad_host_info")
	public String ad_host_info(Model model) {

		model.addAttribute("mainPage", "admin/ad_host_info.jsp");
		return "index";
	}

	/* ----------------------------------------- */

	/* ----------------------------------------- member 폴더 */
	/* 로그인화면 */
	@RequestMapping("/login")
	public String login(Model model) {

		model.addAttribute("mainPage", "member/login.jsp");
		return "index";
	}

	/* 로그인확인팝업 */
	@RequestMapping("/member/login_pop")
	public String login_pop() {

		return "/member/login_pop";
	}

	@RequestMapping("/loginAction")
	public String loginAction(@RequestParam("lo_name") String member_id, @RequestParam("lo_pass") String member_pw,
			HttpServletRequest request, Model model) {

		int result = memberService.login(member_id, member_pw);
		int member_host = memberService.host_find(member_id);
			
		
		if (result == 1) {

			model.addAttribute("mainPage", "main.jsp");
			request.getSession().setAttribute("member_host", member_host);
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

	/* 회원가입 */
	@RequestMapping("/member_join")
	public String member_join(Model model) {

		model.addAttribute("mainPage", "member/join.jsp");
		return "index";
	}

	@RequestMapping("/joinAction")
	public String joinAction(@RequestParam("name") String join_name, @RequestParam("mail") String join_email,
			@RequestParam("phone") String join_phone, @RequestParam("id") String join_id,
			@RequestParam("password") String join_pw, @RequestParam("room") String join_gender,
			@RequestParam(value = "host_check", required = false) String host_check, Model model) {
		int result = 0;

		if (host_check == null) {
			host_check = "0";
		} else {
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
			result = memberService.join_member(member_id, member_pw, member_email, member_phone, member_gender,
					member_name, member_host_check);
		} catch (Exception e) {
			// TODO: handle exception
		}
		if (result == 1) {
			return "redirect:/main";
		} else {
			return "redirect:/member_join";
		}
	}

	/* 마이페이지 */
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

		List<memberDto> memberlist = memberService.mypageload(member_id);

		model.addAttribute("memberlist", memberlist);

		model.addAttribute("mainPage", "member/mypage.jsp");
		return "index";
	}

	/* 예약내역 */
	@RequestMapping("/reserveList")
	public String reserveList(Model model) {

		model.addAttribute("mainPage", "member/myreserve.jsp");
		return "index";
	}

	@RequestMapping("/myreserve_info")
	public String reserve_info(Model model) {

		model.addAttribute("mainPage", "member/myreserve_info.jsp");
		return "index";
	}

	/* 내가쓴글리뷰_나의활동 */
	@RequestMapping("/mylist")
	public String mylist(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

		List<reviewDto> reviewlist = reviewService.select_review(member_id);
		System.out.println(reviewlist);

		model.addAttribute("reviewlist", reviewlist);
		model.addAttribute("mainPage", "member/mylist.jsp");
		return "index";
	}

	/* 내가쓴리뷰 */
	@RequestMapping("/myreview")
	public String myreview(Model model) {

		model.addAttribute("mainPage", "member/myreview.jsp");
		return "index";
	}

	/* 내찜내역 */
	@RequestMapping("/mywish")
	public String mywish(Model model) {

		model.addAttribute("mainPage", "member/mywish.jsp");
		return "index";
	}

	/* 아이디찾기 */
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

	/* 비밀번호찾기 */
	@RequestMapping("/pwfind")
	public String pwfind(Model model) {

		model.addAttribute("mainPage", "member/pwfind.jsp");
		return "index";
	}

	@RequestMapping("/pwfindAction")
	public String pwfindAction(@RequestParam("pw_id") String member_id, // 입력한 아이디,이름 가져오기
			@RequestParam("pw_name") String member_name, HttpServletRequest request, Model model) {

		// 나중에 비밀번호 변경에서 써야하므로 id 값을 setattribute로 넘겨주기(그럼 session에 남아있게 됨)
		request.getSession().setAttribute("member_id", member_id);

		// 가져온 아이디,이름을 검색해서(xml에서 검색이 실행됨) member_pw에 넣는다
		String member_pw = memberService.select_pw(member_id, member_name);

		// member_pw의 값을 addattribute를 사용해 보여줌(jsp에 ${member_pw}입력!)
		model.addAttribute("member_pw", member_pw);
		model.addAttribute("mainPage", "member/pwfind.jsp");
		return "index";
	}

	/* 비밀번호변경 */
	@RequestMapping("/pwchange")
	public String pwchange(Model model) {

		model.addAttribute("mainPage", "member/pwchange.jsp");
		return "index";
	}

	@RequestMapping("/pwchangeAction")
	public String pwchangeAction(@RequestParam("up_pw") String up_pw, // 바꿀 새 비번 가져오기,
			HttpServletRequest request, Model model) {

		// 어떤 아이디의 비밀번호 변경인지를 위해 session에 있는 아이디 값을 가져와준다
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

		// id와 새 비번을 result에 넣어줌
		int result = memberService.update_pw(member_id, up_pw);

		if (result != 1) {
			// 1은 실행됨, 0은 실행안됨
			request.getSession().invalidate();
			model.addAttribute("mainPage", "member/pwchange.jsp");
			return "index";
		} else {
			request.getSession().invalidate();
			model.addAttribute("mainPage", "member/login.jsp");
			return "index";

		}
	}

	/* 출석체크 */
	@RequestMapping("/mycheck")
	public String mycheck(Model model) {

		model.addAttribute("mainPage", "member/mycheck.jsp");
		return "index";
	}

	/* 이름변경 */
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
			return "redirect:/mypage";
		} else {
			return "redirect:/mypage";
		}
	}

// email변경
	@RequestMapping("/emailchangeAction")
	public String emailchangeAction(@RequestParam("member_email") String member_newemail, HttpServletRequest request,
			Model model) {
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		System.out.println(member_id);

		int newemail = memberService.email_change(member_newemail, member_id);
		System.out.println(newemail);
		
		if (newemail == 1) {
			return "redirect:/mypage";
		} else {
			return "redirect:/mypage";
		}
	}
//	------------------------------------------------------------------

//	전화번호변경
	@RequestMapping("/phonechangeAction")
	public String phonechangeAction(@RequestParam("member_phone") String member_newphone, HttpServletRequest request,
			Model model) {
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

		System.out.println(member_id);

		int newphone = memberService.phone_change(member_newphone, member_id);

		System.out.println(newphone);

		if (newphone == 1) {
			System.out.println(member_newphone);
			return "redirect:/mypage";
		} else {
			return "redirect:/mypage";
		}
	}
//	------------------------------------------------------------------

	/* ----------------------------------------- */

	/* ----------------------------------------- one2one 폴더 */
	/* 1:1문의내역 */
	@RequestMapping("/one2one")
	public String one2one(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");

		List<one2oneDto> one2one_list = one2oneService.one2one_list(member_id);
		List<one2one_answerDto> one2oneanswer_list = one2one_answerService.one2one_answer(member_id);

		model.addAttribute("one2one_list", one2one_list);
		System.out.println(one2oneanswer_list);
		model.addAttribute("qwer", one2oneanswer_list);

		model.addAttribute("mainPage", "one2one/one2one.jsp");
		return "index";
	}

	/* 1:1작성 */
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
	/* 공지사항_도움말 */
	@RequestMapping("/service")
	public String notice(HttpServletRequest request, Model model) {

		/*
		 * HttpSession session = request.getSession(); String notice
		 * =(String)session.getAttribute("dto");
		 */
		// sesion은 http에서 로그인 된 채로 다른 페이지로 넘어가게 해주는 역할임
		// (그래서 다른 페이지에서도 로그인 된 화면을 보여줌)
		// sql을 보여주는 것과는 무관하다

		List<noticeDto> noticelist = noticeService.notice();
		List<faqDto> faqlist = faqService.faq();

		model.addAttribute("noticelist", noticelist);
		model.addAttribute("faqlist", faqlist);
		model.addAttribute("mainPage", "service/service.jsp");

		return "index";
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- host 폴더 */
	/* 호스트마이페이지 */
	@RequestMapping("/mypage_host")
	public String mypage_host(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		int member_host = (int) session.getAttribute("member_host");
		
		List<memberDto> member_list = memberService.mypageload(member_id);
		
		
		
		if (member_host == 1) {
			model.addAttribute("member_list", member_list);
			model.addAttribute("mainPage", "host/host.jsp");
			return "index";
		} else {
			model.addAttribute("mainPage", "main.jsp");
			return "index";
		}
	}

	/* 공간대여 */
	@RequestMapping("/spacelist_host")
	public String spacelist_host(
			HttpServletRequest request,
			Model model) {
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		List<hostenterDto> enter_list = hostenterService.select_space(member_id);
		
		
		model.addAttribute("enter_list",enter_list);
		model.addAttribute("mainPage", "host/spacelist_host.jsp");
		return "index";
	}

	/* 입점등록 */
	@RequestMapping("/enter_host")
	public String enter_host(Model model) {

		model.addAttribute("mainPage", "host/enter_host.jsp");
		return "index";
	}

	/* 공간상세 */
	@RequestMapping("/space_info_host")
	public String space_info_host(Model model) {

		model.addAttribute("mainPage", "host/space_info_host.jsp");
		return "index";
	}

	/* 예약내역관리 */
	@RequestMapping("/reserve_host")
	public String reserve_host(Model model) {

		model.addAttribute("mainPage", "host/reserve_host.jsp");
		return "index";
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- contents 폴더 */
	/* 게시글리스트 */
	@RequestMapping("/community")
	public String community(@RequestParam("contents_number") String contents_number, 
			@RequestParam(value= "community_number", required=false)String community_number,
			HttpServletRequest request,
			Model model) {
		
		
		request.getSession().setAttribute("community_number", community_number);
		
		
		List<contentsDto> contentsload = contentsService.contentsload(contents_number);
		List<communityDto> communityload = communityService.communityload(contents_number);

		model.addAttribute("contentsload", contentsload);
		model.addAttribute("communityload", communityload);
		System.out.println(contentsload);
		System.out.println(communityload);

		model.addAttribute("mainPage", "contents/community.jsp");
		return "index";
	}

	/* 게시글내용 */
	@RequestMapping("/community_info")
	public String community_info(HttpServletRequest request,Model model) {


		
		HttpSession session = request.getSession();
		

		String community_number = (String)session.getAttribute("community_number");
		
		String member_id = (String)session.getAttribute("member_id");
		
		
		
		List<replyDto>replyViewlist = replyService.replyView(community_number,member_id);
		
		model.addAttribute("replyView",replyViewlist);	
	
		model.addAttribute("mainPage", "contents/community_info.jsp");
		return "index";
	}
	
	
	@RequestMapping("/community_infoAction")
	public String community_infoAction(@RequestParam(""))
	
	
	
	
	
	
	
	

	/* 공간대여(일반회원) */
	@RequestMapping("/spacerent")
	public String spacerent(Model model) {

		model.addAttribute("mainPage", "contents/spacerent.jsp");
		return "index";
	}

	/* 공간상세(일반회원) */
	@RequestMapping("/space_info")
	public String space_info(Model model) {

		model.addAttribute("mainPage", "contents/space_info.jsp");
		return "index";
	}
	/* ----------------------------------------- */

	/*-------------------------------------------*/
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(200000000);
		multipartResolver.setMaxInMemorySize(200000000);
		multipartResolver.setDefaultEncoding("utf-8");
		return multipartResolver;
	}
 @Autowired
 fileUploadService fileUploadService;
	
	@RequestMapping(value="/uploadMultiFileOk", method = RequestMethod.POST)
	public String uploadMultiFileOk( 
			@RequestParam("host_name") String host_name_,
			@RequestParam("room") int host_contents_number_,
			@RequestParam("host_onerow") String host_onerow_,
			@RequestParam("host_des") String host_des_,
			@RequestParam("host_caution") String host_caution_,
			@RequestParam("zip") String host_zip_,
			@RequestParam("addr1") String host_location_,
			@RequestParam("addr2") String host_location_detail_,
			@RequestParam("host_price") int host_price_,
			@RequestParam("host_bnumber") int host_bnumber_, 
			@RequestParam("host_headcount") int host_headcount_,
			@RequestParam(value="filename2", required=false) MultipartFile File_title,
			@RequestParam(value="filename", required=false) MultipartFile[] filelist,
			HttpServletRequest request,
			Model model) {
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		int result = 0;
		
		
		 String host_name = host_name_; 
		 System.out.println(host_name);
		 int host_contents_number = host_contents_number_; 
		 System.out.println(host_contents_number);
		 String host_onerow = host_onerow_; 
		 System.out.println(host_onerow);
		 String host_des = host_des_; 
		 System.out.println(host_des);
		 String host_caution = host_caution_; 
		 System.out.println(host_caution);
		 String host_zip = host_zip_; 
		 System.out.println(host_zip);
		 String host_location = host_location_; 
		 System.out.println(host_location);
		 String host_location_detail = host_location_detail_; 
		 System.out.println(host_location_detail);
		 int host_price = host_price_; 
		 System.out.println(host_price);
		 int host_bnumber = host_bnumber_; 
		 System.out.println(host_bnumber);
		 int host_headcount = host_headcount_; 
		 System.out.println(host_headcount);
		
		 String upload_url_title = fileUploadService.restore(File_title);
	
		
			try {
				result = hostenterService.insert_hostenter(
						host_contents_number,
						host_name,
						host_des,
						host_caution,
						host_zip,
						host_location,
						host_location_detail,
						host_price,
						host_headcount,
						member_id,
						host_bnumber,
						host_onerow);
			
			} catch (Exception e) {
				
			}
			
			if(result == 1) {
				for( MultipartFile file : filelist) {
					System.out.println("filelist:" + filelist);
					System.out.println("filename:" + file);
					String upload_url = fileUploadService.restore(file);
					System.out.println( "upload_url:" + upload_url );
					
				if( upload_url != null ) {
					if( upload_url.length() > 0 ) {
						result = hostenter_imgDaoService.hostenter_img_up(host_name_,member_id,upload_url);
						System.out.println("업로드 성공!");
					
						
					}else {
						System.out.println("업로드 실패!");	
						model.addAttribute("mainPage","host/enter_host.jsp");
						return "index";
					}
				}else {
					System.out.println("업로드 실패!");
					model.addAttribute("mainPage","host/enter_host.jsp");
					return "index";
				}

			}
			

		}else {
			System.out.println("DB연동 실패 2");
			model.addAttribute("mainPage","host/enter_host.jsp");
			return "index";
		}
		
		
		model.addAttribute("mainPage","host/enter_host.jsp");
		return "index";
		

		
		 
	}
	
	
	
	
	
	
}
