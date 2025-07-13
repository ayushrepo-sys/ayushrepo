

package com.example.lms;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller

public class AdminController {

    @Autowired
    JdbcTemplate jdbc;
    

    @GetMapping("/admindashboard")
    public String adminDashboard() {
        return "admindashboard"; // Returns the view for the admin dashboard
    }

    @GetMapping("/facultydashboard")
    public String facultydashboard(){
        return "facultydashboard";
    }
     @GetMapping("/studentdashboard")
    public String studentdashboard(){
        return "studentdashboard";
    }
    @GetMapping("/fprofile")
    public String fprofile(){
        return "fprofile";
    }
     @GetMapping("/sprofile")
    public String sprofile(){
        return "sprofile";
    }
       @GetMapping("/uploads")
    public String uploads(){
        return "uploads";
    }
        @GetMapping("/editquestion")
    public String editquestion(){
        return "editquestion";
    }

   @GetMapping("/viewusers")
public String viewusers(Model model) {
    String sql = "SELECT * FROM user_master";
    List<Map<String, Object>> users = jdbc.queryForList(sql);
    model.addAttribute("user_master", users);
    return "viewusers"; // Name of your JSP page (viewusers.jsp)
}




@PostMapping("/updateusers")
public String updateusers(Model model,
                          @RequestParam("email") String email,
                          @RequestParam("name") String name,
                          @RequestParam("password") String password,
                          @RequestParam("mobile") String mobile,
                          @RequestParam("role") String role,
                          @RequestParam("status") String status) {

    String sql = "UPDATE user_master SET name = ?, password = ?, mobile = ?, role = ?, status = ? WHERE email = ?";
    jdbc.update(sql, name, password, mobile, role, status, email);
    model.addAttribute("msg", "User updated successfully.");
    return viewusers(model); // refresh list
}


@PostMapping("/manageusers")
public String manageUsers(Model model, @RequestParam("email") String email, @RequestParam("btn") String btn) {
    if (btn.equals("delete")) {
        jdbc.update("DELETE FROM user_master WHERE email = ?", email);
        model.addAttribute("msg", "User deleted successfully.");
        return viewusers(model);

    } else if (btn.equals("edit")) {
        String sql = "SELECT * FROM user_master WHERE email = ?";
        List<Map<String, Object>> user_master = jdbc.queryForList(sql, email);
        model.addAttribute("user_master", user_master);
        return "editusers"; // JSP page for edit form
    } else {
        model.addAttribute("msg", "Invalid action.");
        return viewusers(model);
    }
}

        

    @GetMapping("/users")
     public String users(Model model){
         String sql="select * from user_master where role !='admin'";
         List<Map<String,Object>> user_master=jdbc.queryForList(sql);
    
        model.addAttribute("user_master", user_master);
        return "users";
    }

    @GetMapping("/fusers")
public String fusers(Model model) {
    String sql = "SELECT * FROM user_master WHERE role = 'student'";
    List<Map<String, Object>> fusers = jdbc.queryForList(sql);

    model.addAttribute("fusers", fusers);
    return "fusers"; // fusers.jsp
}



@GetMapping("/susers")
public String susers(Model model) {
    String sql = "select * from user_master where role = 'faculty'";
    List<Map<String, Object>> susers = jdbc.queryForList(sql);

    model.addAttribute("susers", susers);
    return "susers"; 
}

     
}


    






