<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로그인(1 of 6)</title>
    <style>
        .figure {
            display: inline-block;
            border-radius: 30px;
            padding: 5px;
            margin: 10px;
            width: 90px;
            height: 25px;
            background-color: rgb(26, 188, 156);
            color: white;
        }

        .login {
            padding: 10px 35px 10px;
            margin: 30px;
            margin-left: 70px;
            width: 440px;
            font-size: 13pt;
            font-weight: bold;
            border-radius: 4px;
            background-color: rgb(52, 152, 219);
            color: white;
            border-style: none;
        }

        .login:hover {
            background-color: rgb(116, 236, 245);
        }

        .input {
            border-radius: 4px;
            border: 1px solid #ccc;
            width: 100%;
            height: 70%;
            padding: 5px 10px;
        }
    </style>
</head>

<body>
        <div style = "text-align: center;">

        <form>
            
        <br><br><br><br><br><br>

        <div class="figure">
            <div style=" display: inline; font-size: 14px; ">이메일</div>
        </div>
        <div style="display: inline-block; width: 300px; height: 40px;">
            <input class="input" type='text' placeholder="내용을 입력해주세요">
        </div>
        
        <br>
        
        <div class="figure">
            <div style=" display: inline; font-size: 14px; ">패스워드</div>
        </div>
        <div style="display: inline-block; width: 300px; height: 40px;">
            <input class="input" type='password' placeholder="내용을 입력해주세요">
        </div>
        
        <br>
        
        <div> 
            <div style="text-align: center;" class="flick"></div>
            <button class="login" type="submit" onclick="location.href='2 of 6_list.html'">로그인</button>
        </div>

        </form>
        
        </div>
</body>
</html>