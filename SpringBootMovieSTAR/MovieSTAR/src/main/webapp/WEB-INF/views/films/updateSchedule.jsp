<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../administrator/cssback.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="hold-transition sidebar-mini">
	<script
		src="  ${pageContext.request.contextPath}/administrator/plugins/jquery/jquery.min.js"></script>
	<jsp:include page="../administrator/topback.jsp"></jsp:include>

	<div style="margin: 0px auto">
	<div class="row">
		<div class="col-md-6">
			<div class="card card-primary">
				<div class="card-header">
					<h3 class="card-title">行程新增</h3>

					<div class="card-tools">
						<button type="button" class="btn btn-tool"
							data-card-widget="collapse" title="Collapse">
							<i class="fas fa-minus"></i>
						</button>
					</div>
				</div>
		<form id="updateSchedule" action="updateSchedule.controller" method="post"
			style="width: 600; height: 600">
			<div class="card-body">

				<div class="form-group">
					<label for="inputName">電影編號：</label> 
					<input type="text" name="id" value="${schedule.schedule_id}" readonly="readonly"/><br>
				</div>

				<div class="form-group">
					<label for="inputName">電影名稱：</label>
					<input type="text" name="movieName" value="${schedule.movie.movieName}" readonly="readonly"/>
					<br>
				</div>


				<div class="form-group">
					<label for="inputName">影廳名稱：</label>
					<input type="text" name="hallName" value="${schedule.hall.hallName}" readonly="readonly"/>
					<br>
				</div>

				<div class="form-group">
					<label for="inputName">版本：</label>
					<input type="text" name="ticketVersion" value="${schedule.ticketPrice.ticketVersion}" readonly="readonly"/>
					<br>
				</div>

				<div class="form-group">
					<label for="inputName">日期：</label>
					<input type="text" name="scheduleDate" value="${schedule.date}" name ="scheduleDate"/>
					<br>
				</div>
				
				<div class="form-group">
					<label for="inputName">時間：</label>
					<input type="text" name="time" value="${schedule.time}" name="time">
					<br>
				</div>
				
						<button type="button"  onclick="sb()">提交</button>

			</div>
			
		</form>
	</div>
	</div>
	</div>
	</div>
	
	<jsp:include page="../administrator/footerback.jsp"></jsp:include>
	<script type="text/javascript">
	function sb(){
		Swal.fire({
			  title: '是否更新行程?',
			  showDenyButton: true,
// 			  showCancelButton: true,
			  confirmButtonText: `是`,
			  denyButtonText: `否`,
			}).then((result) => {
			  /* Read more about isConfirmed, isDenied below */
			  if (result.isConfirmed) {
				  Swal.fire({
				      icon: 'success',
				      title: '新增成功',
				      showConfirmButton: false,
				      timer: 1500
				    });
			    setTimeout(function(){document.getElementById("updateSchedule").submit()},1500)
			  } else if (result.isDenied) {
			    Swal.fire('Changes are not saved', '', 'info')
			  }
			})
		
		
	}
	</script>
</body>
</html>