package kr.hs.study.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.hs.study.model.dto.MusicDAO;
import kr.hs.study.model.dto.MusicDTO;

@Repository
public class MusicDAOImpl implements MusicDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String InsertMusic = "music.insert";
	private static final String SearchMusic = "music.search";
	private static final String ModifyMusic = "music.modify";
	private static final String DeleteMusic = "music.delete";	
	
	public void insert(MusicDTO dto) {
		sqlSession.insert(InsertMusic, dto);
	}

	public MusicDTO search(String title) {
		return sqlSession.selectOne(SearchMusic, title);
	}
	
	@Override
	public void update(MusicDTO dto) {
		sqlSession.update(ModifyMusic, dto);
	}

	@Override
	public void delete(String id) {
		sqlSession.delete(DeleteMusic, id);
	}
	
}
