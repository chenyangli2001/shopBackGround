package cn.shop.util;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.imageio.ImageIO;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class ImageUtil {

    private static String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();;

    public static String generateThumbnail(CommonsMultipartFile thumbnail, String targetAddr) {
        String extension = getFileExtension(thumbnail);
        makeDirPath(targetAddr);
        String relativeAddr = targetAddr + extension;
        File dest = new File(PathUtil.getImageBasePath() + relativeAddr);
        try {
            Thumbnails.of(thumbnail.getInputStream()).size(1080, 1920).toFile(dest);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return relativeAddr;
    }

    /**
     * 创建目标路径所涉及到的目录，如/image/one/picture.jpg
     * image、one这两个文件夹会自动创建
     *
     * @param targetAddr
     */
    private static void makeDirPath(String targetAddr) {
        String realFileParentPath = PathUtil.getImageBasePath() + targetAddr;
        File dirPath = new File(realFileParentPath);
        if (!dirPath.exists()) {
            dirPath.mkdirs();
        }
    }

    /**
     * 获取输入文件流的扩展名
     *
     * @param thumbnail
     * @return
     */
    private static String getFileExtension(CommonsMultipartFile thumbnail) {
        String originalFileName = thumbnail.getOriginalFilename();
        return originalFileName;
    }

    public static void main(String[] args) throws IOException {
        Thumbnails.of(new File("D:/18.jpg")).size(1080, 1920).toFile("D:/18new2.jpg");
    }

}
