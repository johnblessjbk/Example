package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class WebHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!--\n");
      out.write("author: W3layouts\n");
      out.write("author URL: http://w3layouts.com\n");
      out.write("License: Creative Commons Attribution 3.0 Unported\n");
      out.write("License URL: http://creativecommons.org/licenses/by/3.0/\n");
      out.write("-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Homestead a Real Estate Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>\n");
      out.write("<!-- custom-theme -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Homestead Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("\t\tfunction hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //custom-theme -->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- font-awesome-icons -->\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- //font-awesome-icons -->\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i\" rel=\"stylesheet\">\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/owl.carousel.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<link href=\"css/owl.theme.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("</head>\t\n");
      out.write("<body>\n");
      out.write("<!-- banner -->\n");
      out.write("<div class=\"header\">\n");
      out.write("\t<div class=\"w3layouts_header_right\">\n");
      out.write("\t\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"top_heder_agile_info\">\n");
      out.write("\t<div class=\"w3ls_agile_header_inner\">\t\n");
      out.write("\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t<div class=\"navbar-header navbar-left\">\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("                            <h1><a class=\"navbar-brand\" href=\"\"><i class=\"fa fa-home\" aria-hidden=\"true\"></i> E-MarT <span><sub>Rent ShoP</sub></span> </a></h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse navbar-right\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t<nav class=\"menu menu--juliet\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"active\"><a href=\"WebHome.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"login.jsp\" >Login</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"customer.jsp\">Customer</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"RentShop.jsp\">Rent Shop</a></li>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t<div class=\"agileinfo_social_icons\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"agileits_social_list\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"w3_agile_facebook\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"agile_twitter\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\" class=\"w3_agile_dribble\"><i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t</nav>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //banner -->\n");
      out.write("\n");
      out.write("<!-- banner -->\n");
      out.write("<div class=\"banner-silder\">\n");
      out.write("\t<div class=\"banner\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li></li>\n");
      out.write("\t\t\t<li></li>\n");
      out.write("\t\t\t<li></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t<ol>\n");
      out.write("\t\t</ol>\n");
      out.write("\t\t\t<i class=\"left\"></i><i class=\"right\"></i>\n");
      out.write("\t\t\t <div class=\"banner_wthree_agile_info\">\n");
      out.write("\t\t\t\t<h3>Residential and commercial building, remodeling &amp; renovations experience</h3>\n");
      out.write("\t\t\t\t\t<div class=\"social_list_w3ls\">\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"w3_agile_facebook_agile\"><span class=\"fa fa-facebook\" aria-hidden=\"true\"></span></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"agile_twitter_agile\"><span class=\"fa fa-twitter\" aria-hidden=\"true\"></span></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"w3_agile_dribble_agile\"><span class=\"fa fa-dribbble\" aria-hidden=\"true\"></span></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"w3_agile_vimeo_agile\"><span class=\"fa fa-vimeo\" aria-hidden=\"true\"></span></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t</div>\t\n");
      out.write("</div>\n");
      out.write("<!-- //banner -->\n");
      out.write("<!-- popular -->\n");
      out.write("<div class=\"popular-section-wthree \">\n");
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
      out.write("\t<!-- //popular -->\n");
      out.write("<br>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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
