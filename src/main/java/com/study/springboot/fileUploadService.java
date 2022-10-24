package com.study.springboot;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

//@Servie, @Repository, @Controller : 자동으로 빈을 생성해줌.
@Service
@Component
public class fileUploadService {
	
	private static String SAVE_PATH = "/home/ubuntu/ezen_null/upload/";
	private static String PREFIX_URL = "/upload/";
	
	public String restore(MultipartFile multipartFile) {
		
		System.out.println("호출2222");
		String url = null;
		String savefileName = "";
		
		//C:\Users\Gi7A-00\Documents\sprintboot\ex13_FileUploadWithParam\bin\main\static\ upload
		//C:\Users\Gi7A-00\Documents\sprintboot\ex13_FileUploadWithParam\src\main\resources\static\ upload
		try {
			//String savepath = ResourceUtils.getFile("classpath:static/upload/").toPath().toString();
			String savepath2 = ResourceUtils.getFile("/upload/").toPath().toString();	
			System.out.println("savepath:" + savepath2);
			
			//savepath = savepath.replace("\\", "/");
			//System.out.println("savepath2 : " + savepath);
			//savepath = savepath.replace("/bin/main/static", "/src/main/resources/static");
			//System.out.println("savepath3 : " + savepath);
			//C:/Users/i7D/Documents/springboot/ex13_FileUploadWithParam/src/main/resources/static/upload
			SAVE_PATH = "/home/ubuntu/ezen_null/upload/";
			PREFIX_URL = savepath2;
			
			if(multipartFile.getOriginalFilename() == "") {
				System.out.println("0 리턴");
				return "0";
			}
			// 파일 정보
			String originFilename = multipartFile.getOriginalFilename();
			System.out.println("asdasdasds"+originFilename);
			
			String extName
				= originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			Long size = multipartFile.getSize();
			
			// 서버에서 저장 할 파일 이름
			//"20210114121803123.jpg"
			savefileName = genSaveFileName(extName);
			
			System.out.println("originFilename : " + originFilename);
			System.out.println("extensionName : " + extName);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + savefileName);
			
			writeFile(multipartFile, savefileName);
			url = PREFIX_URL + "" + savefileName;
		}
		catch(IOException e) {
			e.printStackTrace();
			System.out.println("캐치");
		}
		
		// "/upload/20210114121803123.jpg"
		return "upload/" + savefileName;
	}
	
	// 현재 시간을 기준으로 파일 이름 생성
	// "20210114121803123.jpg"
	private String genSaveFileName(String extName) {
		//String fileName = "";
		
		String fileName = UUID.randomUUID().toString();
		fileName += extName;
		
//		Calendar calendar = Calendar.getInstance();
//		fileName += calendar.get(Calendar.YEAR);
//		fileName += calendar.get(Calendar.MONTH);
//		fileName += calendar.get(Calendar.DATE);
//		fileName += calendar.get(Calendar.HOUR);
//		fileName += calendar.get(Calendar.MINUTE);
//		fileName += calendar.get(Calendar.SECOND);
//		fileName += calendar.get(Calendar.MILLISECOND);
//		fileName += extName;
		
		return fileName;
	}
		
	// 파일을 실제로 write 하는 메서드
	private void writeFile(MultipartFile multipartFile, String saveFileName) throws IOException{
		System.out.println("savefile:" + SAVE_PATH + "  /  " + saveFileName );
		//C:/Users/i7D/Documents/springboot/ex13_FileUploadWithParam/src/main/resources/static/upload/20210114121803123.jpg
		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
		fos.write(data);
		fos.close();
		
		return;
	}
}
