<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous"> <!-- 부트스트랩의 CSS만 불러서 사용할 경우 -->
	
	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script> <!-- jquery링크를 부트스트랩 링크보다 먼저 걸어주어야 함. 순서 틀리면 오류나요.-->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<style type="text/css">
div {
	border: 1px solid red;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<!-- maxsize12. lg, md 각각의 비율 정해줌-->
			<div class="col-lg-6 col-md-12">
				목록 <br>
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th>아이디</th>
							<th>이름</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>김</td>
							<td>초롱</td>
						</tr>
						<tr>
							<td>김</td>
							<td>초롱</td>
						</tr>
						<tr>
							<td>김</td>
							<td>초롱</td>
						</tr>
					</tbody>
					<tfoot></tfoot>
				</table>
			</div>
			<div class="col-lg-3 col-md-12">
				등록폼<br>
				<form>
					<!-- form-group, form-control로 form의 크기 자동으로 조정-->
					<div class="form-group row">
						<!-- form-group row 인풋태그를 row로 정렬해줌-->
						<label class="col-4">아이디</label>
						<div class="col-8">
							<input class="form-control" type="text">
						</div>
						<!-- 정렬을 위해 인품태그 div로 감사고 사이즈 지정함 -->
					</div>
					<div class="form-group row">
						<label class="col-4">이름</label>
						<div class="col-8">
							<input class="form-control" type="text">
						</div>
					</div>
					<div class="form-group row">
						<br>
						<button class="btn btn-warning">등록</button>
						<a href="#" class="btn btn-danger">목록</a>
						<button class="btn btn-secondary">취소</button>
					</div>
				</form>
			</div>
			<div class="col-lg-3 col-md-12">
				collapse 테스트<br>
				<!-- collapse_ 접혔다 보이기를 전환할 수 있게 함-->

				<!-- 접히는 동작을 제어할 부분 -->
				<!-- data-toggle은 css만으로 이용불가. 동적인 처리를 위해서는 js, jquery의 cdn도 복사해오세요 -->
				<a class="btn btn-secondary" data-toggle="collapse" href="#usersecondary"
					role="button" aria-expanded="false" aria-controls="collapseExample">
					도움말</a>
				<!-- 접히는 부분 -->
				<div class="collapse" id="usersecondary">회원관리 상세 도움말</div>



			</div>

		</div>


	</div>
</body>
</html>