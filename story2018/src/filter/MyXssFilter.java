package filter;

import java.io.IOException;



import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter(filterName="MyXssFilter",urlPatterns="/*")   
public class MyXssFilter implements Filter{  
	   @Override
    public void init(FilterConfig filterConfig) throws ServletException {  
		 System.out.println("开始运行------------------------->");
          
    }  
  
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)  
            throws IOException, ServletException {  
    	XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest)request);  
        chain.doFilter(xssRequest , response);   
    }  
      
    @Override  
    public void destroy() {  
    	 System.out.println("结束运行------------------------->");
    }  
      
}  