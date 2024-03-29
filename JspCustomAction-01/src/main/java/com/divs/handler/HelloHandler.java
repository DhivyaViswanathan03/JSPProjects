package com.divs.handler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class HelloHandler implements Tag {
	PageContext context;
	private String name;
	public String getName() {
		System.out.println("HelloHandler.getName()");
		return name;
	}

	public void setName(String name) {
		System.out.println("HelloHandler.setName()");
		this.name = name;
	}

	static {
		System.out.println("HelloHandler class is loading..");
	}
	public HelloHandler() {
		System.out.println("HelloHandler class object is created..");
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("HelloHandler.doEndTag()");
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("HelloHandler.doStartTag()");
		JspWriter out = context.getOut();
		try {
			if(name==null)
			out.println("<h1>Hello guest good evening..</h1>");
			else
				out.println("<h1>Hello "+name+" good evening</h1>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public Tag getParent() {
		System.out.println("HelloHandler.getParent()");
		return null;
	}

	@Override
	public void release() {
		System.out.println("HelloHandler.release()");

	}

	@Override
	public void setPageContext(PageContext context) {
		this.context=context;
		System.out.println("HelloHandler.setPageContext()");
	}

	@Override
	public void setParent(Tag arg0) {
		System.out.println("HelloHandler.setParent()");

	}

}
