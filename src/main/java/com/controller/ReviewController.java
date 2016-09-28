package com.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Product;
import com.model.Reviews;
import com.service.ProductService;
import com.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ProductService productService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/review/{productid}")
	public String getreview(Map<String, Object> map,@PathVariable("productid")int id)
	{
		Reviews reviews=new Reviews();
		Product pr=productService.getProduct(id);
		map.put("review", reviews);
		map.put("product", pr);
		return "review";
	} 
	
	@RequestMapping("review/addreview/{productid}")
	public String savereview(@ModelAttribute Reviews review,BindingResult result,@PathVariable("productid")int id)
	{	Product product=new Product();
		product.setproductid(id);
		review.setProduct(product);
		reviewService.add(review);
		return "viewall2";
	}
}