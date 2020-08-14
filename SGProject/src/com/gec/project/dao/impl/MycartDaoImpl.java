package com.gec.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.DefaultEditorKit.InsertBreakAction;

import com.gec.project.dao.IMycartDao;
import com.gec.project.dao.entity.Mycart;
import com.gec.project.dao.entity.Product;
import com.gec.project.dao.utils.JdbcUtil;

public class MycartDaoImpl implements IMycartDao{
	
	@Override
	public List<Mycart> getListMycart(int uId) {
		List<Mycart> mycarts = new ArrayList<Mycart>();
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM `user`,cart_record,product WHERE cart_record.user_id=`user`.U_id AND user_id=? AND cart_record.pro_id=product.P_id order by create_time;";
			conn=JdbcUtil.getConnection();
			ps=conn.prepareStatement(sql);
			ps.setObject(1, uId);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Mycart mycart = new Mycart();
				Product product = new Product();
				product.setpId(rs.getInt("P_id"));
				product.setpName(rs.getString("P_name"));
				product.setpDes(rs.getString("P_des"));
				product.setpPicpath(rs.getString("P_picpath"));
				product.setpPrice(rs.getInt("P_price"));
				product.setpRes(rs.getInt("P_res"));
				product.setpType(rs.getInt("P_type"));
				product.setpRecPicPath(rs.getString("p_rec_picpath"));
				mycart.setProduct(product);
				mycart.setcId(rs.getInt("c_id"));
				mycart.setCheckedFlag(rs.getInt("checked_flag"));
				mycart.setPicPath(rs.getString("pic_path"));
				mycart.setpNum(rs.getInt("p_num"));
				mycart.setCreateTime(rs.getDate("create_time"));
				mycarts.add(mycart);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		return mycarts;
	}
	
	@Override
	public Mycart getCartById(int cartId) {
		Mycart mycart = new Mycart();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn = JdbcUtil.getConnection();
			String sql="SELECT * FROM cart_record WHERE c_id=?;";
			ps = conn.prepareStatement(sql);
			ps.setObject(1, cartId);
			rs = ps.executeQuery();
			if(rs.next())
			{
				mycart.setcId(rs.getInt("c_id"));
				mycart.setCheckedFlag(rs.getInt("checked_flag"));
				mycart.setPicPath(rs.getString("pic_path"));
				mycart.setpNum(rs.getInt("p_num"));
				mycart.setCreateTime(rs.getDate("create_time"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}		
		return mycart;
	}
	
	@Override
	public int delete(int cartId) {
		Connection conn = JdbcUtil.getConnection();
		String sql="DELETE FROM cart_record WHERE c_id=?;";
		return JdbcUtil.executeQuery(sql, cartId);
	}
	
	@Override
	public int update(Mycart mycart) {
		Connection conn = JdbcUtil.getConnection();
		String sql="UPDATE cart_record SET checked_flag=?,p_num=? WHERE c_id=?;";
		Object[] objects = {mycart.getCheckedFlag(),mycart.getpNum(),mycart.getcId()};
		return JdbcUtil.executeQuery(sql, objects);
	}
	
	@Override
	public int add(Mycart mycart) {
		String sql = "INSERT INTO cart_record (pro_id,user_id,checked_flag,pic_path,p_num,create_time) VALUES(?,?,?,?,?,?);";
		Object[] objects = {mycart.getProduct().getpId(),mycart.getUser().getuId(),mycart.getCheckedFlag(),
				mycart.getPicPath(),mycart.getpNum(),mycart.getCreateTime() };
		return JdbcUtil.executeQuery(sql, objects);
	}
	
	@Override
	public Mycart getCartByPidAndUid(int pid,int uid) {
		Mycart mycart = null;
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn = JdbcUtil.getConnection();
			String sql="SELECT * FROM cart_record WHERE pro_id=? AND user_id=?;";
			ps = conn.prepareStatement(sql);
			ps.setObject(1, pid);
			ps.setObject(2, uid);
			rs = ps.executeQuery();
			if(rs.next())
			{
				mycart = new Mycart();
				mycart.setcId(rs.getInt("c_id"));
				mycart.setCheckedFlag(rs.getInt("checked_flag"));
				mycart.setPicPath(rs.getString("pic_path"));
				mycart.setpNum(rs.getInt("p_num"));
				mycart.setCreateTime(rs.getDate("create_time"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}		
		return mycart;
	}
}
