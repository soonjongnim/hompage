package first.common.util;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.awt.image.PixelGrabber;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.xml.bind.DatatypeConverter;

import net.coobird.thumbnailator.Thumbnails;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.propertyeditors.FileEditor;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUtil {
	
	public static HashMap<String, Object> fileUpload(Map<String, Object> map, String originalFileName, MultipartHttpServletRequest request) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		String filePath = map.get("uploadPath").toString()+"/"+map.get("folderName").toString()+"/";
		String fileMngNm = map.get("fileName").toString();
		
		MultipartFile mFile	= request.getFile(originalFileName);
		if(mFile != null){
			File dir = new File(filePath);
			if(!dir.exists()){
				dir.mkdirs();
			}
			if(mFile.getSize()>0){
				String ext = mFile.getOriginalFilename().substring(mFile.getOriginalFilename().lastIndexOf('.')+1).toLowerCase();
				File uploadFile = new File(filePath+fileMngNm+"."+ext);
				
				try {
					mFile.transferTo(uploadFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
				resultMap.put("filePath", map.get("uploadContext").toString()+map.get("folderName").toString()+"/");
				resultMap.put("fileName", map.get("fileName").toString());
				resultMap.put("originalFileName", mFile.getOriginalFilename());
				resultMap.put("ext", "."+ext);
				resultMap.put("size", mFile.getSize());
			}
		}
		return resultMap;
	}
	
	public static HashMap<String, Object> imageUpload(HashMap<String, Object> parameterMap, String originalFileName, MultipartHttpServletRequest request) throws Exception {
		HashMap<String, Integer> sizeMap = new HashMap<String, Integer>(){{
			put("PROFILE", 150);
			put("RECEIPT", 600);
			put("BBS", 800);
			put("LOGO", 300);
			put("SEAL", 100);
			put("NONE", -1);
		}};
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		System.out.println("parameterMap: " + parameterMap);
		String filePath = parameterMap.get("uploadPath").toString()+parameterMap.get("folderName").toString()+"\\";
		System.out.println("filePath: " + filePath);
		String fileName = parameterMap.get("fileName").toString();
		
		MultipartFile mFile	= request.getFile(originalFileName);
		if(mFile != null){
			if(mFile.getSize()>0){
				File dir = new File(filePath);
				if(!dir.exists()){
					dir.mkdirs();
				}
				
				String ext = mFile.getOriginalFilename().substring(mFile.getOriginalFilename().lastIndexOf('.')+1).toLowerCase();
				Image source = ImageIO.read(mFile.getInputStream());
				BufferedImage srcImg = Thumbnails.of(mFile.getInputStream()).width(source.getWidth(null)).height(source.getHeight(null)).asBufferedImage();
				
				int srcWidth = srcImg.getWidth();
				int srcHeight = srcImg.getHeight();
				
				int destWidth = -1;
				int destHeight = -1;
				
				int targetSize = 0;
				
				try {
					targetSize = sizeMap.get(parameterMap.get("imageType").toString());
				} catch (Exception e){
					targetSize = -1;
				}
				
				double scale = 1;
				if(targetSize > -1){
					if(srcWidth > targetSize || srcHeight > targetSize){
						if(srcWidth > srcHeight){
							scale = (double)targetSize/srcWidth;
						}else{
							scale = (double)targetSize/srcHeight;
						}
					}
				}
				destWidth = (int)(srcWidth * scale);
				destHeight = (int)(srcHeight * scale);
				
				Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight, Image.SCALE_SMOOTH);
				int pixels[] = new int[destWidth * destHeight]; 
				PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth, destHeight, pixels, 0, destWidth); 
				
				try {
					pg.grabPixels();
				} catch (InterruptedException e) {
					throw new IOException(e.getMessage());
				}
				
				File uploadFile = new File(filePath+fileName+"."+ext);
				
				BufferedImage bufferedImage = ImageIO.read(mFile.getInputStream());
				
				BufferedImage destImg;
				if(bufferedImage.getColorModel().hasAlpha()){
					destImg = new BufferedImage(destWidth, destHeight, BufferedImage.TYPE_INT_ARGB);
				}else{
					destImg = new BufferedImage(destWidth, destHeight, BufferedImage.TYPE_INT_RGB);
				}
				
				Graphics2D graphics2D = destImg.createGraphics();
		        graphics2D.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
		        graphics2D.drawImage(srcImg, 0, 0, destWidth, destHeight, null);
		        
		        ImageIO.write(destImg, "PNG", uploadFile);
				
				resultMap.put("filePath", parameterMap.get("uploadContext").toString()+"easiHomapage/"+parameterMap.get("folderName").toString()+"/");
				System.out.println("filePath: " + parameterMap.get("uploadContext").toString()+"easiHomapage/"+parameterMap.get("folderName").toString());
				resultMap.put("fileName", parameterMap.get("fileName").toString());
				resultMap.put("originalFileName", mFile.getOriginalFilename());
				resultMap.put("ext", "."+ext);
				resultMap.put("size", mFile.getSize());
			}
		}
		return resultMap;
	}
	
	public static void deleteFile(Map<String, Object> map, String filePath){
		filePath = filePath.replace(map.get("uploadContext").toString(), map.get("uploadPath").toString());
		File file = new File(filePath);
		if(file.exists()){
			file.delete();
		}
	}

	public static MultipartFile base64ToImage(String base64, final String fileType) {
		MultipartFile mFile = null;
		String ext = fileType.substring(fileType.indexOf("/")+1);
		final File file = new File("image."+ext);
		
		BufferedOutputStream writer;
		try {
			String data = base64.split(",")[1];
			final byte[] decodedBytes = DatatypeConverter.parseBase64Binary(data);
			
			writer = new BufferedOutputStream(new FileOutputStream(file));
			writer.write(decodedBytes);
			writer.flush();
			writer.close();
			
			mFile = new MultipartFile() {
				@Override
				public void transferTo(File arg0) throws IOException, IllegalStateException {
				}
				
				@Override
				public boolean isEmpty() {
					return false;
				}
				
				@Override
				public long getSize() {
					return file.length();
				}
				
				@Override
				public String getOriginalFilename() {
					return file.getName();
				}
				
				@Override
				public String getName() {
					return file.getName();
				}
				
				@Override
				public InputStream getInputStream() throws IOException {
					return new FileInputStream(file);
				}
				
				@Override
				public String getContentType() {
					return fileType;
				}
				
				@Override
				public byte[] getBytes() throws IOException {
					return decodedBytes;
				}
			};
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return mFile;
	}
}