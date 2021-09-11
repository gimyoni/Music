package kr.hs.study.controller;

import java.util.List;
import java.util.function.Consumer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.hs.study.model.dto.MusicDTO;

@Controller
public class TestController {
	
	@Autowired
	SqlSessionTemplate sqlsessiontemplate;
	
	@GetMapping("/list")
	   public String list(MusicDTO bean) {
	      List<MusicDTO> musics = sqlsessiontemplate.selectList("music.list", bean);
	      System.out.println("°³¼ö" + musics.size());
	      for(MusicDTO music : musics) {
	         System.out.println(music.getId());
	         System.out.println(music.getSong_title());
	         System.out.println(music.getSong_singer());
	      }
	      return "list";
	   }
	
	@GetMapping("/add")
	public String add(MusicDTO bean) {
		return "add";
	}
	
	@GetMapping("/search")
	public String search(MusicDTO bean) {
		return "search";
	}
	
	@PostMapping("/add_result")
	public String add_result(@ModelAttribute MusicDTO bean, Model model) {
		sqlsessiontemplate.insert("music.insert", bean);
		model.addAttribute("song_title", bean.getSong_title());
		model.addAttribute("song_singer", bean.getSong_singer());
		model.addAttribute("song_genre", bean.getSong_genre());
		model.addAttribute("song_price", bean.getSong_price());
		model.addAttribute("song_passwd", bean.getSong_passwd());
		model.addAttribute("song_date", bean.getSong_date());
		return "add_result";
	}
	
	@PostMapping("/search_result")
	public String search_result(@ModelAttribute MusicDTO bean, Model model) {
//		List<Music> search = sqlsessiontemplate.selectList("music.search", bean);
//		search.forEach(new Consumer<Music>() {
//			@Override
//			public void accept(Music dto) {
//				System.out.println(dto.getSong_title());
//				System.out.println(dto.getSong_singer());
//			}
//		});
		MusicDTO music = sqlsessiontemplate.selectOne("music.search", bean);
		model.addAttribute("song_title", music.getSong_title());
		model.addAttribute("song_singer", music.getSong_singer());
		model.addAttribute("song_genre", music.getSong_genre());
		model.addAttribute("song_price", music.getSong_price());
		model.addAttribute("song_passwd", music.getSong_passwd());
		model.addAttribute("song_date", music.getSong_date());
		return "search_result";
	}
	
	
	
}
