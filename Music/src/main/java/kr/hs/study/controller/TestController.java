package kr.hs.study.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.hs.study.model.dto.MusicDTO;

@Controller
public class TestController {
	
	@Autowired
	SqlSessionTemplate sqlsessiontemplate;
		
	@GetMapping("/add")
	public String add(MusicDTO dto) {
		return "add";
	}
	
	@PostMapping("/add_result")
	public String add_result(@ModelAttribute MusicDTO dto, Model model) {
		sqlsessiontemplate.insert("music.insert", dto);
		model.addAttribute("song_title", dto.getSong_title());
		model.addAttribute("song_singer", dto.getSong_singer());
		model.addAttribute("song_genre", dto.getSong_genre());
		model.addAttribute("song_price", dto.getSong_price());
		model.addAttribute("song_passwd", dto.getSong_passwd());
		model.addAttribute("song_date", dto.getSong_date());
		return "add_result";
	}
	
	@GetMapping("/search")
	public String search(MusicDTO dto) {
		return "search";
	}
	

	@PostMapping("/search_result")
	public String search_result(@ModelAttribute MusicDTO dto, Model model) {

		MusicDTO music = sqlsessiontemplate.selectOne("music.search", dto);
		model.addAttribute("song_title", music.getSong_title());
		model.addAttribute("song_singer", music.getSong_singer());
		model.addAttribute("song_genre", music.getSong_genre());
		model.addAttribute("song_price", music.getSong_price());
		model.addAttribute("song_passwd", music.getSong_passwd());
		model.addAttribute("song_date", music.getSong_date());
		return "search_result";
	}
	
	@GetMapping("/list")
	public ModelAndView list(MusicDTO dto) {
		List<MusicDTO> musics = sqlsessiontemplate.selectList("music.list", dto);
		ModelAndView mv = new ModelAndView("/list");
		mv.addObject("musics", musics);
		return mv;
	}
	
	@PostMapping("/delete")
	public ModelAndView delete(HttpServletRequest rq, HttpServletResponse rs) {
		String song_title = rq.getParameter("song_title");
		Map model = new HashMap();
		model.put("song_title", song_title);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("delete");
		modelAndView.addAllObjects(model);
		return modelAndView;
	}
	
	@PostMapping("/delete_result")
	public String delete_result(@ModelAttribute MusicDTO dto) {
		String id = String.valueOf(dto.getId());
		sqlsessiontemplate.delete(id);
		return "delete_result";
	}

	@PostMapping("/modify")
	public String modify() {
		return "modify";
	}	
	
	@PostMapping("/modify_result")
	public String modify_result(@ModelAttribute MusicDTO dto, Model model, String id) {
		int music = sqlsessiontemplate.update("music.modify", dto);
		model.addAttribute("song_title", dto.getSong_title());
		model.addAttribute("song_singer", dto.getSong_singer());
		model.addAttribute("song_genre", dto.getSong_genre());
		model.addAttribute("song_price", dto.getSong_price());
		model.addAttribute("song_passwd", dto.getSong_passwd());
		model.addAttribute("song_date", dto.getSong_date());
		return "modify_result";
	}	
}
