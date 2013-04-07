package cn.com.bdp.main.web.controller.module;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.bdp.main.service.module.ModuleService;

/**
 * Created with IntelliJ IDEA.
 * User: yangxia
 * Date: 12-12-18
 * Time: 下午3:23
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/module")
public class ModuleController {
	@Autowired
	private ModuleService moduleService;

    @RequestMapping("/input")
    public String input(){
    	moduleService.test();
        return "module/modules";
    }
}
