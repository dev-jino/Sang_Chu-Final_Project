package xyz.itwill.dto;

import org.springframework.web.multipart.MultipartFile;

/*
 이름        널?       유형             
--------- -------- -------------- 
IDX       NOT NULL NUMBER         
MEMBER_ID          VARCHAR2(50)   
CATEGORY1          VARCHAR2(100)  
CATEGORY2          VARCHAR2(100)  
TITLE              VARCHAR2(500)  
PRICE              NUMBER         
CONTENT            VARCHAR2(4000) 
IMG                VARCHAR2(100)  
IMG1               VARCHAR2(100)  
IMG2               VARCHAR2(100)  
IMG3               VARCHAR2(100)  
IMG4               VARCHAR2(100)  
IMG5               VARCHAR2(100)  
REG_DATE           DATE           
STATUS             NUMBER  
 */
public class Product {
	private int idx;
	private String memberId;
	private String category1;
	private String category2;
	private String title;
	private int price;
	private String content;
	private String img;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String regDate;
	private int status;
	private String buymember;
	
	private MultipartFile[] imgFile;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}


	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getCategory1() {
		return category1;
	}


	public void setCategory1(String category1) {
		this.category1 = category1;
	}


	public String getCategory2() {
		return category2;
	}


	public void setCategory2(String category2) {
		this.category2 = category2;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getImg1() {
		return img1;
	}


	public void setImg1(String img1) {
		this.img1 = img1;
	}


	public String getImg2() {
		return img2;
	}


	public void setImg2(String img2) {
		this.img2 = img2;
	}


	public String getImg3() {
		return img3;
	}


	public void setImg3(String img3) {
		this.img3 = img3;
	}


	public String getImg4() {
		return img4;
	}


	public void setImg4(String img4) {
		this.img4 = img4;
	}


	public String getImg5() {
		return img5;
	}


	public void setImg5(String img5) {
		this.img5 = img5;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}
	
	public MultipartFile[] getImgFile() {
		if(imgFile!=null){
			MultipartFile[] tempData = new MultipartFile[imgFile.length];
			System.arraycopy(imgFile, 0, tempData, 0, imgFile.length);
			return tempData;
		}else{
			return null;
		}
	//출처: https://kooremo.tistory.com/entry/배열-형식의-데이터를-setget하는-경우 [자바블로그]
	}
	
	public void setImgFile(MultipartFile[] imgFile) {
		if(imgFile!=null){
			this.imgFile = new MultipartFile[imgFile.length];
			System.arraycopy(imgFile, 0, this.imgFile, 0, imgFile.length);
		}else{
			this.imgFile = null;
		}
	//출처: https://kooremo.tistory.com/entry/배열-형식의-데이터를-setget하는-경우 [자바블로그]
	}
}
