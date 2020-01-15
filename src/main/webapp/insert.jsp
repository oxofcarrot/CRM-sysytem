<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>校园物资管理系统</head>
<body>
<center>	
<h2>请登录</h2>
</center>
 <form name=loginForm action="${pageContext.request.contextPath }/user/register" method=post>
         <table align="center">
           <tr>
                 <td>工号：</td><td><input type=text name=code /></td>
             </tr>  
             <tr>
                 <td>用户名：</td><td><input type=text name=username /></td>
             </tr>    
             <tr>
                 <td>密码：</td><td><input type=password name=password /></td>
             <tr/> 
               <tr>
                 <td>用户类型：</td><td><input type=text name=idtype /></td>
             </tr>             
             <tr>
             <td colspan="2",align="center">
                 <input type="submit" value="submit" />
                 <input type="reset" value="reset" />
             </td>
             </tr>        
         </table>
         
         </form>

</body>
</html>
