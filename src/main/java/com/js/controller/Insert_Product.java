package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.ProductCRUD;
import com.js.dto.Product;

@WebServlet("/insert")
public class Insert_Product extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Product p=new Product();
		
		int id=Integer.parseInt(req.getParameter("id")); 
		
		p.setId(id);
		p.setName(req.getParameter("name"));
		p.setBrand(req.getParameter("brand"));
		p.setPrice(Double.parseDouble(req.getParameter("price")));
		p.setQuantity(Integer.parseInt(req.getParameter("quantity")));
		
		int res=ProductCRUD.insertProduct(p);
		
		RequestDispatcher rd=req.getRequestDispatcher("result.jsp");
		
		if(res>0) {
			
			req.setAttribute("msg","Inserted Product Successfully");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("msg","Failed to insert the product");
			rd.forward(req, resp);
			
		}
		
		
	}

}
