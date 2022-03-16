package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;


public class AccountMapper implements RowMapper<Account> {
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account account = new Account();
		account.setEmail(rs.getString("user_mail"));
		account.setPassword(rs.getString("password"));
		return account;
	}
}
