<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!--Load the AJAX API-->
<script type="text/javascript"	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	// Load the Visualization API and the corechart package.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.charts.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and
	// draws it.
	function drawChart() {
		// Set chart options_ 색상변경, 3d효과 등 꾸미기 가능
		var options = {
			'title' : 'DEPT CNT',
			'width' : 400,
			'height' : 300
		};

		// Create the data table.
		var data = new google.visualization.DataTable();
		data.addColumn('string', '부서명');
		data.addColumn('number', '인원수');

		// 데이터를 ajax로 받기 
		$.ajax("../ajax/GetDeptCnt.do", {dataType:"json"})
		.done(
				function(chartData) {
					var arr = [];
					for (i = 0; i < chartData.length; i++) {
						arr.push([chartData[i].department_name,
								chartData[i].cnt]); //arr배열 속에 DAO로 가져온 배열 삽입
					}
					data.addRows(arr);



					// Instantiate and draw our chart, passing in some options.
					
					//var chart1 = new google.visualization.PieChart
					//(document.getElementById('chart_div'));
					//chart1.draw(data, options);
					
					//라인차트로 표시하고 싶을 때
					var chart2 = new google.visualization.LineChart
					(document.getElementById('chart_div'));
					chart2.draw(data, options); 
					
					//var chart3 = new google.visualization.BarChart
					//(document.getElementById('chart_div'));
					//chart3.draw(data, options); 

				});
	}
</script>
</head>

<body>
	<!--Div that will hold the pie chart-->
	<div id="chart_div"></div>
</body>
</html>