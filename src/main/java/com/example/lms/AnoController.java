package com.example.lms;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;




@Controller
public class AnoController {
   @Autowired
JdbcTemplate jdbc;

    @GetMapping("/menu")
    public String menu(){
        return "menu";

    }
    @GetMapping({"/","home"})
    public String home(){
        return "home";
    }

    @GetMapping("/contact")
    public String contact(){
        return "contact";
}

@GetMapping("/gallery")
    public String gallery(){
        return "gallery";
}
@GetMapping("/faq")
    public String faq(){
        return "faq";
}

@GetMapping("/about")
    public String about(){
        return "about";
}
@PostMapping("/login")
public String login_cheak(@RequestParam("email")String email,@RequestParam("password")String password,Model model,HttpSession session){
    ArrayList<String>ali=new ArrayList<String>();
    String sql="select * from user_master where email='"+email+"' and password='"+password+"'";
    jdbc.query(sql,new RowMapper<String>(){
        public String mapRow(ResultSet rs,int rowNum) throws SQLException{
            ali.add(rs.getString(2));
            ali.add(rs.getString(3));
            ali.add(rs.getString(6));
            ali.add(rs.getString(7));
            return "";

        }
    });
    if(ali.isEmpty()){
        model.addAttribute("sms","Invalid Deatails");
        return "login";
    }else{
        if((ali.get(3)).equalsIgnoreCase("1")){
            session.setAttribute("name",ali.get(0));
            session.setAttribute("email",ali.get(1));
            if((ali.get(2)).equalsIgnoreCase("admin")){
                return "admindashboard";
            }else if((ali.get(2)).equalsIgnoreCase("faculty")){
                return "facultydashboard";
            }else if((ali.get(2)).equalsIgnoreCase("student")){
                return "studentdashboard";
            

        }else{
            model.addAttribute("sms","some error.....");
            return "login";
        }
    }else{
        model.addAttribute("sms","plz contact to Admin " );
        return "login";
    }
}
}


@GetMapping("/login")
    public String login(){
        return "login";
}

@GetMapping("/signup")
    public String signup(){
        return "signup";
}
@PostMapping("save_user")
public String save_user(
    @RequestParam("name")String name,
    @RequestParam("email")String email,
    @RequestParam("password")String password,
    @RequestParam("mobile")String mobile,
    @RequestParam("role")String role,
    Model model) {
        
String sql="insert into user_master(name,email,password,mobile,role)values('"+name+"','"+email+"','"+password+"','"+mobile+"','"+role+"')";
   
jdbc.execute(sql);
model.addAttribute("msg", "register successfully");
    return "login";
}
}
