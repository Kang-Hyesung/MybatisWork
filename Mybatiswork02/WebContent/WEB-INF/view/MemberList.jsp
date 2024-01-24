<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
</head>
<body>

<div>
	<h1>회원 정보</h1>
	<hr />
</div>

<div class="container">
	<div class="panel-group-default">
	
		<div class="panel-heading" id="title">
			회원 정보 입력
		</div>
		
		<div class="panel-body">
			<form role="form" action="" method="post">
			
				<div class="form-group">
					<label for="name">
						NAME : 
					</label>
					<input type="text" class="form-control" id="name" name="name" />
				</div>
				
				<div class="form-group">
					<label for="telephone">
						TELEPHONE:
					</label>
					<input type="tel" class="form-control" id="telephone" name="telephone" />
				</div>
			
				<button type="submit" class="btn btn-default btn-sm">SUBMIT</button>
				<button type="button" class="btn btn-default btn-sm btnCancel">CANCEL</button>
				
			
			</form>
		</div>
	
	</div><!-- close .panel-group-default -->
	
	<div class="panel panel-default">
		
		<div class="panel-heading">
			회원 정보 출력
		</div>
		
		<div class="panel-body">
			<table class="table">
				<thead>
					<tr>
						<th>MID</th>
						<th>NAME</th>
						<th>TELEPHONE</th>
						<th>수정 / 삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>박가영</td>
						<td>010-2234-5678</td>
						<td>
							<button type="button" class="btn btn-default btn-xs btnUpdate">수정</button>
							<button type="button" class="btn btn-default btn-xs btnUpdate">삭제</button>
						</td>
					</tr>
				</tbody>
			</table>
			
			<button type="button" class="btn btn-default btn-sm" role="badgeFrame">
				Count <span class="badge" role="badge">1</span>
			</button>
		</div>
		
	</div><!-- close .panel-group-default -->
	
</div>

</body>
</html>



























