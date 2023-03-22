<%@page import="dao.EmployeeDAO"%>
<%@page import="entities.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="list-style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="intro">
  <div class="bg-image h-100" style="background-color: #f5f7fa;">
    <div class="mask d-flex align-items-center h-100">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="card">
              <div class="card-body p-0">
                <div class="table-responsive table-scroll" data-mdb-perfect-scrollbar="true" style="position: relative; height: 700px">
                  <a href="new-employee.jsp"><button type="button" style="background-color: rgb(255, 197, 142); border-radius: 5px;">Create new</button></a>
                  <table class="table table-striped mb-0">
                    <thead style="background-color: #002d72;">
                     <tr>
					<th>ID</th>
					<th>Name</th>
					<th>City</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Action</th>
					</tr>
					</thead>
		
					<%
						ArrayList<Employee> employeeList=new EmployeeDAO().getAll();
						for(Employee element : employeeList){
						%><tr>
						<td><%=element.getId()  %></td>
						<td><%=element.getName()  %></td>
						<td><%=element.getNIC()  %></td>
						<td><%=element.getDepartment()  %></td>
						<td><%=element.getDesignation()  %></td>
						<td>
						<a href="update-employee.jsp?id=<%=element.getId()%>"><button type="button" style="background-color: rgb(103, 255, 122); border-radius: 5px;">EDIT</button></a> &nbsp; &nbsp;
						<a href="delete-employee.jsp?id=<%=element.getId()%>"><button type="button" style="background-color: rgb(255, 100, 95); border-radius: 5px;">DELETE</button></a> 
					</td>
					</tr>
				<%
			}
		%>                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	
</body>
</html>