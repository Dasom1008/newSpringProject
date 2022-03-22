package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {

    @RequestMapping("/")
    public String mainPage(){
        return "/index";
    }

    @RequestMapping(value = "/navController")
    public String nav(){
        return "/Nav/nav";
    }

    @RequestMapping(value = "/memberController")
    public String member(){
        return "/Member/login";
    }
}
