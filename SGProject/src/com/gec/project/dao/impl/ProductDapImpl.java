package com.gec.project.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gec.project.dao.IProductDao;
import com.gec.project.dao.dto.PageBean;
import com.gec.project.dao.entity.Product;
import com.gec.project.dao.utils.JdbcUtil;

public class ProductDapImpl implements IProductDao {

	@Override
	public int save(Product product) {
		String sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?);";
		Object[] objects = { product.getpId(), product.getpName(), product.getpDes(), product.getpPicpath(),
				product.getpPrice(), product.getpRes(), product.getpType() };
		return JdbcUtil.executeQuery(sql, objects);
	}

	@Override
	public int delete(int id) {
		String sql = "DELETE FROM product WHERE P_id = ?";
		Object[] objects = { id };
		return JdbcUtil.executeQuery(sql, objects);
	}

	@Override
	public int update(Product product) {
		String sql = "UPDATE product SET P_name = ?,P_des=?,P_picpath=?,P_price=?,P_res=?,P_type=? where P_id = ?";
		Object[] objects = { product.getpName(), product.getpDes(), product.getpPicpath(), product.getpPrice(),
				product.getpRes(), product.getpType(), product.getpId() };
		return JdbcUtil.executeQuery(sql, objects);
	}

	@Override
	public Product getById(int id) {
		Product product = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM product where P_id = ?";
			conn = JdbcUtil.getConnection();
			ps = conn.prepareStatement(sql);

			ps.setInt(1, id);

			rs = ps.executeQuery();

			if (rs.next()) {
				product = new Product();
				product.setpId(rs.getInt("P_id"));
				product.setpName(rs.getString("P_name"));
				product.setpDes(rs.getString("P_des"));
				product.setpPicpath(rs.getString("P_picpath"));
				product.setpPrice(rs.getInt("P_price"));
				product.setpRes(rs.getInt("P_id"));
				product.setpType(rs.getInt("P_type"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		return product;
	}

	@Override
	public List<Product> allList() {
		List<Product> products  =  new ArrayList<Product>();
		Product product = null;
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM product";
			conn=JdbcUtil.getConnection();
			ps=conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				product = new Product();
				product.setpId(rs.getInt("P_id"));
				product.setpName(rs.getString("P_name"));
				product.setpDes(rs.getString("P_des"));
				product.setpPicpath(rs.getString("P_picpath"));
				product.setpPrice(rs.getInt("P_price"));
				product.setpRes(rs.getInt("P_res"));
				product.setpType(rs.getInt("P_type"));
				products.add(product);
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		return products;
	}
	
	public static List<Product> executeQuery(String sql,Object...objects) {
		List<Product> products =null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try { 
			products = new ArrayList<Product>();
			conn = JdbcUtil.getConnection();
			ps = conn.prepareStatement(sql);
			if (objects!=null) {
				for (int i = 0; i < objects.length; i++) {
					ps.setObject((i+1), objects[i]);
				}
			}
			rs = ps.executeQuery();
			Product product;
			while (rs.next()) {
				product = new Product();
				product.setpId(rs.getInt("P_id"));
				product.setpName(rs.getString("P_name"));
				product.setpDes(rs.getString("P_des"));
				product.setpPicpath(rs.getString("P_picpath"));
				product.setpPrice(rs.getInt("P_price"));
				product.setpRes(rs.getInt("P_res"));
				product.setpType(rs.getInt("P_type"));
				products.add(product);
			}
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.closeAll(ps, rs, conn);
		return products;
	}

	private List<Product> getOnePageInfo(int dangQianPage, int pageSize) {
		String sql = "select P_id,P_name,P_des,P_picpath,P_price,P_res,P_type from `product` LIMIT ?,?";
		Object[] objects = {(dangQianPage-1)*pageSize,pageSize};
		List<Product> onePageList = executeQuery(sql, objects);
		return onePageList;
	}

	private int getCount() {
		int count = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try { 
			conn = JdbcUtil.getConnection();
			String sql = "select count(1) as product_count from `product`";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next())
				count = rs.getInt("product_count");
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcUtil.closeAll(ps, rs, conn);
		return count;
	}
	
	public PageBean<Product> getOnePage(int dangQianPage, int pageSize) {
		List<Product> list = getOnePageInfo(dangQianPage, pageSize);
		PageBean<Product> pageBean = new PageBean<Product>(dangQianPage, getCount(), pageSize, list);
		return pageBean;
	}

	@Override
	public List<Product> getListProductsByType(int type) {
		List<Product> products  =  new ArrayList<Product>();
		Product product = null;
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM product WHERE P_type=? ORDER BY P_id LIMIT 0,4;";
			conn=JdbcUtil.getConnection();
			ps=conn.prepareStatement(sql);
			ps.setObject(1, type);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				product = new Product();
				product.setpId(rs.getInt("P_id"));
				product.setpName(rs.getString("P_name"));
				product.setpDes(rs.getString("P_des"));
				product.setpPicpath(rs.getString("P_picpath"));
				product.setpPrice(rs.getInt("P_price"));
				product.setpRes(rs.getInt("P_res"));
				product.setpType(rs.getInt("P_type"));
				product.setpRecPicPath(rs.getString("p_rec_picpath"));
				products.add(product);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.closeAll(ps, rs, conn);
		}
		return products;
	}
}
