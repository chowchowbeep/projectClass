<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>문제등록 (6 of 6)</title>
    <style>

        .item {
            float:left;
            display: inline-block; 
            width: 75px; 
        }

        .blankShape{
            width:800px;
            height: 40px;
            border-radius: 5px;
            border: 1px solid rgb(190, 190, 190);
        }

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
    <form id="frm" name="frm" action="2 of 6_list.html" method=""
				onsubmit="return registerQformCheck()">    

        <div style="padding:15px; text-align: left;">
            <span style="font-weight: bold; font-size: 30px;">문제등록</span>
        </div>

        <div style="margin-left:50px; margin-top:20px; width:900px;">

                <div style="height: 50px;">
                    <div class="item">
                        종목
                    </div>
                        <select id="subject" name="subject" 
                        class="blankShape"
                        style="width:150px;">
                            <option value="database">데이터베이스</option>
                            <option value="java">자바</option>
                            <option value="oracle">오라클</option>
                        </select>
                </div>


                <div style="height: 120px;">
                    <div class="item">
                        문제
                    </div>                
                    <textarea id="QuestContents" name="QuestContents"
                    class="blankShape"
                    style="height:103px; width:796px;"></textarea>
                </div>


                <div style="height: 55px;">
                    <div class="item">                        
                        보기1
                    </div>                  
                    <input type="text" id="option1" name="option1"
                    size="100"  class="blankShape"
                    placeholder=" 신입사원 레벨 테스트">
                </div>


                <div style="height: 55px;">
                    <div class="item">
                        보기2
                    </div>
                        <input type="text" id="option2" name="option2"
                        size="100" class="blankShape" 
                        placeholder=" 신입사원 레벨 테스트">
                </div>


                <div style="height: 55px;">
                    <div class="item">
                        보기3
                    </div>
                        <input type="text" id="option3" name="option3"
                        size="100" class="blankShape" 
                        placeholder=" 신입사원 레벨 테스트">
                </div>


                <div style="height: 55px;">
                    <div class="item">
                        보기4
                    </div>
                        <input type="text" id="option4" name="option4"
                        size="100" class="blankShape" 
                        placeholder=" 신입사원 레벨 테스트">
                </div>



                <div style="height: 80px;">
                    <div class="item">
                        해설
                    </div>
                        <textarea id="explain" name="explain"
                        cols="100"class="blankShape"
                        style="height:60px; width:796px;"
                        placeholder="신입사원 레벨 테스트"></textarea>
                </div>


                <div style="height: 90px;"> 
                    <div class="item">
                        정답
                    </div>
                    <div style="float: left;">        
                        <div style="display: inline-block; width: 50px; ">
                            <input type="radio" name="answer" id="answer1" value="1">
                            <label for="answer1"><b>1</b></label>
                        </div>
                        <div style="display: inline-block; width: 50px;">
                            <input type="radio" name="answer" id="answer2" value="2">
                            <label for="answer2"><b>2</b></label>
                        </div>
                        <div style="display: inline-block; width: 50px;">
                            <input type="radio" name="answer" id="answer3" value="3">
                            <label for="answer3"><b>3</b></label>
                        </div>
                        <div style="display: inline-block; width: 50px;">
                            <input type="radio" name="answer" id="answer4" value="4">
                            <label for="answer4"><b>4</b></label>
                        </div>
                    </div>
                </div>


                <div style="text-align: center;">
                    <input type="submit" class="register" value="등록">
                &nbsp;
                    <input type="button" class="toList"  
                    onclick="location.href='2 of 6_list.html'"value="목록">
                </div>  
        </div>
        
    </form>    

    </div>
    <script>
    function registerQformCheck() {
        if (frm.QuestContents.value == "") {
            alert("문제가 입력되지 않았습니다.");
            frm.QuestContents.focus();
            return false;
        }
        if (frm.option1.value == "") {
            alert("보기1이 입력되지 않았습니다.");
            frm.option1.focus();
            return false;
        }
        if (frm.option2.value == "") {
            alert("보기2가 입력되지 않았습니다.");
            frm.option2.focus();
            return false;
        }
        if (frm.option3.value == "") {
            alert("보기3이 입력되지 않았습니다.");
            frm.option3.focus();
            return false;
        }
        if (frm.option4.value == "") {
            alert("보기4가 입력되지 않았습니다.");
            frm.option4.focus();
            return false;
        }
        if (frm.explain.value == "") {
            alert("해설이 입력되지 않았습니다.");
            frm.explain.focus();
            return false;
        }
        if (frm.answer.value == "") {
            alert("정답이 선택되지 않았습니다.");
            return false;
        }
        alert("문제등록이 완료되었습니다.")
        return true;
    }
    </script>
</html>