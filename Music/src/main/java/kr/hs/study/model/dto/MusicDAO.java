package kr.hs.study.model.dto;

import java.util.List;

public interface MusicDAO {
		
	public void insert(MusicDTO dto);
	
	public void update(MusicDTO dto);
	
	public void delete(String id);
	
	public MusicDTO search(String title);
	
}