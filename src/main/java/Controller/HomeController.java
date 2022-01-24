package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String main(){
        int a = 0;
        return "/index";
    }

    @RequestMapping(value = "/navController")
    public String nav(){
        return "/Nav/nav";
    }

    @RequestMapping(value = "memberController")
    public String member(){
        return "";
    }
}
