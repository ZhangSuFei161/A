<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	
	<script src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript">
		getData();
		function getData(){
			$.ajax({
				url:"HTTP://localhost:8080/Ajax/GetStudnetServlet",
				methed:"get",
				dataType:"json",
				success : function(data){
					var html = "";
					for(var i = 0;i < data.length;i++){
						html += "<tr>"+
										"<td>"+data[i].studentNo+"</td>"+ 
										"<td>"+data[i].name+"</td>"+ 
										"<td>"+data[i].address+"</td>"
								"</tr>";
					}
					$("table").append(html);
				}
			});
		}
	</script>
  </head>
  
  <body>
    <table>
    	<tr>
    		<td>学号</td>
    		<td>姓名</td>
    		<td>地址</td>
    	</tr>
    </table>
  </body>
</html>
