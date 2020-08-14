package com.gec.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.gec.project.dao.IShopTypeDao;
import com.gec.project.dao.entity.ShopType;
import com.gec.project.dao.utils.JdbcUtil;

public class ShopTypeDaoImpl implements IShopTypeDao{

	@Override
	public ShopType getShopTypeById(int id) {
		ShopType shopType = new ShopType();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JdbcUtil.getConnection();
			String sql="SELECT * FROM shoptype WHERE S_id=?;";
			ps=conn.prepareStatement(sql);
			ps.setObject(1, id);
			rs=ps.executeQuery();
			if(rs.next())
			{
				shopType.setsId(rs.getInt("S_id"));
				shopType.setsName(rs.getString("S_name"));
				shopType.setsDes(rs.getString("S_des"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		return shopType;
	}

}
