<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>결과확인 (4 of 6)</title>
    <style>
        .background {
            background-color: rgb(224, 224, 224);
            padding: 20px;
            width: 1060px;
        }

        .toList {
            background-color:rgb(52, 152, 219);
            width: 165px;
            height: 50px;
            text-align: center;
            border-style: none;
            color: white;
            border-radius: 4px;
        }
        .toList:hover {
            border-color: rgb(116, 245, 241);
            background-color: rgb(88, 219, 252);
        }

        .blank {
            border-radius: 5px;
            border: 1px solid rgb(190, 190, 190);
            width: 100%; height: 100%;
            background-color: rgb(224, 224, 224);
            padding: 6px 12px;
        }

        .firstRow div {
            display: inline-block;
            padding: 10px;
            float:left;
            margin-right:16px;
        }
        .secondRow div {
            display: inline-block;
            padding: 10px;
            float:left;
        }
    </style>
</head>

<body>
    <div style="margin:0 auto; width:1100px;">
    <form>

        <div style="padding:15px; text-align: left;">
            <span style="font-weight: bold; font-size: 30px;">시험결과</span>
        </div>

            <div class="background" style="height: 110px;">

                <div class="firstRow"  style="height: 65px;">

                    <div>
                        시험명
                    </div>
                    <input class="blank" type="text" name="test" id="test" 
                    placeholder=" 신입사원 레벨 테스트"
                    style="width: 310px; height: 30px;
                    margin-right:33px; float:left;">

                    <div>
                        문항 수
                    </div>
                    <input class="blank" type="text" name="Qnum" id="Qnum" 
                    placeholder=" 10"
                    style="width: 180px; height: 30px;
                    margin-right:32px; float:left;">

                    <div>
                        시험시간
                    </div>
                    <input class="blank" type="text" name="t_time" id="t_time" 
                    placeholder=" 1시간"
                    style="width: 150px; height: 30px; 
                    float:left;">

                </div>

                <div class="secondRow" style="clear:both;">

                    <div>
                        상세정보
                    </div>
                    <input class="blank" type="text" name="detail" id="detail" 
                    placeholder=" 예담 주식회사 2020년 신입사원 공채 실기 테스트입니다."
                    style="width: 950px; height: 30px;
                    float:left;"  >

                </div>

            </div>

            <br><br>
            <div class="background" style="height: 60px; text-align: center;">
                <div style="display: inline-block;">
                    홍길동님의 결과는
                </div>
                <span style="color: rgb(52, 152, 219); font-size: 40px;">
                    70점
                </span>
                <div style="display: inline-block;">
                    입니다.
                </div>
            </div>

            <br>

            <div style="height: 500px;">

                <div style="height: 50px; text-align: left;">
                    <span style="font-weight: bold; font-size: 30px;">틀린문제 다시 보기</span>
                </div>

                <div style="height: 150px;">
                    <div style="width: 1100px; height: 100px;">
                        <div>
                            1. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한
                        </div>
                        <br>
                        <div style="height: 32px;">
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                정답
                            </div>
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                <input type="radio" name="1" value="1" checked>&nbsp;1
                            </div>
                        </div>
                        <div style="height: 32px;">
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                해설
                            </div>
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                해설
                            </div>
                        </div>
                    </div>
                </div>

                <div style="height: 150px;">
                    <div style="width: 1100px; height: 120px;">
                        <div>
                            5. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한
                        </div>
                        <br>
                        <div style="height: 32px;">
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                정답
                            </div>
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                <input type="radio" name="5" value="5" checked>&nbsp;1
                            </div>
                        </div>
                        <div style="height: 32px;">
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                해설
                            </div>
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                해설
                            </div>
                        </div>
                    </div>
                </div>

                <div style="height: 150px;">
                    <div style="width: 1100px; height: 100px;">
                        <div>
                            8. 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한
                        </div>
                        <br>
                        <div style="height: 32px;">
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                정답
                            </div>
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                <input type="radio" name="8" value="8" checked>&nbsp;1
                            </div>
                        </div>
                        <div style="height: 32px;">
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                해설
                            </div>
                            <div
                                style="display: inline-block; width: 50px; height: 15px;">
                                해설
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div style="height: 50px;">
                <div style="text-align: center;">
                    <button class="toList" type="button" onclick="location.href='2 of 6_list.html'"><h3>시험목록으로</h3></button>
                </div>
            </div>
        
        </form> 
        </div>
</body>
</html>