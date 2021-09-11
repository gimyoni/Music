package kr.hs.study.model.dto;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MusicDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String InsertMusic = "music.insert";
	private static final String SearchMusic = "music.search";
	private static final String ListMusic = "music.list";
	
	public void insert(MusicDTO dto) {
		sqlSession.insert(InsertMusic, dto);
	}

	public MusicDTO search(String title) {
		return sqlSession.selectOne(SearchMusic, title);
	}

//	@Override
//	public List<Music> list() {
//		return sqlSession.selectList(ListMusic);
//	}
	
}
