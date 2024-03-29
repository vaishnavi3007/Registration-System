<%-- 
    Document   : save_course
    Created on : Jul 28, 2018, 10:55:50 PM
    Author     : sarvadnya
--%>

<%@page import="beans.Courses"%>
<%@page import="java.util.List"%>
<%@page import="mainController.AdminCon"%>
<%@page import="mainController.CourseCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm course</title>
    </head>
    <body>
        <jsp:useBean id="course" class="beans.Courses"></jsp:useBean> 
        <jsp:setProperty property="*" name="course"/>  
        
        <%  course.setIs_offered("n");
            String tm=request.getParameter("Total_Marks");
            int tms=Integer.parseInt(tm);
            course.setTotal_Marks(tms);
            
            try
            {
                if(session.getAttribute("hod_user").equals("hod"))
                {
                    course.setIs_validated("n"); 
                    course.setDepartment(CourseCon.getDepartment(course.getProgramme()));
                   
                    int i=CourseCon.register(course);
                    if(i>0)
                    {
                        response.sendRedirect("../views/HOD/hodPanel.jsp?result=Successfully given for confirmation to admin..");
                    }
                }
            }catch(Exception e)
            {
                out.println(e);
            }
            
            try
            {
                if(session.getAttribute("admin_user").equals("admin"))
                {
                    Boolean flag=null;
                    course.setDepartment(CourseCon.getDepartment(course.getProgramme()));
                    flag=AdminCon.addNewCourse(course);
                    if(flag==true)
                    {
                        try{if(Integer.parseInt(request.getParameter("size"))==1){response.sendRedirect("../views/Admin/adminPanel.jsp?result=Successfully course confirmed.");}}catch(Exception e){}
                        response.sendRedirect("../views/Admin/confirmCourse.jsp?page=1&result=Successfully course confirmed.");
                    }
                    else
                    {
                        out.println("Course confirmation unsuccessful");
                    }
                }
            }catch(Exception e)
            {
                out.println(e);
                e.printStackTrace();
                
            }
        %>
    </body>
</html>
