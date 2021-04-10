package com.safetour.myapp.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.safetour.myapp.model.FormSerivce;
import com.safetour.myapp.model.KoNLPYmodel;
import com.safetour.myapp.model.ThemeDTO;
import com.safetour.myapp.model.TourDAO;
import com.safetour.myapp.model.TourDTO;




@Controller
@RequestMapping("Form")
public class FormController {
	private static final Logger logger = LoggerFactory.getLogger(FormController.class);
	
	@Autowired
	private FormSerivce formService;
	
	@GetMapping("/")
	public String ThemeSearch() {
		return "search/theme_search";
	}
	
	@PostMapping("/")
	public ModelAndView ThemeSearch(@ModelAttribute ThemeDTO themeDTO, HttpServletRequest request, HttpSession session) throws Exception {
		String theme = request.getParameter("Theme");
		String address = request.getParameter("address");
		String partner = request.getParameter("with");
		KoNLPYmodel predictTheme = new KoNLPYmodel(theme);
		String themePredict = predictTheme.getTheme();
		themeDTO.setSentence(themePredict);
		themeDTO.setAddress(address);
		themeDTO.setPartner(partner);
		logger.info(themeDTO.toString());
		try {
			session.setAttribute("themeSentence", themeDTO);
//			List<LabelDTO> labelDTO = formService.getLabelList( theme, partner);
			session.setAttribute("themeInfo", themeDTO);
			if(themePredict == "체험") {
				ModelAndView mav = new ModelAndView("search/leisure");
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/leisure");
				return mav;
			} else if(themePredict == "바다") {
				ModelAndView mav = new ModelAndView("search/ocean");
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/ocean");
				return mav;
			} else if(themePredict == "문화") {
				ModelAndView mav = new ModelAndView("search/culture");
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/culture");
				return mav;
			} else {
				ModelAndView mav = new ModelAndView("search/mountain");
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/mountain");
				return mav;
			}
			
		} catch(Exception e){
			e.printStackTrace();
			ModelAndView mav = new ModelAndView("search/label_search");
			mav.addObject("msg", "검색실패");
			mav.addObject("url", "javascript:history.back();");
			return mav;
		}
	}
	
	@GetMapping("/label")
	public String LabelSearch() {
		return "search/label_search";
	}
	

	
	@PostMapping("/label/tour")
	public ModelAndView TourResult(@ModelAttribute ThemeDTO themeDTO, HttpServletRequest request, HttpSession session) {

		String SelectLabel_1 = request.getParameter("text_label_1");
		String SelectLabel_2 = request.getParameter("text_label_2");
		String SelectLabel_3 = request.getParameter("text_label_3");
		String SelectLabel_4 = request.getParameter("text_label_4");
		String SelectLabel_5 = request.getParameter("text_label_5");
		String SelectLabel_6 = request.getParameter("text_label_6");
		String SelectLabel_7 = request.getParameter("text_label_7");
		String SelectLabel_8 = request.getParameter("text_label_8");
		String SelectLabel_9 = request.getParameter("text_label_9");
		String SelectLabel_10 = request.getParameter("text_label_10");
		String SelectLabel_11 = request.getParameter("text_label_11");
		String SelectLabel_12 = request.getParameter("text_label_12");
		ThemeDTO themeInfo = (ThemeDTO) session.getAttribute("themeInfo");
		logger.info("테마 전달 완료" + themeInfo.toString()+" : " +SelectLabel_1+":"+SelectLabel_2+":"+SelectLabel_3+":"+SelectLabel_4);
		if(themeInfo.getSentence() == "체험") {
			try {
				List<TourDAO> tourDAO = formService.getTourList_l(themeInfo.getSentence(), themeInfo.getPartner(),SelectLabel_1, SelectLabel_2, SelectLabel_3,SelectLabel_4, SelectLabel_5, SelectLabel_6,SelectLabel_7, SelectLabel_8, SelectLabel_9, SelectLabel_10, SelectLabel_11, SelectLabel_12);
				ModelAndView mav = new ModelAndView("search/result/tour_result", "tourDAO", tourDAO);
				mav.addObject("currentLoc", themeInfo.getAddress());
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/result/tour_result");
				return mav;
			
				
			} catch(Exception e) {
				e.printStackTrace();
				ModelAndView mav = new ModelAndView("search/result/tour_result");
				mav.addObject("msg", "검색실패");
				mav.addObject("url", "javascript:history.back();");
				return mav;
			}
		} else if(themeInfo.getSentence()=="바다") {
			try {
				List<TourDAO> tourDAO = formService.getTourList_o(themeInfo.getSentence(), themeInfo.getPartner(),SelectLabel_1, SelectLabel_2, SelectLabel_3,SelectLabel_4, SelectLabel_5, SelectLabel_6, SelectLabel_7, SelectLabel_8, SelectLabel_9, SelectLabel_10, SelectLabel_11, SelectLabel_12);
				
				ModelAndView mav = new ModelAndView("search/result/tour_result", "tourDAO", tourDAO);
				mav.addObject("currentLoc", themeInfo.getAddress());
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/result/tour_result");
				return mav;
				
				
			} catch(Exception e) {
				e.printStackTrace();
				ModelAndView mav = new ModelAndView("search/result/tour_result"); 
				mav.addObject("msg", "검색실패");
				mav.addObject("url", "javascript:history.back();");
				return mav;
			}
		} else if(themeInfo.getSentence() == "문화") {
			try {
				List<TourDAO> tourDAO = formService.getTourList_c(themeInfo.getSentence(), themeInfo.getPartner(),SelectLabel_1, SelectLabel_2, SelectLabel_3,SelectLabel_4, SelectLabel_5,SelectLabel_6, SelectLabel_7, SelectLabel_8, SelectLabel_9, SelectLabel_10, SelectLabel_11, SelectLabel_12);
			
				ModelAndView mav = new ModelAndView("search/result/tour_result", "tourDAO", tourDAO);
				mav.addObject("currentLoc", themeInfo.getAddress());
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/result/tour_result");
				return mav;
				
				
			} catch(Exception e) {
				e.printStackTrace();
				ModelAndView mav = new ModelAndView("search/result/tour_result");
				mav.addObject("msg", "검색실패");
				mav.addObject("url", "javascript:history.back();");
				return mav;
			}
		} else {
			try {
				List<TourDAO> tourDAO = formService.getTourList_m(themeInfo.getSentence(), themeInfo.getPartner(),SelectLabel_1, SelectLabel_2, SelectLabel_3,SelectLabel_4, SelectLabel_5, SelectLabel_6, SelectLabel_7, SelectLabel_8, SelectLabel_9, SelectLabel_10, SelectLabel_11, SelectLabel_12);
				
				ModelAndView mav = new ModelAndView("search/result/tour_result", "tourDAO", tourDAO);
				mav.addObject("currentLoc", themeInfo.getAddress());
				mav.addObject("msg", "검색완료");
				mav.addObject("url", "search/result/tour_result");
				return mav;
				
				
			} catch(Exception e) {
				e.printStackTrace();
				ModelAndView mav = new ModelAndView("search/result/tour_result");
				mav.addObject("msg", "검색실패");
				mav.addObject("url", "javascript:history.back();");
				return mav;
			}
		}
		
	}
	@RequestMapping("/label/Mountain")
	public String ImageM(){
		return "search/result/ImageGAN";
	}
	@RequestMapping("/label/Ocean")
	public String ImageO(){
		return "search/result/SeaGan";
	}
}
