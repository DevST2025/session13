package ra.accademy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ra.accademy.model.Person;
import ra.accademy.service.Conversion;
import ra.accademy.service.Dictionary;

@Controller
@RequestMapping({"/", "navbar"})
public class FormController {
    private static Dictionary dictionary = new Dictionary();
    private static Conversion conversion = new Conversion();
    @RequestMapping // mặc định là get
    public String home(Model model) {
        model.addAttribute("name", "home");
        return "home";
    }
    @RequestMapping("/product") // mặc định là get
    public String product(Model model) {
        model.addAttribute("name", "product");
        return "product";
    }
    @RequestMapping("/about") // mặc định là get
    public String about(Model model) {
        model.addAttribute("name", "about");
        return "about";
    }
    @RequestMapping("/profile") // mặc định là get
    public String profile(Model model) {
        model.addAttribute("name", "profile");
        return "profile";
    }

    @PostMapping(value = "/profile")
    public String showProfile(@RequestParam String name, @RequestParam int age, @RequestParam String address, @RequestParam boolean gender, Model model){
        Person p = new Person(name, age, address, gender);
        model.addAttribute("person", p);
        model.addAttribute("name", "profile");
        return "profile";
    }

    @PostMapping(value = "/dictionary")
    public String showResult(@RequestParam String word, Model model) {
        String rs = dictionary.translate(word);
        model.addAttribute("vocabulary", word);
        model.addAttribute("result", rs);
        return "home";
    }

    @PostMapping(value = "/convert")
    public String showVND(@RequestParam double usd, Model model) {
        double vnd = conversion.convert(usd);
        model.addAttribute("vnd", vnd);
        model.addAttribute("usd", usd);
        return "home";
    }

    @PostMapping("/cal")
    public String calculate(Model model, @RequestParam double num1, @RequestParam double num2, @RequestParam String op) {
        double rs = 0;
        switch (op) {
            case "add":
                rs = num1 + num2;
                break;
            case "minus":
                rs = num1 - num2;
                break;
            case "div":
                if (num2 == 0) {
                    throw new RuntimeException("Không thể chia cho 0");
                }
                rs = num1 / num2;
                break;
            case "multi":
                rs = num1 * num2;
                break;

        }
        model.addAttribute("num1",num1);
        model.addAttribute("num2",num2);
        model.addAttribute("op",op);
        model.addAttribute("rs",rs);
        return "home";
    }
}
