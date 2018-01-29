package com.dev.huining.soft.web.zfire.service;

import com.dev.huining.soft.web.zfire.dao.HibernateBaseDAO;
import com.dev.huining.soft.web.zfire.dto.Parameter;
import com.dev.huining.soft.web.zfire.pojo.entity.SysUser;
import com.dev.huining.soft.web.zfire.utils.BeanUtils;
import com.dev.huining.soft.web.zfire.utils.CommonUtils;
import org.apache.commons.lang.StringUtils;
import org.jasypt.util.password.BasicPasswordEncryptor;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;

/**
 * User: yu_xinling
 * Date: 13-8-11
 * Time: 上午12:24
 */
@Service
public class UserService {
	@Resource
	private HibernateBaseDAO hdao;
    //TODO user
	public void addUser(Parameter parameter) {
		SysUser user = new SysUser();
		BeanUtils.fillBeanValue(parameter, user);
		if (StringUtils.isBlank(user.getId())) {
			user.setId(CommonUtils.uuid());
		}

		if (user.getPassword() != null) {
			user.setPassword(new BasicPasswordEncryptor().encryptPassword(user.getPassword()));
		}

		user.setDelFlag(0);
		user.setIscan(1);
		user.setIsuse(1);
		hdao.save(user);
	}

	public SysUser getUser(String username) {
		Assert.hasLength(username, "The username id is required.");

		String hql = "from SysUser o where o.username = ?";
		SysUser user = (SysUser) hdao.findUniqueEntity(hql, new Object[]{username});
		return user;
	}

    //TODO right
    //TODO role
}
