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

@Repository("infoDao")
public class InfoDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Info> getSimpleInfo() {
		String SQL = "select year, semester, sum(credit) " + "from collegeinfo " + "group by year, semester "
				+ "order by year, semester";
		return jdbcTemplate.query(SQL, new RowMapper<Info>() {

			@Override
			public Info mapRow(ResultSet rs, int rowNum) throws SQLException {
				Info info = new Info();
				info.setYear(rs.getInt("year"));
				info.setSemester(rs.getInt("semester"));
				info.setCredit_sum(rs.getInt("sum(credit)"));
				info.setCredit_totalAmount(info.getCredit_totalAmount() + info.getCredit_sum());

				return info;
			}
		});
	}

	public List<Info> getDetailInfo(String year, String semester) {
		String SQL = "select year, semester, subject_name, category, professor, credit " 
					+ "from collegeinfo "
					+ "where year=? and semester=?" 
					+ "order by subject_name";
		return jdbcTemplate.query(SQL, new RowMapper<Info>() {

			@Override
			public Info mapRow(ResultSet rs, int rowNum) throws SQLException {
				Info info = new Info();
				info.setYear(rs.getInt("year"));
				info.setSemester(rs.getInt("semester"));
				info.setSubject_name(rs.getString("subject_name"));
				info.setCategory(rs.getString("category"));
				info.setProfessor(rs.getString("professor"));
				info.setCredit(rs.getInt("credit"));
				return info;
			}
		}, new Object[] { year, semester });
	}

}
