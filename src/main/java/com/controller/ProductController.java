package com.controller;
import java.io.File;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.model.CartItems;
import com.model.Product;
import com.service.ProductService;



@Controller
public class ProductController {
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/product")
	public String setupForm(Map<String, Object> map){
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "product";
	}
	
	//angular view call only page without data
	@RequestMapping("/Angularview")
	public String getAng()
	{
		return "Angularview";
	}
	
	//angular view get all the product details from the table
	@RequestMapping("/ang")
	 public @ResponseBody List<Product> getAllProds() {
	  List<Product> l =null;
	  try{
	  l= productService.getAllProduct();
	   }
	  catch(Exception es)
	  {
	   l=null;
	  }
	  return l;
	 }
	
	//method for deleting the product based on product id admin usage in viewall page
	@RequestMapping("delete/{productid}")
	public String delitem(@PathVariable("productid")int id,ModelMap model)
	{
		productService.delete(id);
		return"redirect:/viewall";
	}
	
	//mehtod for edditing the product based on product id admin usage in view all page
	@RequestMapping("edit/{productid}")
	public String edititem(@PathVariable("productid")int id,@ModelAttribute Product product, BindingResult result,Map<String, Object> map)
	{	
		product=productService.getProduct(id);
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "product";
		
	}
	
	//method for showing the product desxription based on product id
	@RequestMapping("desc/{productid}")
	public String proddesc(@PathVariable("productid")int id,@ModelAttribute Product product, BindingResult result,Map<String, Object> map)
	{	
		product=productService.getProduct(id);
		map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "proddesc";
		
	}
	
	//method for view all the products
	@RequestMapping({"/viewall","edit/viewall"})
	public String getvieform(Map<String,Object>map)
	{
		Product product=new Product();
		map.put("product",product);
		map.put("productList", productService.getAllProduct());
		return"viewall2";
	}
	
	//method for crud operation
	@RequestMapping(value={"/crudoper","edit/crudoper"}, method=RequestMethod.POST)
	public String doActions(@ModelAttribute @Valid Product product, BindingResult result, @RequestParam String action,Map<String, Object> map){
		/*if(product.getProductprice()<=0){
		result.addError();	
		}*/
		if(result.hasErrors())
		{
			return "product";
		}
		Product productResult = new Product();
		switch(action.toLowerCase()){	
		case "add":
			MultipartFile file=product.getImage();
			product.setDiscountPrice(product.getProductprice()-(product.getProductprice()*product.getDiscount()/100));
			productService.add(product);
			if (!file.isEmpty()) 
			{
				System.out.println(file);
				try {
						File rootPath = new File(servletContext.getRealPath("/") );
						File dir = new File(rootPath + File.separator +"resources"+File.separator+ "images");
						if (!dir.exists())
							dir.mkdirs();
						// Create the file on server
						File serverFile = new File(dir + File.separator + product.getImagename() + ".jpg");
						System.out.println(serverFile);
						file.transferTo(serverFile);		
						return "redirect:/product";
					}
					catch (Exception e) 
					{
						e.printStackTrace();
						return "redirect:/error";
						
					}
				}
			productResult = product;
			break;
		case "edit":
			 MultipartFile files=product.getImage();
			 productService.edit(product);
			
			if (!files.isEmpty()) 
			{
				try {
						String rootPath = System.getProperty("catalina.home");
						File dir = new File(rootPath + File.separator + "images");
						if (!dir.exists())
							dir.mkdirs();
						// Create the file on server
						File serverFile = new File(dir + File.separator + product.getImagename() + ".jpg");
						System.out.println(serverFile);
						files.transferTo(serverFile);		
						return "redirect:/product";
					}
					catch (Exception e) 
					{
						return "redirect:/error";
					}
				}
			
			productResult = product;
			break;
		
		}
		map.put("product", productResult);
		map.put("productList", productService.getAllProduct());
		return "product";
	}

	public void updateproduct( List<CartItems> cartitems)
	{		Product product = new Product();
			int id;
			for(int i=0;i<cartitems.size();i++)
			{	
				id=cartitems.get(i).getProduct().getProductid();
				product=productService.getProduct(id);
				product.setProductquantity(product.getProductquantity()-cartitems.get(i).getQuantity());
				productService.edit(product);
			}
	}
}
