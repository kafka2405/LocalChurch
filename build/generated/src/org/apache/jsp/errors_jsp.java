package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class errors_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/sharing.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Local Community Church</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/common.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/errors.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("active", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("prayer", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("            <div class=\"main\">\n");
      out.write("                <div class=\"alignment\">\n");
      out.write("                    <div class=\"main-wrapper\">\n");
      out.write("                        <div class=\"left-col col-9\">\n");
      out.write("                            <div class=\"errors-title text-section-header\">\n");
      out.write("                                Something went wrong\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"error-subtitle text-element-header\">\n");
      out.write("                                Sorrry for this incovenience. Please try again later!\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");
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
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
      out.write("<div class=\"footer\">\n");
      out.write("    <div class=\"alignment\">\n");
      out.write("        <div class=\"footer__description\">\n");
      out.write("            Create by Kafka\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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