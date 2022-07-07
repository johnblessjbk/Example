package org.apache.jsp.CUSTOMER;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CustomerHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "CustomerHome.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<!-- //banner -->\n");
      out.write("<!-- popular -->\n");
      out.write("<div class=\"popular-section-wthree\">\n");
      out.write("\t<div class=\"container\">\t\n");
      out.write("\t\t<div class=\"wthree-heading\">\n");
      out.write("\t\t\t<h2 class=\"w3l_header\">About us</h2>\n");
      out.write("\t\t\t<p class=\"quia\">Every property is unique and so are the needs of every property owner.</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t<p class=\"bui\">\n");
      out.write("                        You want to work with a Property Management company that shares your goals and vision for your property. </p>\n");
      out.write("\t\t\t\t<div class=\"popular-agileinfo\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 popular-grid\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-home\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t<h4>Best Views</h4>\n");
      out.write("\t\t\t\t\t\t<p>This might be in the form of increasing the rent, making improvements \n");
      out.write("                                                    to the property, or providing long-term stability by finding the right tenant </p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 popular-grid\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-bars\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t<h4>Affordable Price</h4>\n");
      out.write("\t\t\t\t\t\t<p>We realise that each and every person and property has different needs and a different story .                                              \n");
      out.write("Registered Architects Board - The board provides a searchable database of registered architects</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 popular-grid popular-grid-bottom\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-square-o\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t<h4>Spacious</h4>\n");
      out.write("\t\t\t\t\t\t<p>No Cowboys - Search for businesses based on name, location or category, read reviews.\n");
      out.write("Need a Tradesman - Find and get free quotes from suitable qualified tradesmen local to you and read reviews.\n");
      out.write("Builderscrack -  Get quotes from tradesmen and read reviews</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 popular-grid\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-building\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t<h4>Building</h4>\n");
      out.write("\t\t\t\t\t\t<p>Statistics New Zealand - View statistics relating to New Zealand's economy, environment and society.\n");
      out.write("Overseas Investment Office - The Overseas Investment Office providing information for Foreign Investors.</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer.jsp", out, false);
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
