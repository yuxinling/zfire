package com.dev.huining.soft.web.zfire.action;

import com.dev.huining.soft.web.zfire.action.base.BaseAction;
import com.dev.huining.soft.web.zfire.dto.Result;
import com.dev.huining.soft.web.zfire.pojo.entity.SysUser;
import com.dev.huining.soft.web.zfire.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.jasypt.util.password.BasicPasswordEncryptor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: yu_xinling
 * Date: 13-9-15
 * Time: 下午1:37
 */
@Controller
public class LoginAction extends BaseAction {

	@Resource
	private UserService userService;


	@ResponseBody
	@RequestMapping(value = "login.do")
	public Result handleRequest(HttpServletRequest request, HttpServletResponse response) {
		Result result = Result.buildResult();
		String username = request.getParameter("username");
		String password = request.getParameter("password");


		Map<String, Object> map = new HashMap<String, Object>();
		List<String> messages = new ArrayList<String>();
		boolean loginFlag = false;
		if (StringUtils.isBlank(username)) {
			messages.add("The username can't be empty.");
		}
		if (StringUtils.isBlank(password)) {
			messages.add("The password can't be empty.");
		}
		if (StringUtils.isNotBlank(username) && StringUtils.isNotBlank(password)) {
			SysUser user = userService.getUser(username);
			if (user == null) {
				messages.add("Does not exist user with [" + username + "].");
			} else {
				if (new BasicPasswordEncryptor().checkPassword(password, user.getPassword())) {
					request.getSession().setAttribute("user", user);
					loginFlag = true;
				} else {
					messages.add("The username or password does not match.");
				}
			}
		}

		map.put("flag", loginFlag);
		if (messages.size() > 0)
			map.put("message", messages);

		result.setData(map);
		return result;
	}

	public void handleRequestImage(HttpServletRequest request, HttpServletResponse response) {
		String url = request.getParameter("url");
		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
