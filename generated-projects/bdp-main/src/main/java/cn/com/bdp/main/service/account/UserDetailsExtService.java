package cn.com.bdp.main.service.account;

import cn.com.bdp.main.entity.User;
import com.google.common.collect.Sets;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springside.modules.utils.PropertiesLoader;

import java.util.HashSet;
import java.util.Properties;
import java.util.Set;

/**
 * 该类的主要作用是为Spring Security提供一个经过用户认证后的UserDetails。
 * 该UserDetails包括用户名、密码、是否可用、是否过期等信息。
 * sparta 11/3/29
 */
@Service("userDetailsExtService")
public class UserDetailsExtService implements UserDetailsService {
    /**
     * 记录日志对象
     */
    private static Logger log = Logger.getLogger(UserDetailsExtService.class);
    @Autowired
    private UserService userInfoService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        User userInfo = userInfoService.findUniqueUserByName(username);
        if (userInfo == null) {
            //超级管理员身份
            PropertiesLoader propertiesLoader = new PropertiesLoader();
            Properties properties = propertiesLoader.loadProperties("application.properties");
            String superAdminUserName = properties.getProperty("superAdminUserName");
            String superAdminPassword = properties.getProperty("superAdminPassword");

            if (StringUtils.isNotEmpty(username) && StringUtils.equals(superAdminUserName, username)) {
                return new org.springframework.security.core.userdetails.User(superAdminUserName, superAdminPassword, enabled, accountNonExpired,
                        credentialsNonExpired, accountNonLocked, obtainGrantedAuthorities(superAdminUserName));
            }
            throw new UsernameNotFoundException("用户名" + username + "未找到,无法登录...");
        }

        Set<GrantedAuthority> grantedAuths = obtainGrantedAuthorities(username);
//		if(userInfo.isEnable().equals("N"))enabled = false;
        UserDetails userdetails = new org.springframework.security.core.userdetails.User(username, "admin",
                enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, grantedAuths);

        return userdetails;
    }


    /**
     * 获得用户所有角色的权限集合.
     */
    private Set<GrantedAuthority> obtainGrantedAuthorities(String username) {
        Set<GrantedAuthority> authSet = Sets.newHashSet();
        authSet.add(new GrantedAuthorityImpl(username));

        return authSet;
    }
}
