package com.gec.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gec.project.dao.IShequrecDao;
import com.gec.project.dao.entity.Shequrec;
import com.gec.project.dao.utils.JdbcUtil;

public class ShequrecDaoImpl implements IShequrecDao{

	@Override
	public int save(Shequrec shequrec) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Shequrec shequrec) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Shequrec getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shequrec> allList() {
		List<Shequrec> lists = new ArrayList<Shequrec>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql  ="SELECT * FROM shequ_rec";
			conn=JdbcUtil.getConnection();
			ps=conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Shequrec shequrec = new Shequrec();
				shequrec.setSrId(rs.getInt("SR_id"));
				shequrec.setSrPicpath(rs.getString("SR_picpath"));
				shequrec.setSrDes(rs.getString("SR_des"));
				lists.add(shequrec);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		
		return lists;
	}

}
