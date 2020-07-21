package cn.shop.controller;

import cn.shop.pojo.Category;
import cn.shop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
public class CategoryControllerr {

    @Autowired
    CategoryService categoryService;

    @RequestMapping("/getCate")
    @ResponseBody
    public List<Category> getAll() {
        return categoryService.getAll();
    }

    @RequestMapping("/getById")
    public String getById(String cid, Model model) {
        Category category = categoryService.getById(cid);
        model.addAttribute("cate", category);
        return "jsp/cateEdit";
    }

}
