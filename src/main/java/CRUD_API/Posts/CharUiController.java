package CRUD_API.Posts;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller

public class CharUiController {

    private final CharService charService;

    public CharUiController(CharService charService){
        this.charService = charService;
    }

    @GetMapping("/about")
    public String about(){
    return "about";
}

    
}
