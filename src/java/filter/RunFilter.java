package filter;

import dao.MSSQLConnection;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter(urlPatterns = {"/home.jsp","/prayer.jsp","/service.jsp","/contact.jsp"})
public class RunFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        String servletPath = httpRequest.getServletPath();
        if(servletPath.contains("home.jsp")) httpResponse.sendRedirect("home");
        if(servletPath.contains("prayer.jsp")) httpResponse.sendRedirect("prayer");
        if(servletPath.contains("service.jsp")) httpResponse.sendRedirect("service");
        if(servletPath.contains("contact.jsp")) httpResponse.sendRedirect("contact");
    }

    @Override
    public void destroy() {

    }

}
