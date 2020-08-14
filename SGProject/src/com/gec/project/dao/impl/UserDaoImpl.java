package com.gec.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.gec.project.dao.IUserDao;
import com.gec.project.dao.entity.User;
import com.gec.project.dao.utils.JdbcUtil;

public class UserDaoImpl implements IUserDao {
	public User login(String name, String password) {
		User user = null;
		// 查询全部
		// jdbc:mysql://localhost:3306/oa
		// 1.加载驱动,底层使用反射机制创建驱动类的相关对象
		// com.mysql.jdbc.Driver
		// 2.得到数据库连接
		Connection conn = null;
		// 3.得到Statement
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {

			conn = com.gec.project.dao.utils.JdbcUtil.getConnection();
			String loginSql = "SELECT U_Id,U_login_name,U_password,U_phone FROM user WHERE U_phone=? AND U_password=?";
			ps = conn.prepareStatement(loginSql);
			ps.setObject(1, name);
			ps.setObject(2, password);
			rs = ps.executeQuery();
			// 5.处理结果集
			// 每一次循环就加载一条记录，一条记录对应一个对象
			if (rs.next()) {
				user = new User();
				// 属性对象字段，属性类型对字段类型
				user.setuId(rs.getInt("U_Id"));
				user.setuLoginName(rs.getString("U_login_name"));
				user.setuPassword(rs.getString("U_password"));
				user.setuPhone(rs.getString("U_phone"));

				// System.out.println(id +"\t"+name+"\t"+password);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			com.gec.project.dao.utils.JdbcUtil.closeAll(ps, rs, conn);

		}
		return user;
	}

	@Override
	public int save(User user) {

		String sql = "insert into user value(?,?,?,?)";
		Object[] objects = { user.getuId(), user.getuLoginName(), user.getuPassword(), user.getuPhone() };
		return JdbcUtil.executeQuery(sql, objects);

		// int row=-1;
		// User user1=null;
		// Connection conn = null;
		// // 3.得到Statement
		// PreparedStatement ps = null;
		// ResultSet rs = null;
		// try {
		//
		// conn = com.gec.project.dao.utils.JdbcUtil.getConnection();
		// String check="select * from user where U_phone=?";
		// ps = conn.prepareStatement(check);
		// ps.setObject(1, user.getuPhone());
		// rs=ps.executeQuery();
		// if(rs.next()) {
		// return row;
		// }
		// String loginSql = "insert into user value(?,?,?,?)";
		// ps = conn.prepareStatement(loginSql);
		// ps.setObject(1, user.getuId());
		// ps.setObject(2, user.getuLoginName());
		// ps.setObject(3, user.getuPassword());
		// ps.setObject(4, user.getuPhone());
		// row = ps.executeUpdate();
		//
		// } catch ( SQLException e) {
		//
		// e.printStackTrace();
		// } finally {
		// com.gec.project.dao.utils.JdbcUtil.closeAll(ps, rs, conn);
		//
		// }
		// return row;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> allList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int login(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User login() {
		// TODO Auto-generated method stub
		return null;
	}

}
