package cn.shop.service;

import cn.shop.dao.CategoryMapper;
import cn.shop.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    CategoryMapper categoryMapper;

    public List<Category> getAll() {
        return categoryMapper.selectByExample(null);
    }

    public Category getById(String id) {
        return categoryMapper.selectByPrimaryKey(id);
    }

}
