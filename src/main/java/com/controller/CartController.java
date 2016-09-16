package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.CartItems;
import com.model.Product;
import com.service.CartItemsService;
import com.service.ProductService;

@Controller
public class CartController {
	
	@Autowired
	private CartItemsService cartService;
	@Autowired
	private ProductService productService;
	
	//method for add and update the cart table
	@RequestMapping("desc/addtocart/{productid}")
	public String  addtocart(@PathVariable("productid")int id)
	{
		CartItems cart=new CartItems();
		Product pr=productService.getProduct(id);
		List<CartItems> crt=cartService.getAllProduct();
		/*for searching the table whether the product is new or exist*/
		for(int i=0;i<crt.size();i++)
		{
			int tempid=crt.get(i).getProduct().getproductid();
			//for update the existing product
			if(tempid==id)
			{	
				int quantity=crt.get(i).getQuantity()+1;
				crt.get(i).setQuantity(quantity);
				int price=pr.getProductprice()*quantity;
				crt.get(i).setTotalPrice(price);
				cartService.update(crt.get(i));
				return "redirect:/desc/"+id ;
			}
		}
		//it will add the new product
		cart.setQuantity(1);
		cart.setTotalPrice(pr.getProductprice());
		cart.setProduct(pr);
		cartService.add(cart);
		return "redirect:/desc/"+id;
	}
	
	
	//method to delete the cart item based on product id
	@RequestMapping("delete/cart/{id}")
	public String delcart(@PathVariable("id")int id,ModelMap model)
	{	
		cartService.delete(id);
		return"redirect:/cart";
	}
	
	//method to get all the product from the table
	@RequestMapping("/cart")
	public String getcart(Model map )
	{
		CartItems cart=new CartItems();
		List<CartItems> crt=cartService.getAllProduct();
		map.addAttribute("cart", cart);
		map.addAttribute("cartList", cartService.getAllProduct());
		return "cart";
	}
	
}
