package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.CustomerCRUD;
import com.js.dto.Customer;
@WebServlet("/register")
public class InsertServlet extends HttpServlet {
	
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			Customer c= new Customer();
			int id= Integer.parseInt(req.getParameter("id")); 
			int password=Integer.parseInt(req.getParameter("pwd")); 
			long phone=Long.parseLong(req.getParameter("phone"));
			c.setId(id);
			c.setName(req.getParameter("name"));
			c.setEmail(req.getParameter("email"));
			c.setPassword(password);
			c.setPhone(phone);
			
			int res= CustomerCRUD.insertCustomer(c);
			
			RequestDispatcher rd=req.getRequestDispatcher("result.jsp");
			
			if(res>0) {
				req.setAttribute("msg","Inserted Sussessfully");
				rd.forward(req, resp);
			}
			else
			{
				
				req.setAttribute("msg","Failed To Insert");
				rd.forward(req, resp);
			}
			
		}
	
}
