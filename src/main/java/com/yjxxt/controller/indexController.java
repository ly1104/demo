package com.yjxxt.controller;

import com.yjxxt.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class indexController extends BaseController {

    @RequestMapping("index")
    public String index() {
        return "index";
    }

    @RequestMapping("welcome")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("main")
    public String main(HttpServletRequest req) {
        return "main";
    }
}
