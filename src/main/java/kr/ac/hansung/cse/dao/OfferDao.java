package kr.ac.hansung.cse.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.cse.model.Offer;

@Repository("offerDao")
public class OfferDao {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {
		String SQL = "select count(*) from offers";
		return jdbcTemplate.queryForObject(SQL, Integer.class);
	}

	public Offer getOffer(String name) {
		String SQL = "select * from offers where name=?";
		return jdbcTemplate.queryForObject(SQL, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setEmail(rs.getString("email"));
				offer.setText(rs.getString("text"));
				return offer;
			}
		}, new Object[] { name });
	}

	public List<Offer> getOffers() {
		String SQL = "select * from offers";
		return jdbcTemplate.query(SQL, new RowMapper<Offer>() {

			@Override
			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();
				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setEmail(rs.getString("email"));
				offer.setText(rs.getString("text"));
				return offer;
			}
		});
	}

	// Crud method
	public boolean insert(Offer offer) {
		String name = offer.getName();
		String email = offer.getEmail();
		String text = offer.getText();

		String SQL = "insert into offers (name, email, text) value (?, ?, ?)";
		return (jdbcTemplate.update(SQL, new Object[] { name, email, text }) == 1);
	}

	// crUd method
	public boolean update(Offer offer) {
		int id = offer.getId();
		String name = offer.getName();
		String email = offer.getEmail();
		String text = offer.getText();

		String sqlStatement = "update offers set name=?, email=?, text=? where id=?";
		return (jdbcTemplate.update(sqlStatement, new Object[] { name, email, text, id }) == 1);
	}

	// cruD method
	public boolean delete(int id) {
		String sqlStatement = "delete from offers where id=?";
		return (jdbcTemplate.update(sqlStatement, new Object[] { id }) == 1);
	}
}
