<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>시험응시 (3 of 6)</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        .background {
            background-color: rgb(224, 224, 224);
            display: inline-block;
            padding:20px;
        }


        .input {
            padding: 6px 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .mark {
            display: inline-block;
            text-align: left;

        }


        .submit-butt {
            background-color: rgb(52, 152, 219);
            width: 840px;
            height: 50px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 4px;
        }

        .submit-butt:hover {
            background-color: rgb(116, 236, 245);
        }
    </style>
</head>

<body>
    <div style="margin:0 auto; width:1100px;">
        <form id="frm" name="frm" action="4 of 6_result.html" method=""
				onsubmit="return notCheckedQ()">
            <div style="padding:15px; text-align: left;">
                <span style="font-weight: bold; font-size: 30px;">시험응시</span>
            </div>
            

                <!-- 응시정보 -->
                <div class="background" 
                style="display:inline-block; width: 1060px; height: 110px;
                margin-bottom: 20px;">
                <table width="1060px" cellpadding=5>

                    <tr>
                        <td width="70px">응시자</td>
                        <td>
                            <input class="input" type="text" name="name" id="name" 
                            placeholder=" 홍길동"
                            style="width:80%; height:30px;">
                        </td>
                        <td width="70px" align="right">시험명</td>
                        <td>
                            <input class="input" type="text" name="test" id="test" 
                            placeholder=" 신입사원 레벨 테스트 "
                            style="width:300px; height:30px;">
                        </td>
                        <td width="70px" align="right">문항수</td>
                        <td width="">
                            <input class="input" type="text" name="Qnum" id="Qnum" 
                            placeholder=" 10"
                            style="width:100px; height:30px;">
                        </td>
                        <td width="70px" align="right">시험시간</td>
                        <td>
                            <input class="input" type="text" name="Ttime" id="Ttime" 
                            placeholder="1시간"
                            style="width:80px; height:30px;">
                        </td>
                    </tr>
                    <tr>
                        <td>상세정보</td>
                        <td colspan="5">
                            <input class="input" type="text" name="detail" id="detail"
                            placeholder=" 예담 주식회사 2020년 신입사원 공채 실기 테스트입니다."
                            style="width:96.5%; height:30px;">
                        </td>
                        <td width="70px" align="right">남은시간</td>
                        <td>
                            <input class="input" type="text" name="remainTime" id="remainTime"
                            style="width:80px; height:30px; 
                            font-weight: bold; font-size: 15px;">
                        </td>
                    </tr>
                    
                </table>
                </div>

                <!-- 문제, 답 체크 -->
                <div class="background" style="display: inline-block;
                height: 800px; width: 800px; text-align: left; 
                float:left; margin-bottom: 20px;" id="questList">
                        <div>
                                1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에
                                우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한
                                <br><br>
                                <label><input type="radio"
                                    name="Q1" id="Q1A1" value="1">&nbsp;1</label>
                                <br><br>
                                <label><input type="radio" name="Q1" id="Q1A2" value="2">&nbsp;2</label>
                                <br><br>
                                <label><input type="radio" name="Q1" id="Q1A3" value="3">&nbsp;3</label>
                                <br><br>
                                <label><input type="radio" name="Q1" id="Q1A4" value="4">&nbsp;4</label>
                        </div>
                        <br><br>
                        <div>
                                2. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에
                                우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한
                                <br><br>
                                <label><input type="radio" name="Q2" id="Q2A1" value="1">&nbsp;1</label>
                                <br><br>
                                <label><input type="radio" name="Q2" id="Q2A2" value="2">&nbsp;2</label>
                                <br><br>
                                <label><input type="radio" name="Q2" id="Q2A3" value="3">&nbsp;3</label>
                                <br><br>
                                <label><input type="radio" name="Q2" id="Q2A4" value="4">&nbsp;4</label>
                        </div>
                        <br><br>
                        <div>
                                3. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에
                                우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한
                                <br><br>
                                <label><input type="radio" name="Q3" id="Q3A1" value="1">&nbsp;1</label>
                                <br><br>
                                <label><input type="radio" name="Q3" id="Q3A2" value="2">&nbsp;2</label>
                                <br><br>
                                <label><input type="radio" name="Q3" id="Q3A3" value="3">&nbsp;3</label>
                                <br><br>
                                <label><input type="radio" name="Q3" id="Q3A4" value="4">&nbsp;4</label>
                        </div>
                    <br><br>

                </div>


                <!-- 답 마킹 -->
                <div class="background" 
                style="display: inline-block; height: 500px; width: 200px; 
                float:right;">
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px;" name="markNum1">
                            1.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ1" id="markQ1A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ1" id="markQ1A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ1" id="markQ1A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ1" id="markQ1A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px;" name="markNum2">
                            2.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ2" id="markQ2A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ2" id="markQ2A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ2" id="markQ2A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ2" id="markQ2A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum3">
                            3.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ3" id="markQ3A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ3" id="markQ3A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ3" id="markQ3A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ3" id="markQ3A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum4">
                            4.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ4" id="markQ4A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ4" id="markQ4A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ4" id="markQ4A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ4" id="markQ4A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum5">
                            5.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ5" id="markQ5A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ5" id="markQ5A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ5" id="markQ5A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ5" id="markQ5A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum6">
                            6.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ6" id="markQ6A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ6" id="markQ6A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ6" id="markQ6A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ6" id="markQ6A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum7">
                            7.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ7" id="markQ7A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ7" id="markQ7A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ7" id="markQ7A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ7" id="markQ7A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum8">
                            8.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ8" id="markQ8A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ8" id="markQ8A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ8" id="markQ8A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ8" id="markQ8A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum9">
                            9.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ9" id="markQ9A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ9" id="markQ9A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ9" id="markQ9A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ9" id="markQ9A4">4</label>
                        </div>
                    </div>
                    <div style="height: 30px;">
                        <div style="display: inline-block; width: 20px; height: 20px;" name="markNum10">
                            10.
                        </div>
                        &nbsp;
                        <div class="mark">
                            <label><input type="radio" value="1" name="markQ10" id="markQ10A1">1&nbsp;</label>
                            <label><input type="radio" value="2" name="markQ10" id="markQ10A2">2&nbsp;</label>
                            <label><input type="radio" value="3" name="markQ10" id="markQ10A3">3&nbsp;</label>
                            <label><input type="radio" value="4" name="markQ10" id="markQ10A4">4</label>
                        </div>
                    </div>


                </div>

            
                
            <div style="height:100px; clear: both; " >
                    <input class="submit-butt" type="submit" value="제출하기">
            </div>

        </form> 
        </div>

        <script>
            // 남은 시간 표시되도록
            var origSec=3600;
            var Timer = setInterval(
            function(){
                origSec--;
                var min = Math.floor(origSec/60);
                var sec = origSec%60;
                // console.log(origSec);
                // console.log(min+"분");
                // console.log(sec+"초");

                var remTime = document.getElementById("remainTime");
                if (min<10 && sec<10){
                    remTime.value = "0"+min +":"+"0"+sec;
                } else if (min<10) {
                    remTime.value = "0"+min +":"+sec;
                } else if (sec<10) {
                    remTime.value = min +":"+"0"+sec;
                } else 
                    remTime.value = min +":"+sec;

                    //00분 00초에 멈춤
                    if(min == 0 && sec == 0){
                        clearInterval(Timer);
                        //시험시간종료시 alert & 제출?
                    }
                    
            }, 1000 );
            

                // 문제란 체크시 마킹란 자동마킹
                $("input:radio[name^=Q]").click(function(){
                    
                    //클릭된 문항의 값
                    console.log(this); 
                    
                    //마킹란 라디오버튼의 값 변경
                    $('input:radio[name=mark'+this.name+']:radio[value='+this.value+']')
                    .prop("checked", true); //마킹란 버튼 체크상태로

                    // console.log( $('input:radio[name=mark'+this.name+']:radio[value='+this.value+']').value);
                })


                // 마킹란 체크시 문제란 자동마킹
                $("input:radio[name^=mark]").click(function(){
                    
                    // console.log(this);
  
                    // console.log(this.name); //클릭된 마킹란의 네임값에서
                    var Qnum = this.name.slice(4); //문항번호 추출
                    // console.log(Qnum);
                    
                    // 문제란 라디오버튼 값 변경
                    $('input:radio[name='+Qnum+']:radio[value='+this.value+']')
                    .prop("checked", true); //문제란 버튼 체크상태로
                })
                
                
                
                // 마킹란 문제번호 클릭시 해당문제란으로 스크롤이동
                // 클래스 인덱스 사용가능??
                // console.log(
                    var marklen = $('div                                                                                                                                                                 [name=^markQ]').length;
                    console.log(marklen);
                
                    

                    window.onload = function scroll (){
                        for (var i = 0; i < marklen; i++) {
                                }
                        }
                    
                    
                    
                

                //미체크 문제 확인
               function notCheckedQ() {

    // 체크되지 않은 문항수 구하기
    var Qcnt = $(".Quest").length; //총문항수
    // console.log(Qcnt);
    var notChCnt = 0;
    for(var i=1; i<Qcnt+1; i++){
        var checked = $('input:radio[name=Q'+i+']:checked').val();
        console.log(i+"문항의 답은"+checked);
        if (checked == null) { 
            notChCnt++; //체크되지 않은 문항수 증가
        }
    }

    // 제출여부 확인팝업
    if(notChCnt != 0) {
        var bool = confirm("풀지않은 문제가 "+ notChCnt +"문항있습니다. 제출할까요?");
        return bool;
    } else {
        var bool = confirm("제출하시겠습니까?");
        return bool;
    }
}
                





            

                
        </script>

</body>
</html>