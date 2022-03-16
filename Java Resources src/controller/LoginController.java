package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping(value = "/login.html", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
		
		AccountJDBCTemplate accountJDBCTemplate = (AccountJDBCTemplate) context.getBean("accountJDBCTemplate");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		List<Account> accounts = accountJDBCTemplate.listAccounts();
		
		if (!username.equals("") && !password.equals("")) {
			for (Account record : accounts) {
				if (record.getEmail().equalsIgnoreCase(username) && record.getPassword().equals(password)) {
					return new ModelAndView("confirmation", "username", username);
				}
			}
			return new ModelAndView("login", "error", "Username or password is invalid");
		}
		
		return new ModelAndView("login", "error", "Please enter username and password");
	}
	
	@RequestMapping(value = {"/index.html", "/"}, method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/login.html", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
}
