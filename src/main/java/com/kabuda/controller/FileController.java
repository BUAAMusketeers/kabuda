package com.kabuda.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kabuda.entity.domain.Response;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Iterator;


@Controller
@RequestMapping("/file")
public class FileController {


    @ResponseBody
    @RequestMapping("/upload")
    public String upload(HttpServletRequest request) {
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String realPath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
        try {
            CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
            //判断 request 是否有文件上传,即多部分请求
            if(multipartResolver.isMultipart(request)){
                MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
                Iterator<String> iterator = multiRequest.getFileNames();
                while(iterator.hasNext()){
                    //记录上传过程起始时的时间，用来计算上传时间
                    //int pre = (int) System.currentTimeMillis();
                    //取得上传文件
                    MultipartFile file = multiRequest.getFile(iterator.next());
                    if(file != null){
                        //取得当前上传文件的文件名称
                        String myFileName = file.getOriginalFilename();
                        //如果名称不为“”,说明该文件存在，否则说明该文件不存在
                        if(!StringUtils.isEmpty(myFileName.trim())){
                            System.out.println(myFileName);
                            //重命名上传后的文件名
                            String fileName = "demoUpload" + file.getOriginalFilename();
                            //定义上传路径
                            String path = "/" + fileName;
                            File localFile = new File(path);
                            file.transferTo(localFile);

                        }
                    }else{
                        return gson.toJson(new Response(1100, "其它错误"));
                    }
                    //记录上传该文件后的时间
                    //int finalTime = (int) System.currentTimeMillis();
                    //System.out.println(finalTime - pre);
                }
                return gson.toJson(new Response(1000, "success"));
            }
            return gson.toJson(new Response(2000, "test"));
        } catch (Exception e) {
            e.printStackTrace();
            return gson.toJson(new Response(1100, "其它错误"));
        }
    }
}