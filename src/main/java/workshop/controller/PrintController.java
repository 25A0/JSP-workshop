package workshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.validation.BindingResult;

import java.util.Properties;

@Controller
@RequestMapping("/print")
public class PrintController {
    @RequestMapping(method = RequestMethod.GET)
    public String get(ModelMap model) {
        model.addAttribute("properties", System.getProperties());
        return "print";
    }
}
