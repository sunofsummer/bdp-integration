package cn.com.bdp.main.service.account;

import cn.com.bdp.main.entity.User;
import cn.com.bdp.main.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 用户信息相关实体的Service实现类.
 *
 * @author pangym
 */

// Spring Bean的标识.
@Service
// 默认将类中的所有函数纳入事务管理.
public class UserService {
    @Autowired
    private UserDao userDao;

    /**
     * 通过用户名查询唯一用户
     *
     * @param userName
     * @return
     */
    public User findUniqueUserByName(String userName) {
        return userDao.findByLoginName(userName);
    }
}
