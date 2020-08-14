package com.gec.project.service;

import java.util.List;

import com.gec.project.dao.entity.User;


public interface IUserService {

	/**
	 * 接口是一种约定，也可以理解成接口就是一种功能
	 * 接口是一种约定 排插，两脚插，三脚插
	 * 排插提供通电的功能
	 * 这个方法实现查询全部的功能，约定是返回集合类型数据，没有参数的
	 * @return
	 */
	public List<User> listAll();
	/**
	 * 登录功能
	 * @param name 用户名
	 * @param password 密码
	 * @return 查询成返回一个用户对象，否则返回null
	 */
	public User login(String name,String password );
	
	/**
	 * 根据id查询一个用户信息
	 * @param id 用户id
	 * @return 查询成返回一个用户对象，否则返回null
	 */
	public User getById(int id);
	/**
	 * 修改用户信息
	 * @param user
	 * @return 返回受影响的行数，成功返回1，否则返回-1
	 */
	public int update(User user);
	/**
	 * 保存用户信息
	 * @param user
	 * @return 返回受影响的行数，成功返回1，否则返回-1
	 */
	public int save(User user);
	/**
	 * 根据ID删除用户信息
	 * @param id
	 * @return
	 */
	public int deleteById(int id) ;
	
	/**
	 * 装车：封装一页中的全部信息
	 * @param currentPage 当前页码
	 * @param pageSize 每页显示条数
	 * @return
	 */

	
}
