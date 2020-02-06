package javaReview;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {
	public static void main(String[] args) throws IOException {
		// 자바 파일 객체 java.io패키지 import
		// 파일정보
		File file = new File("C:\\temp", "test.txt"); // 경로명(슬래시 하나 = 역슬래시 두개), 파일명 분리해도 됨
		System.out.println(file.exists());
		System.out.println(file.getParent());
		System.out.println(file.length() + "bytes");
		System.out.println(file.getParent());
		System.out.println(file.getPath());
		System.out.println(file.isDirectory());
		System.out.println(file.isFile());
		System.out.println(file.canWrite());
		System.out.println("========================================");

		// 폴더목록
		File dir = new File("D:\\dev\\eclipse");
		String[] list = dir.list();
		for (String temp : list) {
			System.out.println(temp);
		}

		// 폴더 생성
		File newFile = new File("C:\\temp\\images");
		// newFile.mkdir(); //한번만실행

		// 파일 삭제
		file.deleteOnExit();

		// 파일 복사
		FileInputStream src = new FileInputStream( // 익셉션 처리 필요
				"C:\\Users\\Public\\Pictures\\Sample Pictures\\coco.jpg"); // 원본파일 경로와이름
		FileOutputStream des = new FileOutputStream("C:\\Users\\Public\\Pictures\\Sample Pictures\\복사.jpg"); // 복사대상의 경로와 사본파일이름

		byte[] data = new byte[100];
		int size = 0;
		while ( ( size = src.read(data) ) > -1) { // 익셉션 처리 필요
			//인풋스트림에서 파일을 읽어서 data를 buffer로 하여 저장
			des.write(data);
			//아웃풋스트림에 data를 기록
		}
		
		
		//스트림 종료해줄 것
		src.close();
		des.close();
	}

}
