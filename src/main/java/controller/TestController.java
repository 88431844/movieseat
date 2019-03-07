package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.TestService;


@Controller
public class TestController {

    @Autowired
    private TestService testService;
    @RequestMapping("/m")
    public void testMysql(){

        System.out.println("-----TestController testMysql");
//        muserMapper.selectByPrimaryKey(1);
        testService.testMysql();

    }
}
