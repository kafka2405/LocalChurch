package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sharing_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div class=\"right-col col-3\">\n");
      out.write("    <div class=\"sharing\">\n");
      out.write("        <div class=\"sharing__heading\">\n");
      out.write("            <div class=\"sharing__text text-element-header\">Share this page</div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"sharing__content\">\n");
      out.write("            <ul class=\"sharing__list\">\n");
      out.write("                <li class=\"sharing__item\">\n");
      out.write("                    <div class=\"sharing__icon sharing__icon--fb\"> </div>\n");
      out.write("                    <a class=\"sharing__link\" href=\"#\">Share on Facebook</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"sharing__item\">\n");
      out.write("                    <div class=\"sharing__icon sharing__icon--twitter\"> </div>\n");
      out.write("                    <a class=\"sharing__link\" href=\"#\">Share on Twitter</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"sharing__item\">\n");
      out.write("                    <div class=\"sharing__icon sharing__icon--gg\"> </div>\n");
      out.write("                    <a class=\"sharing__link\" href=\"#\">Share on Google+</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"create\">\n");
      out.write("        <div class=\"create__title text-element-header\">Create a website</div>\n");
      out.write("        <div class=\"create__description\">Everybody can create a website, it's easy</div>\n");
      out.write("        <div class=\"create__button\">Try it for FREE now</div>\n");
      out.write("    </div>\n");
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
