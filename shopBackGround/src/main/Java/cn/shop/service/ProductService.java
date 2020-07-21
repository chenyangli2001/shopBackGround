package cn.shop.service;

import cn.shop.dao.ProductMapper;
import cn.shop.pojo.Product;
import cn.shop.util.ImageUtil;
import cn.shop.util.PathUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Service
public class ProductService {

    @Autowired
    ProductMapper productMapper;

    public Product getById(String id) {
        return productMapper.selectByPrimaryKey(id);
    }

    public void modifyShop(Product product) {
            int result = productMapper.updateByPrimaryKeySelective(product);
    }


    public String addImage(CommonsMultipartFile shopImage) {
        String dest = PathUtil.getShopImagePath();
        String shopImgAddr = ImageUtil.generateThumbnail(shopImage, dest);
        return shopImgAddr;
    }

}
