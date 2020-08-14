package com.gec.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gec.project.dao.IShequXinwenDao;
import com.gec.project.dao.entity.ShequXinwen;
import com.gec.project.dao.entity.Shequrec;
import com.gec.project.dao.utils.JdbcUtil;

public class ShequXinwenDaoImpl implements IShequXinwenDao {

	@Override
	public int save(ShequXinwen shequXinwen) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ShequXinwen shequXinwen) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ShequXinwen getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ShequXinwen> allList() {
		List<ShequXinwen> lists = new ArrayList<ShequXinwen>();

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM shequ_xinwen";
			conn = JdbcUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				ShequXinwen shequXinwen = new ShequXinwen();
				shequXinwen.setSxId(rs.getInt("SX_id"));
				shequXinwen.setSxDes(rs.getString("SX_des"));
				shequXinwen.setSxClick(rs.getLong("SX_click"));
				shequXinwen.setSxPinglun(rs.getLong("SX_pinglun"));
				shequXinwen.setSxLoginName(rs.getString("SX_u_name"));
				shequXinwen.setSxModdate(rs.getDate("SX_moddate"));
				lists.add(shequXinwen);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		return lists;
	}

}
