package workshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.validation.BindingResult;

@Controller
@RequestMapping("/echo")
public class EchoController {
    @RequestMapping(method = RequestMethod.GET)
    public String get(ModelMap model) {
        return "echo";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String post(ModelMap model, @RequestParam("input") String input) {
        model.addAttribute("text", input);
        return "echo";
    }
}
