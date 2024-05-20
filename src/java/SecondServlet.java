
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Admin
 */
public class SecondServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String a = req.getParameter("a");
        String b = req.getParameter("b");
        String math = req.getParameter("math");
        double numa = Double.parseDouble(a);
        double numb = Double.parseDouble(b);
        double rs = 0;

        switch (math) {
            case "add":
                rs = numa + numb;
                break;
            case "sub":
                rs = numa - numb;
                break;
            case "multi":
                rs = numa * numb;
                break;
            case "devide":
                rs = numa / numb;
                break;
            default:
                throw new AssertionError();
        }
//        switch (math) {
//            case "add" -> rs = numa + numb;
//            case "sub" -> rs = numa - numb;
//            case "multi" -> rs = numa * numb;
//            case "devide" -> rs = numa / numb;
//            default -> throw new AssertionError();
//        }
        resp.getWriter().println("<html>");
        resp.getWriter().println("<link rel=\"stylesheet\" href=\"css/stylesindex.css\">");
        resp.getWriter().println("<body>");
        resp.getWriter().println(rs);
        resp.getWriter().println("</html>");
        resp.getWriter().println("</body>");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

}
