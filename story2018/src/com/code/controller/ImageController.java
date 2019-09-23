package com.code.controller;

import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.code.service.ImageCode;

@Controller  
@RequestMapping("/image")  
public class ImageController  {
 
@Autowired   
ImageCode imageCode;  
  

@RequestMapping(value = "/getImage")  
public void getImage(HttpServletRequest request,  
        HttpServletResponse response) throws IOException {  
    // 禁止图像缓存。  
    response.setHeader("Pragma", "no-cache");  
    response.setHeader("Cache-Control", "no-cache");  
    response.setDateHeader("Expires", 0);  

    response.setContentType("image/jpeg");  
    // 将图像输出到Servlet输出流中。  
    ServletOutputStream sos = response.getOutputStream();  
    ImageIO.write(imageCode.getImage(request), "jpeg", sos);  
    sos.close();  
}  
}
