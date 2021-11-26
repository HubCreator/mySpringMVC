package kr.ac.hansung.cse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.cse.model.Info;

@Repository("offerDao")
public class InfoDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<Info> getSimpleInfo() {
		String SQL = "select year, semester, credit from collegeinfo";
		return jdbcTemplate.query(SQL, new RowMapper<Info>() {

			@Override
			public Info mapRow(ResultSet rs, int rowNum) throws SQLException {
				Info info = new Info();
//				info.setId(rs.getInt("id"));
				info.setYear(rs.getInt("year"));
				info.setSemester(rs.getInt("semester"));
				info.setCredit(rs.getInt("credit"));
				return info;
			}
		});
	}
	
	public List<Info> getDetailInfo() {
		String SQL = "select year, semester, subject_name, category, "
				+ "professor, credit from collegeinfo";
		return jdbcTemplate.query(SQL, new RowMapper<Info>() {

			@Override
			public Info mapRow(ResultSet rs, int rowNum) throws SQLException {
				Info info = new Info();
//				info.setId(rs.getInt("id"));
				info.setYear(rs.getInt("year"));
				info.setSemester(rs.getInt("semester"));
				info.setSubject_name(rs.getString("subject_name"));
				info.setCategory(rs.getString("category"));
				info.setProfessor(rs.getString("professor"));
				info.setCredit(rs.getInt("credit"));
				return info;
			}
		});
	}

}
