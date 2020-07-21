package cn.shop.controller;

import cn.shop.pojo.Product;
import cn.shop.service.ProductService;
import cn.shop.util.HttpServletRequestUtil;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.scene.SnapshotParameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping("/productedit")
    public String orderList(String id, Model model) {
        model.addAttribute("id", id);
        return "jsp/productEdit";
    }

    @RequestMapping(value = "/getProById", method = RequestMethod.GET)
    @ResponseBody
    public Product getProById(@RequestParam(value = "id") String id, Model model) {
        Product product = productService.getById(id);
        return product;
    }

    //String orgName = file.getOriginalFilename();

    @RequestMapping(value = "/updateImg", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public Map<String, Object> updateImg(HttpServletRequest request) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        String imgPath = null;
        MultipartHttpServletRequest multipartRequest = null;
        CommonsMultipartFile file = null;
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        if (multipartResolver.isMultipart(request)) {
            multipartRequest = (MultipartHttpServletRequest) request;
            file = (CommonsMultipartFile) multipartRequest.getFile("imgFile");
        }
        if (file == null) {
            modelMap.put("success", false);
            return modelMap;
        } else {
            try {
                imgPath = productService.addImage(file);
            } catch (Exception e) {
                e.printStackTrace();
            }
            modelMap.put("success", true);
            modelMap.put("imgPath", imgPath);
            return modelMap;
        }
    }

    @RequestMapping(value = "/updatePro", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> updatePro(Product product, HttpServletRequest request) {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        productService.modifyShop(product);
        modelMap.put("success", true);
        return modelMap;
    }

}
