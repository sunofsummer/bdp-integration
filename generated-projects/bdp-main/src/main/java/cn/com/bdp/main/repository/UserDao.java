package cn.com.bdp.main.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import cn.com.bdp.main.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
