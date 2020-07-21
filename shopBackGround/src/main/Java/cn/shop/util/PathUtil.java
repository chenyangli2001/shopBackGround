package cn.shop.util;

public class PathUtil {

    private static String separator = System.getProperty("file.separator");

    public static String getImageBasePath() {
        String os = System.getProperty("os.name");
        String basePath = "";
        if (os.toLowerCase().startsWith("win")) {
            basePath = "D:/Study/IDEA/Homework/shopBackGround/src/main/webapp/static/";
        } else {
            basePath = "/home/o2o/image/";
        }
        basePath = basePath.replace("/",separator);
        return basePath;
    }

    public static String getShopImagePath() {
        String imagePath = "products/1/";
        return imagePath.replace("/",separator);
    }

}
