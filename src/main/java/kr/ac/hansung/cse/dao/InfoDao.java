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
		String SQL = "select * from offers";
		return jdbcTemplate.query(SQL, new RowMapper<Info>() {

			@Override
			public Info mapRow(ResultSet rs, int rowNum) throws SQLException {
				Info offer = new Info();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setEmail(rs.getString("email"));
				offer.setText(rs.getString("text"));
				return offer;
			}
		});
	}
	
	public List<Info> getDetailInfo() {
		String SQL = "select * from offers";
		return jdbcTemplate.query(SQL, new RowMapper<Info>() {

			@Override
			public Info mapRow(ResultSet rs, int rowNum) throws SQLException {
				Info offer = new Info();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setEmail(rs.getString("email"));
				offer.setText(rs.getString("text"));
				return offer;
			}
		});
	}

}
