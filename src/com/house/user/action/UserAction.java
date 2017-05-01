package com.house.user.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;

import com.house.hibernate.HibernateSessionFactory;
import com.house.user.dao.UserDAO;
import com.house.user.vo.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	private static final long serialVersionUID = -680099124229323722L;
	User user = new User();
	UserDAO dao = new UserDAO();
	HttpServletRequest request = ServletActionContext.getRequest();
	
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	public UserDAO getDao() {
		return dao;
	}


	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	public String addUser() {
		dao.save(user);
		return "add_success";
	}
	public String deleteUser() {
		if("0".equals(request.getSession().getAttribute("power"))) {
			dao.delete((User)HibernateSessionFactory.getSession().get(User.class, user.getId()));
			return "delete_success";
		}else {
			request.getSession().setAttribute("msg", "权限不够");
			return "delete_error";
		}	
	}
	public String toupdateUser() {
		if("0".equals(request.getSession().getAttribute("power"))) {
			user = (User)HibernateSessionFactory.getSession().get(User.class, user.getId());
			return "to_update";
		}else {
			request.getSession().setAttribute("msg", "权限不够");
			return "to_update_error";
		}
	}
	public String updateUser() {
		User user1 = (User)HibernateSessionFactory.getSession().get(User.class, user.getId());
		user1.setUid(user.getUid());
		user1.setUsername(user.getUsername());
		user1.setPassword(user.getPassword());
		user1.setName(user.getName());
		user1.setPower(user.getPower());
		return "update_success";
	}
	
	public String checkLogin() {
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		String sql = "select password from User u where u.username='" +  username + "'";
		String sql2 = "select name from User u where u.username = '" + username + "'";
		String sql3 = "select power from User u where u.username = '" + username + "'";
		Query query = HibernateSessionFactory.getSession().createQuery(sql);
		if(query.list().size() != 0) {
			String password2 = (String)query.list().get(0);
			if(password.equals(password2)) {
				request.getSession().setAttribute("name", (String)HibernateSessionFactory.getSession().createQuery(sql2)
						.list().get(0));
				request.getSession().setAttribute("power", (Integer)HibernateSessionFactory.getSession().createQuery(sql3)
						.list().get(0));
				return "login_success";
			}			
		}
		request.setAttribute("msg", "密码错误，登录失败！");
		return "login_error";
	}
	public String quit() {
		request.getSession().invalidate();
		return "quit";
	}
}
