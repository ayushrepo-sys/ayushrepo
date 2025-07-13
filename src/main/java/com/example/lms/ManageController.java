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
public class ManageController {
    @Autowired
    JdbcTemplate jdbc;
       @GetMapping("/AddQuestion")
    public String AddQuestion(){
        return "AddQuestion";
    }
      @GetMapping("/manageQuestion")
     public String manageQuestion(Model m) {
         String sql = "select * from manage_question";
         List<Map<String, Object>> manage_question = jdbc.queryForList(sql);
         m.addAttribute("manage_question", manage_question);
         return "manageQuestion";
     }
     @PostMapping("/manageQuestion")
    public String manageQuestion(Model model,@RequestParam("sno")String sno,@RequestParam("btn")String btn){
        if(btn.equals("delete")){
            jdbc.update("delete from manage_question where sno='"+sno+"'");
            return manageQuestion(model);
        }else if(btn.equals("edit")){
         String sql="select * from manage_question where sno='"+sno+"'";
         List<Map<String,Object>>manage_question=jdbc.queryForList(sql);
         model.addAttribute("manage_question",manage_question);
         return "editquestion";
    
        }else{
            return manageQuestion(model);
        }
    }
 
    @PostMapping("/AddQuestion")
public String AddQuestion(
    @RequestParam("Question")String Question,
    @RequestParam("Option_A")String Option_A,
    @RequestParam("Option_B")String Option_B,
      @RequestParam("Option_C")String Option_C,
       @RequestParam("Option_D")String Option_D,
         @RequestParam("Answer")String Answer,
    Model model) {
        
String sql="insert into manage_question(Question,Option_A,Option_B,Option_C,Option_D,Answer) values('"+Question+"','"+Option_A+"','"+Option_B+"','"+Option_C+"','"+Option_D+"','"+Answer+"')";
   
jdbc.execute(sql);
model.addAttribute("msg", "register successfully");
    return "AddQuestion";
} 
 @GetMapping("/exam")
    public String showExamPage() {
        return "exam"; 
    }
}
