package cn.st.dao;

import java.util.List;

import cn.st.entity.Bowen;

public interface BowenDao {

	      public List<Bowen> findlistBowen();//查询所有博客并按照时间从大到小排列
}
