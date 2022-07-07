package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Login V16</title>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"images/icons/favicon.ico\" />\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"fonts/Linearicons-Free-v1.0.0/icon-font.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animate/animate.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/css-hamburgers/hamburgers.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/animsition/css/animsition.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/select2/select2.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"vendor/daterangepicker/daterangepicker.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\n");
      out.write("\n");
      out.write("<meta name=\"robots\" content=\"noindex, follow\">\n");
      out.write("<script nonce=\"31e01c5e-50c6-4512-9cfe-81102cf4e928\">(function(w,d){!function(a,e,t,r,z){a.zarazData=a.zarazData||{},a.zarazData.executed=[],a.zarazData.tracks=[],a.zaraz={deferred:[]};var s=e.getElementsByTagName(\"title\")[0];s&&(a.zarazData.t=e.getElementsByTagName(\"title\")[0].text),a.zarazData.w=a.screen.width,a.zarazData.h=a.screen.height,a.zarazData.j=a.innerHeight,a.zarazData.e=a.innerWidth,a.zarazData.l=a.location.href,a.zarazData.r=e.referrer,a.zarazData.k=a.screen.colorDepth,a.zarazData.n=e.characterSet,a.zarazData.o=(new Date).getTimezoneOffset(),a.dataLayer=a.dataLayer||[],a.zaraz.track=(e,t)=>{for(key in a.zarazData.tracks.push(e),t)a.zarazData[\"z_\"+key]=t[key]},a.zaraz._preSet=[],a.zaraz.set=(e,t,r)=>{a.zarazData[\"z_\"+e]=t,a.zaraz._preSet.push([e,t,r])},a.dataLayer.push({\"zaraz.start\":(new Date).getTime()}),a.addEventListener(\"DOMContentLoaded\",(()=>{var t=e.getElementsByTagName(r)[0],z=e.createElement(r);z.defer=!0,z.src=\"/cdn-cgi/zaraz/s.js?z=\"+btoa(encodeURIComponent(JSON.stringify(a.zarazData))),t.parentNode.insertBefore(z,t)}))}(w,d,0,\"script\");})(window,document);</script></head>\n");
      out.write("<body>\n");
      out.write("<div class=\"limiter\">\n");
      out.write("<div class=\"container-login100\" style=\"background-image: url('images/bg-01.jpg');\">\n");
      out.write("<div class=\"wrap-login100 p-t-30 p-b-50\">\n");
      out.write("<span class=\"login100-form-title p-b-41\">\n");
      out.write("Account Login\n");
      out.write("</span>\n");
      out.write("<form class=\"login100-form validate-form p-b-33 p-t-5\">\n");
      out.write("<div class=\"wrap-input100 validate-input\" data-validate=\"Enter username\">\n");
      out.write("<input class=\"input100\" type=\"text\" name=\"username\" placeholder=\"User name\">\n");
      out.write("<span class=\"focus-input100\" data-placeholder=\"&#xe82a;\"></span>\n");
      out.write("</div>\n");
      out.write("<div class=\"wrap-input100 validate-input\" data-validate=\"Enter password\">\n");
      out.write("<input class=\"input100\" type=\"password\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("<span class=\"focus-input100\" data-placeholder=\"&#xe80f;\"></span>\n");
      out.write("</div>\n");
      out.write("<div class=\"container-login100-form-btn m-t-32\">\n");
      out.write("<button class=\"login100-form-btn\">\n");
      out.write("Login\n");
      out.write("</button>\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div id=\"dropDownSelect1\"></div>\n");
      out.write("\n");
      out.write("<script src=\"vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"vendor/animsition/js/animsition.min.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("<script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"vendor/select2/select2.min.js\"></script>\n");
      out.write("<script src=\"vendor/daterangepicker/moment.min.js\"></script>\n");
      out.write("<script src=\"vendor/daterangepicker/daterangepicker.js\"></script>\n");
      out.write("<script src=\"vendor/countdowntime/countdowntime.js\"></script>\n");
      out.write("\n");
      out.write("<script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\n");
      out.write("<script>\n");
      out.write("\t  window.dataLayer = window.dataLayer || [];\n");
      out.write("\t  function gtag(){dataLayer.push(arguments);}\n");
      out.write("\t  gtag('js', new Date());\n");
      out.write("\t  gtag('config', 'UA-23581568-13');\n");
      out.write("\t</script>\n");
      out.write("<script defer src=\"https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194\" integrity=\"sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==\" data-cf-beacon='{\"rayId\":\"6ece5bc92d19dc89\",\"token\":\"cd0b4b3a733644fc843ef0b185f98241\",\"version\":\"2021.12.0\",\"si\":100}' crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
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
