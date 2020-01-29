<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("click", function() {

		if (subject.selectedIndex >= 0) {
		//선택된 옵션값 없을 경우 index -1이므로 오류. 이를 방지하기 위함.
			
			
			
			//btnR버튼이벤트
			btnR.addEventListener('click', function() {				
				//selectedIndex 선택된 옵션값의 위치
				var opt = document.createElement("option");
				opt.text = subject.options[subject.selectedIndex].text;
				choose.add(opt);
				//선택항목 삭제
				subject.remove(subject.selectedIndex);
				}
			})

			//btnAll버튼이벤트
			btnAll.addEventListener("click", function() {
				//var len = 
				for (i = 0; i < subject.length; i++) {
					//for (i = len-1; i >= 0; i--) {
					var opt = document.createElement("option");
					opt.text = subject.options[i].text;
					choose.add(opt);
					subject.remove(i);
				}
			})
			
			
			
			
			
			

		

	})
</script>

</head>
<body>
	<select id="subject" multiple="multiple" size='5'>
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button type="button" id="btnR">▶</button>
	<button type="button" id="btnL">◀</button>
	<button type="button" id="btnAll">전체▶</button>
	<select id="choose" multiple="multiple" size="5">
	</select>

	<!-- 	
subject.length (select의 옵션갯수)
> 3
subject.size=5 (select옵션 지정한 갯수만큼 보여줌_창을 확장)
> 5

subject.selectedIndex //선택한 값의 옵션 인덱스
> 2

subject.options[subject.selectedIndex] //선택한 옵션 인덱스를 가지고 해당 태그 가져옴
> <option value=​"spring">​스프링	
	​</option>
	​
subject.options[subject.selectedIndex].text //선택한 해당 태그의 text
> "스프링"

subject.multiple = true // ctrl과 함께 다중옵션선택가능하도록
> true


subject.options[0].selected //선택된 항목 true로
> true
subject.options[2].selected
> false
 -->
</body>
</html>