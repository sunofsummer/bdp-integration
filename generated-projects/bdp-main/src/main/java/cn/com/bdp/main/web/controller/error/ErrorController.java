package cn.com.bdp.main.web.controller.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-1-5
 * Time: 下午11:44
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/error")
public class ErrorController {

    /**
     * 处理系统发生403错误的情况.
     *
     * @return 403错误页面
     * @author yangxia
     */
    @RequestMapping(value = "403")
    public String _403() {
        return "/error/403";
    }

    /**
     * 处理系统发生404错误的情况.
     *
     * @return 404错误页面
     * @author yangxia
     */
    @RequestMapping(value = "404")
    public String _404() {
        return "/error/404";
    }

    /**
     * 处理系统发生500错误的情况.
     *
     * @return 500错误页面
     * @author yangxia
     */
    @RequestMapping(value = "500")
    public String _500() {
        return "/error/500";
    }

    /**
     * 处理系统发生500错误的情况.
     *
     * @return 500错误页面
     * @author yangxia
     */
    @RequestMapping(value = "503")
    public String _503() {
        return "/error/503";
    }
    /**
     * 处理系统发生404错误的情况.
     *
     * @return 404错误页面
     * @author yangxia
     */
    @RequestMapping(value = "504")
    public String _504() {
        return "/error/504";
    }
}
