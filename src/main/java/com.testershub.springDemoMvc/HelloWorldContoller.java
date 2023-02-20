package com.testershub.springDemoMvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldContoller {


    //need a conroller method to show the initial HTM form
    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    //need a controller method to process the HTML form
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloWorld";
    }

    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest requestHandler, Model model){
        String theName = requestHandler.getParameter("studentName");
        theName = theName.toUpperCase();
        String resullt = "Yo!  " + theName;
        model.addAttribute("message",resullt);
        return "helloWorld";
    }


    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName") String theName, Model model){
        theName = theName.toUpperCase();
        String resullt = "Hey My Friend.....!  " + theName;
        model.addAttribute("message",resullt);
        return "helloWorld";
    }
}
