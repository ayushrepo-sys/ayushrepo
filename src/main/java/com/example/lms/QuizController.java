package com.example.lms;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class QuizController {

    @GetMapping("/quiz")
    public String quizPage() {
        return "quiz"; // quiz.jsp
    }

    // @PostMapping("/submitQuiz")
    // public String submitQuiz(HttpServletRequest request, Model model) {
    //     String q1 = request.getParameter("q1");
    //     String q2 = request.getParameter("q2");
    //     String q3 = request.getParameter("q3");
    //     String q4 = request.getParameter("q4");
    //     String q5 = request.getParameter("q5");

    //     int score = 0;

    //     if ("b".equals(q1)) score++; // Java - extends
    //     if ("c".equals(q2)) score++; // Python - def
    //     if ("b".equals(q3)) score++; // SQL - SELECT
    //     if ("b".equals(q4)) score++; // C - 4 bytes
    //     if ("b".equals(q5)) score++; // HTML - <a>

    //     model.addAttribute("score", score);
    //     model.addAttribute("total", 5);

    //     return "result"; // result.jsp
    // }
    @PostMapping("/submitQuiz")
public String submitQuiz(HttpServletRequest request, Model model) {
    String q1 = request.getParameter("q1");
    String q2 = request.getParameter("q2");
    String q3 = request.getParameter("q3");
    String q4 = request.getParameter("q4");
    String q5 = request.getParameter("q5");

    int score = 0;

    if ("b".equals(q1)) score++; // Java - extends
    if ("c".equals(q2)) score++; // Python - def
    if ("b".equals(q3)) score++; // SQL - SELECT
    if ("b".equals(q4)) score++; // C - 4 bytes
    if ("b".equals(q5)) score++; // HTML - <a>

    // Store result in session
    request.getSession().setAttribute("score", score);
    request.getSession().setAttribute("total", 5);

    // Redirect to dashboard
    return "redirect:/result";
}
@GetMapping("/result")
public String result(HttpServletRequest request, Model model) {
    Integer score = (Integer) request.getSession().getAttribute("score");
    Integer total = (Integer) request.getSession().getAttribute("total");

    if (score != null && total != null) {
        model.addAttribute("score", score);
        model.addAttribute("total", total);
    } else {
        model.addAttribute("message", "No result found. Please take the quiz first.");
    }

    return "result"; // dashboard.jsp
}

}

