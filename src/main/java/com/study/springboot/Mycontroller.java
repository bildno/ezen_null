package com.study.springboot;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.study.springboot.Vo.Room;
import com.study.springboot.dao.IadminDao;
import com.study.springboot.dao.IcommunityDao;
import com.study.springboot.dao.IfaqDao;
import com.study.springboot.dao.ImemberDao;
import com.study.springboot.dao.InoticeDao;
import com.study.springboot.dao.Ione2oneDao;
import com.study.springboot.dao.Ione2one_answerDao;
import com.study.springboot.dao.IreplyDao;
import com.study.springboot.dao.IreviewDao;
import com.study.springboot.dao.IwishDao;
import com.study.springboot.dto.adminDto;
import com.study.springboot.dto.communityDto;
import com.study.springboot.dto.contentsDto;
import com.study.springboot.dto.faqDto;
import com.study.springboot.dto.hostenterDto;
import com.study.springboot.dto.hostenter_imgDto;
import com.study.springboot.dto.memberDto;
import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.one2oneDto;
import com.study.springboot.dto.one2oneDtoAndAnswer;
import com.study.springboot.dto.one2one_answerDto;
import com.study.springboot.dto.replyDto;
import com.study.springboot.dto.reviewDto;
import com.study.springboot.dto.wishDto;
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
import com.study.springboot.service.wishService;


@Controller
public class Mycontroller {

	@Autowired
	private memberService memberService;

	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}

	@RequestMapping("/main")
	public String main(HttpServletRequest request,Model model) {
		
		List<communityDto> community_seqs1 = communityService.community_seq1();
		List<communityDto> community_seqs2 = communityService.community_seq2();
		List<communityDto> community_seqs3 = communityService.community_seq3();
		List<communityDto> community_seqs4 = communityService.community_seq4();
		
		
		model.addAttribute("community_seqs1",community_seqs1);
		model.addAttribute("community_seqs2",community_seqs2);
		model.addAttribute("community_seqs3",community_seqs3);
		model.addAttribute("community_seqs4",community_seqs4);
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

	@Autowired
	private IreplyDao ireplyDao;
	
	@Autowired
	private ImemberDao imemberDao;
	
	@Autowired
	private wishService wishService;
	
	@Autowired
	private IwishDao iwishDao;

	@Autowired
	private Ione2one_answerDao ione2one_answerDao;
	@Autowired
	private Ione2oneDao ione2oneDao;

	/* ----------------------------------------- admin 폴더 */

	@RequestMapping("/ad_member")
	public String ad_member(@RequestParam(value="page", required=false) String page,
			@RequestParam(value="search_type", required=false) String search_type,
			@RequestParam(value="search_contents", required=false) String search_contents,
		Model model) {
	
	if( page == null) {
		page = "1";
	}
	
	model.addAttribute("page", page);
	
	int num_page_size = 5; //한페이지당 Row갯수
	int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
	int startRowNum = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호		
	int endRowNum = (num_page_no * num_page_size);	// 5, 10, 15 페이지 끝 줄번호
	
	List<memberDto> ad_member_page = imemberDao.ad_member_page(String.valueOf(startRowNum), String.valueOf(endRowNum) );
	System.out.println(ad_member_page);
	List<memberDto> member_search;
	
	if(search_type != null) {
		member_search = memberService.member_search(search_type, search_contents);
		model.addAttribute("ad_member_page", member_search);
	}else {
		model.addAttribute("ad_member_page", ad_member_page);
	}	
	
	model.addAttribute("mainPage", "admin/ad_member.jsp");
	
	return "index";
		
	}

	@RequestMapping("/ad_host")
	public String ad_host(@RequestParam(value="page", required=false) String page,
			@RequestParam(value="search_type", required=false) String search_type,
			@RequestParam(value="search_contents", required=false) String search_contents,
			Model model) {
		
		if( page == null) {
			page = "1";
		}
		
		model.addAttribute("page", page);
		
		int num_page_size = 5; //한페이지당 Row갯수
		int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
		int startRowNum = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호		
		int endRowNum = (num_page_no * num_page_size);	// 5, 10, 15 페이지 끝 줄번호
		
		List<memberDto> ad_host_page = imemberDao.ad_host_page(String.valueOf(startRowNum), String.valueOf(endRowNum) );
		System.out.println(ad_host_page);
		
		List<memberDto> host_search;
		
		if(search_type != null) {
			host_search = memberService.host_search(search_type, search_contents);
			model.addAttribute("ad_host_page", host_search);
		}else {
			model.addAttribute("ad_host_page", ad_host_page);
		}

		model.addAttribute("mainPage", "admin/ad_host.jsp"); 
		
		return "index";
			
		}

	@Autowired
	private IadminDao iadminDao;
	
	@RequestMapping("/ad_one2one")
	public String ad_one2one(@RequestParam(value="page",required=false) String page,
			@RequestParam(value="search_type",required=false) String search_type,
			@RequestParam(value="search_contents",required=false) String search_contents,
			Model model) {
		
		if( page == null) {
			page = "1";
		}
		
		model.addAttribute("page", page);
		
		int num_page_size = 5; //한페이지당 Row갯수
		int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
		int startRowNum = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호		
		int endRowNum = (num_page_no * num_page_size);	// 5, 10, 15 페이지 끝 줄번호
		
		List<adminDto>one2one_list = iadminDao.one2onepage(String.valueOf(startRowNum), String.valueOf(endRowNum) );
		
		List<one2oneDto> one2one_search;
		
		/* search */
		if(search_type != null) {
			one2one_search = one2oneService.one2one_search(search_type, search_contents);
			model.addAttribute("one2one_list", one2one_search);
		}else {
			model.addAttribute("one2one_list", one2one_list);
		}
		
		model.addAttribute("mainPage", "admin/ad_one2one.jsp");
		return "index";
	}
	@RequestMapping("/ad_one2one_answer")
	public String ad_one2one_answer(@RequestParam("one2one_number") String one2one_number,
			HttpServletRequest request, Model model) {
		
		List<one2oneDto> ad_one2one_answer = one2oneService.ad_one2one_answer(one2one_number);
		List<one2one_answerDto>ad_one2oneanswer_list = one2one_answerService.ad_one2oneanswer_list(one2one_number);

		System.out.println(ad_one2one_answer);
		System.out.println(ad_one2oneanswer_list);
		
		model.addAttribute("ad_one2oneanswer_list", ad_one2oneanswer_list);
		model.addAttribute("ad_one2one_answer", ad_one2one_answer);
		model.addAttribute("mainPage", "admin/ad_one2one_answer.jsp");
		return "index";
	}
	
//	one2one answer 작성
	@RequestMapping("/one2one_answer_write")
	public String one2one_answer_write(
			@RequestParam("one2oneanswer_content") String one2oneanswer_content, 
			@RequestParam("one2one_number") String one2one_number,
			@RequestParam("one2one_member_id") String one2one_member_id,
			HttpServletRequest request, Model model, one2one_answerDto dto) {
		

		System.out.println(one2one_number);
		System.out.println(one2oneanswer_content);
		System.out.println(one2one_member_id);
		
		dto.setOne2oneanswer_content(one2oneanswer_content);
		dto.setOne2oneanswer_one2one_number(one2one_number);
		dto.setOne2oneanswer_member_id(one2one_member_id);
		

		int result = one2one_answerService.one2one_answer_write(
				one2oneanswer_content, one2one_number, one2one_member_id);
		System.out.println("result" + result);

		if (result == 0) {
			System.out.println("실패");
			return "redirect:/ad_one2one";
			
		} else {
			System.out.println("성공");
			return "redirect:/ad_one2one";
		}

	}
	@RequestMapping("/ad_notice")
	public String ad_notice(@RequestParam(value="page",required=false) String page,
			Model model) {
		
		if( page == null) {
			page = "1";
		}
		
		model.addAttribute("page", page);
		
		int num_page_size = 5; //한페이지당 Row갯수
		int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
		int startRowNum = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호		
		int endRowNum = (num_page_no * num_page_size);	// 5, 10, 15 페이지 끝 줄번호
		
		List<adminDto>notice_list = iadminDao.noticepage(String.valueOf(startRowNum), String.valueOf(endRowNum) );
		System.out.println(notice_list);
	
		model.addAttribute("notice_list", notice_list);
		model.addAttribute("mainPage", "admin/ad_notice.jsp"); 
		
		return "index";
	}
	
	@Autowired
	private InoticeDao inoticeDao;
	
	@RequestMapping("/ad_notice_update")
	@ResponseBody
	public String contentAction(
			@RequestParam("notice_title") String notice_title,
			@RequestParam("notice_number") String notice_number,
			@RequestParam("notice_contents_number") String notice_contents_number,
			@RequestParam("notice_content") String notice_content,
			noticeDto dto) {
		
		dto.setNotice_title(notice_title);
		dto.setNotice_number(notice_number);
		dto.setNotice_contents_number(notice_contents_number);
		dto.setNotice_content(notice_content);
		 
		int result = inoticeDao.ad_notice_update(dto);
		if( result != 1 ) {
			System.out.println("수정 실패했지만 아쉽습니다.");
			return "<script>alert('수정 실패');history.back();</script>";
		}else {
			System.out.println("수정 성공!");
			return "<script>alert('수정 성공');location.href='/ad_notice';</script>";
		}
		
	}
	@RequestMapping("/noticeDelete")
	public String noticeDelete(@RequestParam("num") int num) {
		int result = iadminDao.noticeDelete( num );
		if( result != 1) {
			return "/ad_notice";
		}else {
			return "redirect:/ad_notice";   
		}
	}
	@RequestMapping("/ad_notice_writeAction")
	public String ad_notice_writeAction(HttpServletRequest request, Model model) {
		
		String notice_title = request.getParameter("notice_title");
		String notice_contents_number = request.getParameter("notice_contents_number");
		String notice_content = request.getParameter("notice_content");
		
		System.out.println("notice_title:"+notice_title);
		System.out.println("notice_contents_number:"+notice_contents_number);
		System.out.println("notice_content:"+notice_content);
		
		noticeDto dto = new noticeDto();
		dto.setNotice_title(notice_title);
		dto.setNotice_contents_number(notice_contents_number);
		dto.setNotice_content(notice_content);
		
		int result = noticeService.notice_write(dto);
		System.out.println("result:" + result);
		if( result > 0 ) {
			model.addAttribute("alert", "글작성이 성공하였습니다.");
			return "redirect:/ad_notice";  
		}else {
			model.addAttribute("alert", "글작성이 실패하였습니다.");
			return "/ad_notice"; 
		}
	}
	
//	notice확인
	@RequestMapping("/ad_notice_info")
	public String ad_notice_write(@RequestParam("notice_number") String notice_number,
			HttpServletRequest request, Model model) {
		
		List<noticeDto> ad_notice_info = noticeService.ad_notice_info(notice_number);
		
		model.addAttribute("ad_notice_info", ad_notice_info);
		model.addAttribute("mainPage", "admin/ad_notice_info.jsp");
		return "index";
	}
	
//	notice 검색
	@RequestMapping("/ad_noticesearch")
	public String ad_noticesearch(@RequestParam(value="page",required=false) String page,
			@RequestParam("search_type") String search_type,
			@RequestParam("search_contents") String search_contents,
			Model model) {
		
		if( page == null) {
			page = "1";
		}
		
		int num_page_size = 5; //한페이지당 Row갯수
		int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
		int startRowNum_notice = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호		
		int endRowNum_notice = (num_page_no * num_page_size);	// 5, 10, 15 페이지 끝 줄번호
		
		List<noticeDto> notice_list = noticeDao.noticepage(String.valueOf(startRowNum_notice), String.valueOf(endRowNum_notice) );
		System.out.println(notice_list);
		List<noticeDto> ad_noticesearch;
		
//		List<noticeDto> ad_noticesearch = noticeService.ad_noticesearch(search_type, search_contents);
//		System.out.println(search_type+"==타입==");
//		System.out.println(search_contents+"==검색내용==");
//		System.out.println(ad_noticesearch+"==검색결과==");
//		
//		model.addAttribute("notice_list", ad_noticesearch);
//		model.addAttribute("mainPage", "admin/ad_notice");
		
		if(search_type != null) {
			ad_noticesearch = noticeService.ad_noticesearch(search_type, search_contents);
			model.addAttribute("notice_list", ad_noticesearch);
				
		}else {
			model.addAttribute("notice_list", notice_list);
		}

			System.out.println("화면출력");
			model.addAttribute("mainPage", "admin/ad_notice.jsp");
			return "index";
	}


//	FAQ 리스트
	@RequestMapping("/ad_FAQ")
	public String ad_FAQ(@RequestParam(value="page",required=false) String page,
			@RequestParam(value="search_type",required=false) String search_type, // 검색타입
			@RequestParam(value="search_contents",required=false) String search_contents, // 검색내용
			Model model) {
		
		System.out.println(search_type);
		System.out.println(search_contents);
		
		if( page == null) {
			page = "1";
		}
		
		model.addAttribute("page", page);
		
		int num_page_size = 5; //한페이지당 Row갯수
		int num_page_no = Integer.parseInt( page ); //page번호 1,2,3,4
		int startRowNum_faq = (num_page_no - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호		
		int endRowNum_faq = (num_page_no * num_page_size);	// 5, 10, 15 페이지 끝 줄번호
		
		List<faqDto> faq_list = faqDao.faqpage(String.valueOf(startRowNum_faq), String.valueOf(endRowNum_faq) );
		System.out.println(faq_list);
		List<faqDto> faq_search;
		
		/* search */
		if(search_type != null) {
			faq_search = faqService.faq_search(search_type, search_contents);
			model.addAttribute("faq_list", faq_search);
				
		}else {
			model.addAttribute("faq_list", faq_list);
		}

			System.out.println("화면출력");
			model.addAttribute("mainPage", "admin/ad_FAQ.jsp");
			return "index";
	}
	
//	FAQ 확인, 삭제
	@RequestMapping("/ad_FAQ_info")
	public String ad_FAQ_write(@RequestParam("faq_number") String faq_number,
			HttpServletRequest request, Model model) {
		
		System.out.println(faq_number);
		List<faqDto> ad_FAQ_info = faqService.ad_FAQ_info(faq_number);
		System.out.println(ad_FAQ_info);
		
		model.addAttribute("ad_FAQ_info", ad_FAQ_info);
		model.addAttribute("mainPage", "admin/ad_FAQ_info.jsp");
		return "index";
	}
	
//	FAQ 수정
	@RequestMapping("ad_FAQ_update")
	public String ad_FAQ_update(
			@RequestParam("faq_number") String faq_number,
			@RequestParam("faq_title") String faq_title,
			@RequestParam("faq_content") String faq_content,
			HttpServletRequest request, Model model) {
		
		System.out.println(faq_number);
		System.out.println(faq_title);
		System.out.println(faq_content);
		
		
		int ad_FAQ_update = faqService.ad_FAQ_update(faq_title, faq_content, faq_number);
		
		
		System.out.println(ad_FAQ_update);
		
		model.addAttribute("ad_FAQ_update", ad_FAQ_update);
		return "redirect:ad_FAQ";
	}

	@RequestMapping("/ad_FAQ_delete")
	public String ad_FAQ(@RequestParam("faq_number") String faq_number,
			HttpServletRequest request, Model model) {

		int result = faqService.ad_FAQ_delete(faq_number);
		
		if( result == 1) {
			return "redirect:ad_FAQ";
		}
		else {
			return "<script>alert('삭제실패') history.back();</script>";
		}
		
	}

//	FAQ 작성
	@RequestMapping("/ad_FAQ_writeAction")
	public String ad_FAQ_writeAction(
			@RequestParam("faq_title") String faq_title, 
			@RequestParam("faq_content") String faq_content, 
			HttpServletRequest request, Model model, faqDto dto) {
		
		System.out.println(faq_title);
		System.out.println(faq_content);
		
		dto.setFaq_title(faq_title);
		dto.setFaq_content(faq_content);
		

		int result = faqService.ad_FAQ_write(dto);
		System.out.println("result" + result);

		if (result == 0) {
			System.out.println("실패");
			return "redirect:/ad_FAQ";
			
		} else {
			System.out.println("성공");
			return "redirect:/ad_FAQ";
		}

	}

	@RequestMapping("/ad_host_info")
	public String ad_host_info(Model model) {

		model.addAttribute("mainPage", "admin/ad_host_info.jsp");
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
	
		if (result == 1) {
			List<communityDto> community_seqs1 = communityService.community_seq1();
			List<communityDto> community_seqs2 = communityService.community_seq2();
			List<communityDto> community_seqs3 = communityService.community_seq3();
			List<communityDto> community_seqs4 = communityService.community_seq4();
			
			
			model.addAttribute("community_seqs1",community_seqs1);
			model.addAttribute("community_seqs2",community_seqs2);
			model.addAttribute("community_seqs3",community_seqs3);
			model.addAttribute("community_seqs4",community_seqs4);
			
			model.addAttribute("mainPage", "main.jsp");
			
			int member_host = memberService.host_find(member_id);
			
			// 호스트 계정판별
			if(member_host == 1) {
				request.getSession().setAttribute("member_host", member_host);
			}else {
				request.getSession().setAttribute("member_host", 0);
			}
			
			request.getSession().setAttribute("member_id", member_id);
			return "index";	
		} else {
			System.out.println("asdasdsadasdsadssadassdadsaasdadsd"+result);
			model.addAttribute("mainPage", "member/login.jsp");
			return "index";
		} 

	}

	@RequestMapping("/logoutAction")
	public String logoutAction(HttpServletRequest request, Model model) {

		request.getSession().invalidate();
		
		List<communityDto> community_seqs1 = communityService.community_seq1();
		List<communityDto> community_seqs2 = communityService.community_seq2();
		List<communityDto> community_seqs3 = communityService.community_seq3();
		List<communityDto> community_seqs4 = communityService.community_seq4();
		
		
		model.addAttribute("community_seqs1",community_seqs1);
		model.addAttribute("community_seqs2",community_seqs2);
		model.addAttribute("community_seqs3",community_seqs3);
		model.addAttribute("community_seqs4",community_seqs4);
		
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
	@RequestMapping("/resign")
	public String resign(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		System.out.println(member_id);
		int result = memberService.resign( member_id );
		if( result != 1) {
			return "/mypage";
		}else {
			return "redirect:/mypage";   
		}
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
	@Autowired IreviewDao ireviewDao;
	@RequestMapping("/mylist")
	public String mylist(@RequestParam(value="mycommu_page",required = false)String mycommu_page,
			@RequestParam(value="myreview_page",required = false)String myreview_page,
			@RequestParam(value="myreply_page",required = false) String myreply_page,
			HttpServletRequest request, Model model) {
			
		if(mycommu_page == null) {
			mycommu_page = "1";
		}
		
		if(myreview_page == null) {
			myreview_page = "1";
		}
		
		if(myreply_page == null) {
			myreply_page = "1";
		}
		
		model.addAttribute("mycommu_page",mycommu_page);
		model.addAttribute("myreview_page",myreview_page);
		model.addAttribute("myreply_page",myreply_page);
		
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		System.out.println(member_id);
		
		int num_page_size = 5; //한페이지당 Row갯수
		
		int num_page_no_commu = Integer.parseInt( mycommu_page );
		int num_page_no_review = Integer.parseInt( myreview_page ); //page번호 1,2,3,4
		int num_page_no_reply = Integer.parseInt( myreply_page);
		
		int startRowNum_community = (num_page_no_commu - 1) * num_page_size + 1;
		int startRowNum_review = (num_page_no_review - 1) * num_page_size + 1;// 1, 6, 11 페이지 시작 줄번호
		int startRowNum_reply = (num_page_no_reply - 1) * num_page_size + 1;
		
		int endRowNum_community = (num_page_no_commu * num_page_size);   
		int endRowNum_review = (num_page_no_review * num_page_size); // 5, 10, 15 페이지 끝 줄번호
		int endRowNum_reply = (num_page_no_reply * num_page_size);


		// row 1~5 까지...
		List<communityDto> mycommu_pagelist = icommunityDao.mycommu_page(String.valueOf(startRowNum_community), String.valueOf(endRowNum_community),member_id);
		List<reviewDto> myreview_pagelist = ireviewDao.myreview_page(String.valueOf(startRowNum_review), String.valueOf(endRowNum_review),member_id);
		List<replyDto> myreply_pagelist = ireplyDao.myreply_page(String.valueOf(startRowNum_reply), String.valueOf(endRowNum_reply),member_id);
		
		List<reviewDto> reviewlist = reviewService.select_review(member_id);
		List<communityDto> commulist = communityService.select_commu(member_id);
		List<replyDto> replylist = replyService.select_reply(member_id);
		
		System.out.println(myreply_pagelist);
		
		model.addAttribute("mycommu_pagelist",mycommu_pagelist);
		model.addAttribute("myreview_pagelist",myreview_pagelist);
		model.addAttribute("myreply_pagelist",myreply_pagelist);
		
		model.addAttribute("reviewlist", reviewlist);
		model.addAttribute("commulist",commulist);
		model.addAttribute("replylist",replylist);
		model.addAttribute("mainPage", "member/mylist.jsp");
		return "index";
	}

	/* 내가쓴리뷰 */
	
	@RequestMapping("/myreview")
	public String myreview(Model model) {

		model.addAttribute("mainPage", "member/myreview.jsp");
		return "index";
	}
	@RequestMapping("/deletereply")
	public String deletereply(@RequestParam("reply_number") int reply_number) {
		int result = ireplyDao.deletereply( reply_number );
		
		System.out.println("reply_number=" + reply_number);
		System.out.println("result=" + result);
		System.out.println("zz");
		
		if( result != 1) {
			return "redirect:/mylist";
		} else {
			return "redirect:/mylist";
		}
	}

	/* 내찜내역 */
	@RequestMapping("/mywish")
	public String mywish(HttpServletRequest request,Model model) {
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		List<hostenterDto> wish_list = hostenterService.wish_list(member_id);
		
		model.addAttribute("wish_list",wish_list);
		model.addAttribute("mainPage", "member/mywish.jsp");
		return "index";
	}
	
    // 찜 삭제	
	@RequestMapping("/zzim_delete")
	@ResponseBody
	public String zzim_delete(@RequestParam("my_wish_hostenter_number") int my_wish_hostenter_number) {
		
		int result = iwishDao.zzim_delete(my_wish_hostenter_number);
		
		if(result !=1) {
			return "<script> alert('찜 삭제가 불가능합니다 ŏ̥̥̥̥םŏ̥̥̥̥'); location.href='/mywish'</script>";
		}
		else {
			return "<script> alert('찜이 정상적으로 삭제되었습니다 (˵ •̀ ᴗ - ˵ ) ✧'); location.href='/mywish'</script>";
		}
			
		
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
		List<one2oneDto> one2one_list2 = one2oneService.one2one_list2(member_id);
 		List<one2oneDtoAndAnswer> one2oneDtoAndAnswer_list = new ArrayList<one2oneDtoAndAnswer>(); 
		

		for( one2oneDto dto : one2one_list) {
			for( one2one_answerDto answerDto : one2oneanswer_list) {
				if( dto.getOne2one_number().trim().equals( answerDto.getOne2oneanswer_one2one_number().trim() ) ) {
					one2oneDtoAndAnswer newDto = new one2oneDtoAndAnswer();
					newDto.setOne2one_answerDto(answerDto);
					newDto.setOne2oneDto( dto );		
					one2oneDtoAndAnswer_list.add(newDto);
				}			
			}
			
		}
	
		
		model.addAttribute("one2one_list", one2one_list2);
		model.addAttribute("one2oneanswer_list", one2oneanswer_list);
		model.addAttribute("one2oneDtoAndAnswer_list", one2oneDtoAndAnswer_list);
		
	

		model.addAttribute("mainPage", "one2one/one2one.jsp");
		return "index";
	}
	
	@RequestMapping("/one2oneDelete")
	public String one2oneDelete(@RequestParam("num") int num) {
		System.out.println("호출");
		System.out.println(num);
		int num2 = num;
		int result2 = ione2one_answerDao.one2oneanswer_Delete( num );
		System.out.println(result2);
		int result1 = ione2oneDao.one2one_Delete( num2 );
	
		System.out.println(result1);
		System.out.println(result2);
		
		if( result1 != 1 && result2 != 1) {
			return "redirect:/one2one";
		}else {
			return "redirect:/one2one";   
		}
	}
	/* 1:1작성 */
	@RequestMapping("/one2one_write")
	public String one2one_write(Model model) {

		model.addAttribute("mainPage", "one2one/one2one_write.jsp");
		return "index";
	}

	@RequestMapping("/one2one_writeAction")
	public String ad_one2one_writeAction(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String one2one_member_id = (String) session.getAttribute("member_id");
		
		String one2one_title = request.getParameter("one2one_title");
		String one2one_content = request.getParameter("one2one_content");
		
		
		System.out.println("one2one_title:"+one2one_title);
		System.out.println("one2one_content:"+one2one_content);
		System.out.println("one2one_member_id:"+one2one_member_id);
		
		one2oneDto dto = new one2oneDto();
		dto.setOne2one_title(one2one_title);
		dto.setOne2one_content(one2one_content);
		dto.setOne2one_member_id(one2one_member_id);
		
		int result = one2oneService.one2one_write(dto);
		System.out.println("result:" + result);
		if( result > 0 ) {
			model.addAttribute("alert", "글작성이 성공하였습니다.");
			return "redirect:/one2one";  
		}else {
			model.addAttribute("alert", "글작성이 실패하였습니다.");
			return "/one2one"; 
		}
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- service 폴더 */
	/* 공지사항_도움말 */
	@Autowired
	private IfaqDao faqDao;
	@Autowired
	private InoticeDao noticeDao;
	
	@RequestMapping("/service")
	public String notice(@RequestParam(value="page_notice",required=false) String page_notice,
			@RequestParam(value="page_faq",required=false) String page_faq,
			HttpServletRequest request,
			Model model) {
		/*
		 * HttpSession session = request.getSession(); String notice
		 * =(String)session.getAttribute("dto");
		 */
		//session은 http와 같은 페이지가 열려있을 때의 값을 유지한 채로 가져와주는 역할을 함
		//sql을 보여주는 것과는 무관하다
		
		
		if( page_notice == null) {
			page_notice = "1";
		}
		
		if( page_faq == null) {
			page_faq = "1";
		}
		
		model.addAttribute("page_notice", page_notice);
		model.addAttribute("page_faq", page_faq);
		
		int num_page_size = 5; //한페이지당 Row갯수
		
		int num_page_no_notice = Integer.parseInt( page_notice ); //page번호 1,2,3,4
		int num_page_no_faq = Integer.parseInt( page_faq ); //page번호 1,2,3,4
		
		
		int startRowNum_notice = (num_page_no_notice - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호
		int startRowNum_faq = (num_page_no_faq - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호
		
		int endRowNum_notice = (num_page_no_notice * num_page_size);           // 5, 10, 15 페이지 끝 줄번호
		int endRowNum_faq = (num_page_no_faq * num_page_size);           // 5, 10, 15 페이지 끝 줄번호
		
		
		// row 1~5 까지...
		List<faqDto> faqlist = faqDao.faqpage(String.valueOf(startRowNum_faq), String.valueOf(endRowNum_faq) );
		System.out.println(faqlist);
		List<noticeDto> noticelist = noticeDao.noticepage(String.valueOf(startRowNum_notice), String.valueOf(endRowNum_notice) );
		System.out.println(noticelist);
		
		model.addAttribute("noticelist",noticelist);
		model.addAttribute("faqlist",faqlist);
		model.addAttribute("mainPage","service/service.jsp");
		
		return "index";
	}
	/* ----------------------------------------- */

	/* ----------------------------------------- host 폴더 */
	/* 호스트마이페이지 */
	@RequestMapping("/mypage_host")
	public String mypage_host(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		System.out.println(member_id + "  asdas");
		int member_host = (int) session.getAttribute("member_host");
		System.out.println(member_host);
		List<memberDto> member_list = memberService.mypageload(member_id);

		if (member_host == 1) {
			model.addAttribute("member_list", member_list);
			model.addAttribute("mainPage", "host/host.jsp");
			return "index";
		} else {
			model.addAttribute("mainPage", "main.jsp");
			return "redirect:main";
		}
		
		
		
		
	}

	/* 호스트이름 변경 */
	@RequestMapping("/hostnamechange")
	public String hostnamechange(@RequestParam("member_name") String member_name, Map<String, Object> map,
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
			return "redirect:/mypage_host";
		} else {
			return "redirect:/mypage_host";
		}
	}
//	------------------------------------------------------------------
	// 호스트email변경
		@RequestMapping("/hostemailchange")
		public String hostemailchange(@RequestParam("member_email") String member_newemail, HttpServletRequest request,
				Model model) {
			HttpSession session = request.getSession();
			String member_id = (String) session.getAttribute("member_id");
			System.out.println(member_id);

			int newemail = memberService.email_change(member_newemail, member_id);
			System.out.println(newemail);

			if (newemail == 1) {
				return "redirect:/mypage_host";
			} else {
				return "redirect:/mypage_host";
			}
		}
//		------------------------------------------------------------------
//		호스트전화번호변경
		@RequestMapping("/hostphonechange")
		public String hostphonechange(@RequestParam("member_phone") String member_newphone, HttpServletRequest request,
				Model model) {
			HttpSession session = request.getSession();
			String member_id = (String) session.getAttribute("member_id");

			System.out.println(member_id);

			int newphone = memberService.phone_change(member_newphone, member_id);

			System.out.println(newphone);

			if (newphone == 1) {
				System.out.println(member_newphone);
				return "redirect:/mypage_host";
			} else {
				return "redirect:/mypage_host";
			}
		}
//		------------------------------------------------------------------
		
		@RequestMapping("searchAction")
		public String searchAction(
				@RequestParam("search") String search,
				Model model) {
			
			List<hostenterDto> search_result = hostenterService.search(search);
			
			
			model.addAttribute("search_result",search_result);
			System.out.println("전달");
			model.addAttribute("mainPage","search_result.jsp");
			return "index";
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

	@RequestMapping("/space_info_host")
	public String space_info_host(
			HttpServletRequest request,
			@RequestParam("host_name") String hostenter_img_title,
			Model model) {
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		
		List<hostenter_imgDto> img_list = hostenter_imgDaoService.hostenter_img_sel(hostenter_img_title);
		List<hostenterDto> detail_list = hostenterService.detail_space(hostenter_img_title);
		model.addAttribute("img_list",img_list);
		model.addAttribute("detail_list",detail_list);
		model.addAttribute("mainPage", "host/space_info_host.jsp");
		return "index";
	}
	@RequestMapping("/delete_space")
	public String delete_space(@RequestParam("hostenter_number") int hostenter_number,
							   @RequestParam("hostenter_img_name") String hostenter_img_name,
			Model model
			){
		
		int result = hostenter_imgDaoService.delete_img(hostenter_img_name);
		
		int result2 = hostenterService.delete_space(hostenter_number);
		
	
		return "redirect:/mypage_host";
		
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
	@Autowired
	private IcommunityDao icommunityDao;
	
	@RequestMapping("/community")
	public String community(@RequestParam(value = "contents_number") String contents_number,
			@RequestParam(value="community_number",required = false) String community_number,
			@RequestParam(value="page_commu",required = false)String page_commu,
			
			HttpServletRequest request, Model model)  {
		
		if(page_commu == null) {
			page_commu = "1";
		}
		
		request.getSession().setAttribute("community_number", community_number);
		request.getSession().setAttribute("contents_number", contents_number);
		

		List<contentsDto> contentsload = contentsService.contentsload(contents_number);
		List<noticeDto> notice_list = noticeService.contents_notice(contents_number);
		model.addAttribute("notice_list",notice_list);
		model.addAttribute("contentsload", contentsload); //제목부분
		model.addAttribute("page_commu",page_commu); // 페이지부분

        int num_page_size = 5; //한페이지당 Row갯수
		int num_page_no_commu = Integer.parseInt( page_commu ); //page번호 1,2,3,4
		
		int startRowNum_community = (num_page_no_commu - 1) * num_page_size + 1; // 1, 6, 11 페이지 시작 줄번호
		int endRowNum_community = (num_page_no_commu * num_page_size);           // 5, 10, 15 페이지 끝 줄번호


		// row 1~5 까지...
		List<communityDto> communitylist = icommunityDao.community_page(String.valueOf(startRowNum_community), String.valueOf(endRowNum_community),contents_number );
		List<hostenterDto> space_list = hostenterService.contents_space(contents_number);

		model.addAttribute("space_list", space_list);
		model.addAttribute("communitylist",communitylist);
		model.addAttribute("mainPage", "contents/community.jsp");

		return "index";
		
	}
	@RequestMapping("/deletecommu")
	public String deletecommu(@RequestParam("community_number") int community_number) {
		System.out.println(community_number);
		int result1 = ireplyDao.deletereplyA( community_number );
		int result2 = icommunityDao.deletecommu( community_number );
		
		
		
		System.out.println(result1);
		System.out.println(result2);
		
		if( result1 != 1 && result2 != 1) {
			return "redirect:/mylist";
		}else {
			return "redirect:/mylist";   
		}
	}
	
	/* 게시글 글쓰기 */
	@RequestMapping("/community_write")
	public String community_write(Model model) {

		model.addAttribute("mainPage", "contents/community_write.jsp");
		return "index";
	}
	
	
	@RequestMapping("/community_writeAction")
	public String community_writeAction(
			@RequestParam("commu_title")String community_title,
			@RequestParam("commu_contents_number")int contents_number,
			@RequestParam("commu_content")String community_content,
			@RequestParam("commu_name")String member_name,
			HttpServletRequest request,Model model) {
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
	
		communityDto dto = new communityDto();
		dto.setCommunity_title(community_title);
		dto.setCommunity_content(community_content);
		dto.setCommunity_contents_number(contents_number);
		dto.setCommunity_member_name(member_name);
		dto.setCommunity_member_id(member_id);
		
		
		int result = communityService.community_write(dto);
		
		if(result > 0) {
			model.addAttribute("alert","글 작성이 성공하였습니다");
			return "redirect:/community?contents_number=" +contents_number;
		} else {
			model.addAttribute("alert","글 작성이 실패하였습니다");
			return "/community";
		}
	}

	
	
	/* 게시글 내용,댓글 보기 */
	@RequestMapping("/community_info")
	public String community_info(@RequestParam("community_number")String community_number,
	 @RequestParam("contents_number") String contents_number,
			HttpServletRequest request, Model model) throws Exception {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
			System.out.println(contents_number+"콘텐츠넘버");
		List<hostenterDto> space_top_hit = hostenterService.space_top_hit(contents_number);
		List<replyDto> replyViewlist = replyService.replyView(community_number);
		
		List<communityDto> community_contents = communityService.community_content(community_number);

		
			model.addAttribute("space_top_hit",space_top_hit);
		model.addAttribute("replyView", replyViewlist);
		model.addAttribute("mainPage", "contents/community_info.jsp");
		
		model.addAttribute("community_contents", community_contents);
		model.addAttribute("mainPage", "contents/community_info.jsp");
		
		
		//조회수 올리기 실행
		 communityService.community_hit(community_number);
	
		return "index";

	}

	
	
	/* 댓글 달기 */
	@RequestMapping("/community_infoAction")
	public String community_infoAction(
			@RequestParam("commu_info") String reply_content,
			//form안에 있어서 community_number 가져올 수 있음
			@RequestParam( "communty_number") String community_number,
			replyDto dto, HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		

		dto.setReply_member_id(member_id);
		dto.setReply_communty_number(community_number);
		dto.setReply_content(reply_content);

		int result = ireplyDao.replyInsert(dto); System.out.println(result);
		
		if(result !=1) { 
			 
			return "<script> alert('댓글 실패'); location.back(); </script>"; } 
		 
		else {		

		return "redirect:/community_info?community_number="+community_number;
		
		}

	}
	
	

	/* 공간대여(일반회원) */
	@RequestMapping("/spacerent")
	public String spacerent(
			@RequestParam("contents_number") String contents_number,
			Model model) {
	
		List<hostenterDto> space_list = hostenterService.contents_space(contents_number);
		model.addAttribute("space_list",space_list);
		model.addAttribute("mainPage", "contents/spacerent.jsp");
		return "index";
	}

	/* 공간상세(일반회원) */
	@RequestMapping("/space_info")
	public String space_info(@RequestParam("hostenter_number") int hostenter_number,
							 @RequestParam("hostenter_name") String hostenter_name,
			Model model) {
		
		System.out.println(hostenter_name);
		List<hostenterDto> space_info = hostenterService.space_info(hostenter_number);
		System.out.println(space_info);
		List<hostenter_imgDto> img_list = hostenter_imgDaoService.img_sel(hostenter_name);
		System.out.println("aaaa");
		System.out.println(img_list);
		model.addAttribute("img_list",img_list);
		model.addAttribute("space_info",space_info);
		model.addAttribute("mainPage", "contents/space_info.jsp");
		return "index";
	}
	
	
    // 찜 하기
	@RequestMapping("/zzim_doAction")
	@ResponseBody
	public String zzim_doAction( @RequestParam("hostenter_number") String hostenter_number,
			                     HttpServletRequest request, Model model) throws Exception {
	

		HttpSession session = request.getSession();
		String member_id = (String)session.getAttribute("member_id");
		
		int exist_result = wishService.zzim_exist( hostenter_number, member_id);
		
	
		//로그인 되지 않았을 시에 찜 데이터 안 들어가도록(즉 1대입)
		if(member_id == null) {
			exist_result = 1;
		}
		
		//데이터에 찜 기록이 존재하지 않을 때(즉 exist_result는 0)
		if(exist_result == 0) {
		
			wishDto dto = new wishDto();
			dto.setMy_wish_member_id(member_id);
			dto.setMy_wish_hostenter_number(hostenter_number);
			int result = wishService.zzim_do(dto); 
		
			
			//만약 result가 1이 되면 찜 데이터 들어감
			if(result != 0) {
				
				
				hostenterService.zzim_count(hostenter_number);
				
				return "<script> alert('찜이 정상적으로 되었습니다 (˵ •̀ ᴗ - ˵ ) ✧'); location.href='/main' </script>";
                //return "redirect:/space_info?hostenter_number="+hostenter_number;
			
			} else {
				return "<script> alert('로그인 먼저 해주세요'); location.back(); </script>"; 
			} 
		} 
		
		//데이터에 찜 기록이 존재
		else {
			
			return "<script> alert('찜이 불가능합니다 ŏ̥̥̥̥םŏ̥̥̥̥'); location.href='/main'</script>";
		}
		
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
		int qq = 0;
		
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
						upload_url_title,
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
		
		
		model.addAttribute("mainPage","host/host.jsp");
		return "redirect:/mypage_host";
		
		
	}
	
	@RequestMapping(value="/udateuploadMultiFileOk", method = RequestMethod.POST)
	public String udateuploadMultiFileOk( 
			@RequestParam("hostenter_number") int hostenter_number,
			@RequestParam("host_name") String host_name_,
			@RequestParam("room") int host_contents_number_,
			@RequestParam("host_onerow") String host_onerow_,
			@RequestParam("host_des") String host_des_,
			@RequestParam("host_caution") String host_caution_,
			@RequestParam("host_price") int host_price_,
			@RequestParam("host_bnumber") int host_bnumber_, 
			@RequestParam("host_headcount") int host_headcount_,
			@RequestParam("none_hostenter_name") String hostenter_name,
			@RequestParam(value="filename2", required=false) MultipartFile File_title,
			@RequestParam(value="filename", required=false) MultipartFile[] filelist,
			HttpServletRequest request,
			Model model) {
		
	
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		int result = 0;
		int qq = 0;
		
		
		
		 String upload_url_title = fileUploadService.restore(File_title);
		 System.out.println(upload_url_title);
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
		 int host_price = host_price_; 
		 System.out.println(host_price);
		 int host_bnumber = host_bnumber_; 
		 System.out.println(host_bnumber);
		 int host_headcount = host_headcount_; 
		 System.out.println(host_headcount);
		 System.out.println(hostenter_number);
		System.out.println(hostenter_name);
	
		if(upload_url_title.equals("0")) {
			upload_url_title = hostenterService.select_title(hostenter_number);
		}
		

			try {
				int oo = hostenter_imgDaoService.delete_img(hostenter_name);
				System.out.println(oo);
				if(oo > 0) {
					System.out.println("삭제성공");
				}
				result = hostenterService.update_space(upload_url_title, 
													   host_name, 
													   host_contents_number, 
													   host_onerow, 
													   host_des,
													   host_caution, 
													   host_price,
													   host_bnumber, 
													   host_headcount, 
													   hostenter_number);
				
			
			} catch (Exception e) {
				
			}
			
			if(result == 1) {
				for( MultipartFile file : filelist) {
					System.out.println("filelist:" + filelist);
					System.out.println("filename:" + file);
					String upload_url = fileUploadService.restore(file);
					System.out.println( "upload_url:" + upload_url );
				
					
						
				result = hostenter_imgDaoService.hostenter_img_up(host_name_,member_id,upload_url);
					
					
					
				if( upload_url != null ) {
					if( upload_url.length() > 0 ) {
						result = 0;
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

		model.addAttribute("mainPage","host/host.jsp");
		return "redirect:/mypage_host";
		

		
		 
	}
	/* 채팅부분 */
/*---------------------------------------------------------------------------------------------------------------*/
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;
	
	@RequestMapping("/chat")
	public String chat(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat");
		
		return "index";
	}
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping("/room")
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("room");
		return mv;
	}
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 */
	@RequestMapping("/createRoom")
	public @ResponseBody List<Room> createRoom(@RequestParam HashMap<Object, Object> params){
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			Room room = new Room();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
			roomList.add(room);
		}
		return roomList;
	}
	
	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 */
	@RequestMapping("/getRoom")
	public @ResponseBody List<Room> getRoom(@RequestParam HashMap<Object, Object> params){
		return roomList;
	}
	
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveChating")
	public ModelAndView chating(@RequestParam HashMap<Object, Object> params,
			HttpServletRequest request,
			Model model
			) {
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("member_id");
		
		List<memberDto> memberlist = memberService.mypageload(member_id);
		
		model.addAttribute("memberlist",memberlist);
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.setViewName("chat");
		}else {
			mv.setViewName("room");
		}
		return mv;
	}
	
}
	


