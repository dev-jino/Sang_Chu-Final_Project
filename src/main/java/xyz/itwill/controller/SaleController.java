package xyz.itwill.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import xyz.itwill.dto.Product;
import xyz.itwill.service.ProductService;

@Controller
public class SaleController {
	@Autowired
	private ProductService productService;
	@Autowired
	private WebApplicationContext context;
	
	@RequestMapping("/sale")
	public String sale() {
		return "sale/sale_form";
	}
	
	@RequestMapping(value = "/sale", method = RequestMethod.POST)
	public String sale(@ModelAttribute Product product, Model model) throws IOException {
		String uploadDir = context.getServletContext().getRealPath("/resources/img/product");

		MultipartFile[] file = product.getImgFile();
		Map<String, String> addTime = new HashMap<String, String>();
		int j = 0;
		for (int i = 0 ; i < 6 ; i++) {
			if (!file[i].isEmpty()) {
				addTime.put("upload" + j, System.currentTimeMillis() + "_"+ j);
				j++;
			}
		}
		
		if (addTime.containsKey("upload0")) {
			product.setImg((String)addTime.get("upload0"));
		}
		if (addTime.containsKey("upload1")) {
			product.setImg1((String)addTime.get("upload1"));
		}
		if (addTime.containsKey("upload2")) {
			product.setImg2((String)addTime.get("upload2"));
		}
		if (addTime.containsKey("upload3")) {
			product.setImg3((String)addTime.get("upload3"));
		}
		if (addTime.containsKey("upload4")) {
			product.setImg4((String)addTime.get("upload4"));
		}
		if (addTime.containsKey("upload5")) {
			product.setImg5((String)addTime.get("upload5"));
		} 
		if (addTime.containsKey("upload0")) {
			product.getImgFile()[0].transferTo(new File(uploadDir, (String)addTime.get("upload0")));
		}
		if (addTime.containsKey("upload1")) {
			product.getImgFile()[1].transferTo(new File(uploadDir, (String)addTime.get("upload1")));
		}
		if (addTime.containsKey("upload2")) {
			product.getImgFile()[2].transferTo(new File(uploadDir, (String)addTime.get("upload2")));
		}
		if (addTime.containsKey("upload3")) {
			product.getImgFile()[3].transferTo(new File(uploadDir, (String)addTime.get("upload3")));
		}
		if (addTime.containsKey("upload4")) {
			product.getImgFile()[4].transferTo(new File(uploadDir, (String)addTime.get("upload4")));
		}
		if (addTime.containsKey("upload5")) {
			product.getImgFile()[5].transferTo(new File(uploadDir, (String)addTime.get("upload5")));
		}
		
		productService.addProduct(product);
		
		return "main";
	}
}
