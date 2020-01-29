<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>시험목록 (2 of 6)</title>
    <style>
        .register {
            background-color: rgb(52, 152, 219);
            width: 130px;
            height: 45px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 4px;
            text-align: center;
        }

        .register:hover {
            background-color: rgb(116, 236, 245);
        }




        .test {
            background-color: rgb(94, 94, 94);
            width: 80px;
            height: 30px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 4px;
        }
        .test:hover {
            background-color: rgb(116, 236, 245);
        }
        

        .result {
            background-color: rgb(52, 152, 219);
            width: 65px;
            height: 26px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 4px;
        }
        .result:hover {
            background-color: rgb(116, 236, 245);
        }





        .page {
            display: inline-block;
            width: 40px;
            height: 30px;
            border-radius: 4px;
            padding-top: 10px;
            background-color: rgb(244,244,244);
            color:rgb(64, 64, 64);
            font-size:16px;
            text-align: center;
        }

        td {
            text-align: center;
        }

        th {
            width: 20%;
        }


    </style>
</head>

<body>
    <div style="margin:0 auto; width:1030px;">
    <form>    

        <div style="padding:15px; text-align: left;">
            <span style="font-weight: bold; font-size: 30px;">시험목록</span>
        </div>
            
            
            <div style="background-color: rgb(224, 224, 224); 
            width: 1000px; height: 100px; padding: 15px;">
                
                    <div style="text-align: left;">
                        <div style="display: inline-block; padding:10px;">
                            응시여부
                        </div>
                        <div style="display: inline-block;">
                            <input type="radio" checked>&nbsp;전체
                            &nbsp; 
                            <input type="radio" checked>&nbsp;미응시
                            &nbsp;
                            <input type="radio" checked>&nbsp;응시
                        </div>
                        <div style="display: inline-block; float:right;">
                            <input type="reset" value="초기화"
                            style="background-color: rgb(241, 196, 15); width: 100px;  height: 40px; 
                            text-align: center; border-style: none; border-radius: 4px;
                            color: white;">
                        </div>
                    </div>
                  

                    <div style="margin-top:18px; text-align: left;">
                        <div style="display: inline-block; padding: 10px;">
                            시험종목
                        </div>
                        <div style="width: 200px; height: 40px; display: inline-block;">
                            <select name="subject" style="width: 100%; height: 100%;">
                                <option value="database" selected>데이터 베이스</option>
                            </select>
                        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div style="display: inline-block;">
                            시험명
                        </div>&nbsp;&nbsp;
                        <div style="width: 200px; height: 35px; display: inline-block;">
                            <input type="text" style="width: 100%; height: 100%;" placeholder=" 내용을 입력하세요">
                        </div>
                        <div style="display: inline-block; float:right;">
                            <input type="submit" value="검색" 
                            style="background-color: rgb(52, 152, 219); 
                            width: 100px; height: 40px; text-align: center; border-style: none;
                            color: white; border-radius: 4px;">
                        </div>
                     </div>

                     
                     <div style="float:right; padding-top:30px; padding-bottom:15px;">
                        <button class="register" type="button" 
                        onclick="location.href='6 of 6_registerQ.html'"
                        style="margin-right: 15px;">문제등록</button>
                        <button class="register" type="button" 
                        onclick="location.href='5 of 6_registerT.html'">시험지 등록</button>
                    </div>
            </div>        
                            


                     
               
        

        <br><br>
        <div>
            <table  frame="hsides" width="1030px" cellpadding="5px"  rules="rows"
                style=" height: 240px; font-size: 14px; ">
                <tr style="background-color: rgb(224, 224, 224); height: 45px; 
                font-weight: bold;
                border:1px solid rgb(190, 190, 190);">
                    <th>No.</th>
                    <th>시험종목</th>
                    <th>시험명</th>
                    <th>응시여부</th>
                </tr>
                <tr style="border:1px solid rgb(190, 190, 190);">
                    <td>89</td>
                    <td>데이터베이스</td>
                    <td>3월 정기시험</td>
                    <td><button class="test" type="button" onclick="location.href='3 of 6_test.html'"
                            value="응시하기">응시하기</button></td>
                </tr>
                <tr style="border:1px solid rgb(190, 190, 190);">
                    <td>88</td>
                    <td>프로그래밍</td>
                    <td>진급시험</td>
                    <td><button class="result" type="button" onclick="location.href='4 of 6_result.html'"
                            value="결과확인"><small>결과확인</small></button></td>
                </tr>
                <tr style="border:1px solid rgb(190, 190, 190);">
                    <td>87</td>
                    <td>운영체제</td>
                    <td>3월 정기시험</td>
                    <td><button class="test" type="button" onclick="location.href='3 of 6_test.html'"
                            value="응시하기">응시하기</button></td>
                </tr>
                <tr style="border:1px solid rgb(190, 190, 190);">
                    <td>86</td>
                    <td>프로그래밍</td>
                    <td>신입사원 레벨 테스트</td>
                    <td><button class="result" type="button" onclick="location.href='4 of 6_result.html'"
                            value="결과확인"><small>결과확인</small></button></td>
                </tr>
                <tr style="border:1px solid rgb(190, 190, 190);">
                    <td>85</td>
                    <td>정보기초</td>
                    <td>신입사원 레벨 테스트</td>
                    <td><button class="test" type="button" onclick="location.href='3 of 6_test.html'"
                            value="응시하기">응시하기</button></td>
                </tr>
            </table>

        </div>



    <div style="margin-top:15px; width:1030px; text-align: center; ">
        <div class="page">
            &lt;
        </div>
        <div class="page">
            1
        </div>
        <div class="page" 
        style=
        "background-color: rgb(52, 152, 219);
        color:white;">
            2
        </div>
        <div class="page">
            3
        </div>
        <div class="page">
            4
        </div>
        <div class="page">
            &gt;
        </div>
    </div>

</form>
</div>

</body>
</html>