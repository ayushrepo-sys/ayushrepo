package com.example.lms;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;

@Controller
public class PhotoController {

    @PostMapping("/photo")
    public String handlePhotoUpload(@RequestParam("name") String name,
                                    @RequestParam("email") String email,
                                    @RequestParam("photo") MultipartFile file,
                                    RedirectAttributes redirectAttributes) {
        if (!file.isEmpty()) {
            try {
                String uploadDir = "uploads/";
                File directory = new File(uploadDir);
                if (!directory.exists()) directory.mkdirs();

                String fileName = email + "_" + file.getOriginalFilename();
                file.transferTo(new File(uploadDir + fileName));

                redirectAttributes.addFlashAttribute("message", "Photo uploaded successfully!");

            } catch (IOException e) {
                e.printStackTrace();
                redirectAttributes.addFlashAttribute("message", "Upload failed!");
            }
        } else {
            redirectAttributes.addFlashAttribute("message", "No file selected.");
        }

        return "redirect:/sprofile";
    }
}


