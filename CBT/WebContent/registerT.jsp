<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>시험지등록 (5 of 6)</title>
    <style>
        .register {
            background-color: rgb(241, 196, 15);
            width: 75px;
            height: 45px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 5px;
        }
        .register:hover {
            background-color: rgb(116, 236, 245);
        }


        .toList {
            background-color: rgb(52, 152, 219);
            width: 75px;
            height: 45px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 5px;
        }
        .toList:hover {
            background-color: rgb(116, 236, 245);
        }

        
    </style>
</head>

<body>
    
    <div style="margin:0 auto; width:1000px;">
        
    <!-- 수정필요 -->
    <form id="frm" name="frm" action="ExamCreate.do" method=""
				onsubmit="return registerTformCheck()">    

        <div style="padding:15px; text-align: left;">
            <span style="font-weight: bold; font-size: 30px;">시험지등록</span>
        </div>

        <div style="margin-left:50px; margin-top:20px; width:900px;">

            <div style="height: 60px;">
                <div style="display: inline-block; width: 75px; margin-right: 20px;">
                    시험명
                </div>
                    <input type="text" id="Tname" name="Tname"
                    value="신입사원 레벨 테스트"
                    style="height:35px; width:780px; 
                    border-radius: 5px;  border: 1px solid rgb(190, 190, 190);
                    padding-left: 10px;">
                    <!-- value 앞 들여쓰기효과를 위해 padding-left부여.
                    width는 그만큼 축소시켜서 외부div width크기를 벗어나지 않게 -->

            </div>

            <div style="height: 60px;">
                <div style="display: inline-block; width: 75px; margin-right: 20px;">
                    문항수
                </div>
                    <input type="text" id="Qcnt" name="Qcnt"
                    value="10"
                    style="height:35px; width:190px;
                    border-radius: 5px;  border: 1px solid rgb(190, 190, 190);
                    margin-right:267px;
                    padding-left: 10px;">
            
                <div style="display: inline-block; width: 90px; margin-right: 20px;">
                    시험시간(분)
                </div>
                	<!-- 숫자외의 값 입력할 경우 에러. 해당 부분 처리할 것.   -->
                    <input type="text" size="100" id="Ttime" name="Ttime"
                    placeholder="분 단위로 입력해주세요"
                    style="height:35px; width:190px;
                    border-radius: 5px;  border: 1px solid rgb(190, 190, 190);
                    padding-left: 10px;">
            </div>

            <div style="height: 60px;" >
                <div style="display: inline-block; width: 75px; margin-right: 20px;">
                    시험종목 
                </div>
                    <select  id="subject" name="subject"
                    style="border-radius: 5px;  border: 1px solid rgb(190, 190, 190);
                    height:40px; width: 200px;">
                        <option value="001">데이터베이스</option>
                        <option value="002">자바</option>
                        <option value="003">오라클</option>
                    </select>
            </div>

            <div style="height: 120px;">
                <div style="display: inline-block; width: 81px; margin-right: 20px;
                float:left; ">
                    상세정보
                </div>
                    <textarea id="desc" name="desc"
                    style="border-radius: 5px; 
                    border: 1px solid rgb(190, 190, 190);
                    width:785px; height:80px;">


                              예담 주식회사 2020년 신입사원 공채 실기 테스트입니다.
                    </textarea>
                    
            </div>

            <div style="height: 60px;">
                <div style="display: inline-block; width: 90px; ">
                    출제유형
                </div>
                <div style="display: inline-block; width: 120px;">
                    <input type="radio" id="TtypeR" name="Ttype" value="R">
                    <label for="TtypeR"><b>랜덤출제</b></label>
                </div>
                <div style="display: inline-block; width: 120px; ">
                    <input type="radio" id="TtypeA" name="Ttype"  value="A">
                    <label for="TtypeA"><b>고정출제</b></label>
                </div>
              
            </div>

            <br>

            <div style="text-align:center;">
                <input type="submit" value="등록" class="register" >
            &nbsp;
                <input type="button" value="목록" class="toList" 
                onclick="location.href='list.jsp'">
            </div>

        </div>

    </form>
    
    </div>
    
    <script>
    function registerTformCheck() {
        if (frm.Tname.value == "") {
            alert("시험명이 입력되지 않았습니다.");
            frm.Tname.focus();
            return false;
        }
        if (frm.Qcnt.value == "") {
            alert("문항수가 입력되지 않았습니다.");
            frm.Qcnt.focus();
            return false;
        }
        if (frm.Ttime.value == "") {
            alert("시험시간이 입력되지 않았습니다.");
            frm.Ttime.focus();
            return false;
        }
        if (frm.desc.value == "") {
            alert("상세정보가 입력되지 않았습니다.");
            frm.desc.focus();
            return false;
        }
        if (frm.Ttype.value == "") {
            alert("출제유형이 선택되지 않았습니다.");
            // frm.Ttype.focus();
            return false;
        }
        alert("시험등록이 완료되었습니다.")
        return true;
    }
    </script>
    
</body>
</html>