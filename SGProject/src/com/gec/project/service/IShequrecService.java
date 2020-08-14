package com.gec.project.service;

import java.util.List;

import com.gec.project.dao.entity.Shequrec;

public interface IShequrecService {
	/**
	 * 根据传入参数保存
	 * @param shequrec
	 * @return 大于0为保存成功
	 */
	public int save(Shequrec shequrec);
	
	/**
	 * 根据传入id删除
	 * @param id
	 * @return 大于0为删除成功
	 */
	public int delete(int id);
	
	/**
	 * 根据传入product对象修改
	 * @param product
	 * @return 大于0为修改成功
	 */
	public int update(Shequrec shequrec);
	
	/**
	 * 根据传入id获得一个Shequrec对象
	 * @param id
	 * @return 不为null就表示查询成功
	 */
	public Shequrec getById(int id);
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<Shequrec> allList();
}
