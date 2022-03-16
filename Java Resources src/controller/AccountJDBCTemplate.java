package controller;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class AccountJDBCTemplate implements AccountDAO {
	private DataSource dataSource;
	private JdbcTemplate jdbcEmplateObject;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcEmplateObject = new JdbcTemplate(dataSource);
	}
	
	public List<Account> listAccounts() {
		String SQL = "select * from Account";
		List<Account> accounts = jdbcEmplateObject.query(SQL, new AccountMapper());
		return accounts;
	}
}
