<%@ page import="org.dimigo.VO.UserVO" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>YGH</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/blog_css.css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" crossorigin="anonymous"></script>
    <script src="../js/scrolling_lists.js"></script>
</head>
<body>
<div id = "navbar">
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">안내</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                </div>
            </div>

        </div>
    </div>
    <script src="../js/scrolling_lists.js"></script>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top nav_trans fontb" id="mynav">
        <a class="navbar-brand"><img src="../image/logo.png" width="50" style="margin-right:10px;" alt="로고" />YGH</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item" id="home">
                    <a class="nav-link" href="#intro">Home</a>
                </li>
                <li class="nav-item" id ="interesting">
                    <a class="nav-link" href="#second_back">이 인간이 좋아하는 거</a>
                </li>
                <li class="nav-item" id ="why">
                    <a href="#opa2" class="nav-link" >본 애니들 ㅇㅇ</a>
                </li>
                <li class="nav-item" id="anime">
                    <a class="nav-link" href="#hagaren">그냥 애니 순위</a>
                </li>
                <li class="nav-item" id="steinway">
                    <a class="nav-link" href="#classic">스타인웨이</a>
                </li>
                <li class="nav-item" id="register">
                    <a class="nav-link" href="#itshoni">회원가입</a>
                </li>
            </ul>
            <%
                UserVO user = (UserVO)session.getAttribute("user");
                if(user==null){
            %>
            <button class="btn btn-success my-2 my-sm-0" onclick="location.href='./login.jsp'">로그인</button>
            <%
                } else {
            %>
            <p>사용자 이름: <%=user.getName()%></p>
            <button class="btn btn-danger my-2 my-sm-0" onclick="location.href='/WebClass/bloglogout'">로그아웃</button>
            <%
                }
            %>
        </div>
    </nav>
</div>
<div class="bg_image_1 fontb" id="intro">
    <div class="caption">
        <span class="border">간단한 소개 사이트 입니당!</span>
    </div>
</div>

<div class="bg_2 fontl" id="second_back">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <h1 class="fontb vercenter">뭐하는 사람입니까?</h1>

            </div>
            <div class="col-lg-8">
                <h2 class="fontb">전 말이죠..</h2>
                <p>한국디지털미디어고등학교에 다니는 2학년 5반 24번으로 재학중인 <b>유건희</b>라는 인간입니다.</p>
                <p> </p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <h2>컴퓨터</h2>
                <h2>피아노</h2>
                <h2>애니!</h2>
            </div>
            <div class="col-lg-4">
                <h1 class="fontb vercenter">좋아하는거</h1>
            </div>
        </div>
    </div>
</div>
<div class = "bg_image_2">
    <div class="caption">
        <h1 class="jpfont" style="color: black;">へええええええ</h1>
    </div>
</div>
<div class="bg_2 fontl nav_trans" style="opacity:0" id="opa2">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <table class="table">
                    <thead>
                        <tr><th style="text-align: center;">애니 현황</th></tr>
                    </thead>
                    <tbody>
                    <tr><td>Re: 제로부터 시작하는 이세계 생활 22화 + ova 22개(개당 3분?) + 라이트노벨</td></tr>
                    <tr><td>너의 이름은.(영화)</td></tr>
                    <tr><td>그날 본 꽃의 이름을 우리는 아직 모른다 12화</td></tr>
                    <tr><td>미래일기(만화) 6권</td></tr>
                    <tr><td>클라나드 44화</td></tr>
                    <tr><td>4월은 너의 거짓말 22화</td></tr>
                    <tr><td>논논비요리 11화+11화+ ova 1화</td></tr>
                    <tr><td>목소리의 형태(만화) 7권 + 목소리의 형태 (영화)</td></tr>
                    <tr><td>플라스틱 메모리즈 12화</td></tr>
                    <tr><td>나만이 없는 거리 11화</td></tr>
                    <tr><td>Sword Art Online 1기 25화 – 정주행 중단</td></tr>
                    <tr><td>No Game No Life 중단 (남성향)</td></tr>
                    <tr><td>역시 내 청춘 러브코메디는 잘못됐다. (1,2기) 24화?</td></tr>
                    <tr><td>중2병이라도 사랑이 하고싶어!(1기, 12화) - 중단</td></tr>
                    <tr><td>Steins; Gate – 25화 + 극장판</td></tr>
                    <tr><td>Psycho-Pass 1기 22화 + 2기 11화 + 극장판</td></tr>
                    <tr><td>강철의 연금술사(64화)</td></tr>
                    <tr><td>코드기아스 1기, 2기</td></tr>
                    <tr><td>Angel beats!</td></tr>
                    <tr><td>Fate/Zero</td></tr>
                    <tr><td>Fate/UBW</td></tr>
                    <tr><td>암살교실 1기  2기</td></tr>
                    <tr><td>토라도라!</td></tr>
                    <tr><td>바케모노가타리</td></tr>
                    <tr><td>키즈모노가타리</td></tr>
                    <tr><td>니세모노가타리</td></tr>
                    <tr><td>모노가타리2nd시즌</td></tr>
                    <tr><td>코요미모노가타리</td></tr>
                    <tr><td>오와리모노가타리</td></tr>
                    <tr><td>오와리모노가타리 2nd시즌</td></tr>
                    <tr><td>나만의 히어로 아카데미아</td></tr>
                    <tr><td>빙과</td></tr>


                    </tbody>
                </table>
            </div>
            <div class="col-lg-5">
                <div class="vercenter">
                    <h1 class="fontb">애니를 본건</h1>
                    <h2>으아아아 뭔가 후회돼요</h2>
                    <h2>그래도 추천하고 싶은게 몇개 있습니다만</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="bg_image_3" id="hagaren">
    <div class="caption">
        <h1 class="jpfont" style="color: white;">鋼の錬金術師</h1>
        <h1 class="fontb" style="color: white;">강철의 연금술사</h1>
    </div>
</div>

<div class="bg_2">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="vercenter">
                    <h1 class="fontb">평가</h1>
                </div>
            </div>
            <div class="col-lg-8">
                <p class="fontl">간단히 말해서 명작이다. 깔끔한 전개, 지속적인 극중 긴장감, 흑막의 깊이와 내용 전개
                속도 및 연출 까지 다 좋다.</p>
                <p>방학 킬러로 활약한 애니 ㅇㅇ</p>
                <p>그나마 우려되는 점이 있다면 1화가 지루하다.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="vercenter" style="text-align: center; margin-top:0.5rem;">
                <h1 class="fontb">어 잠깐만요?</h1>
                <p class="fontl">이 이상 얘기하면 위험할 것 같네요.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bg_image_4 nav_trans" id="classic">
    <div class="caption">
        <h1 class="fontb" style="color:white;">STEINWAY & SONS</h1>
    </div>
</div>
<div class="bg_2 fontl">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <h1 class="fontb">어썸한 억대 그랜드 피아노</h1>
            </div>
            <div class="col-lg-8">
                <h2 class="fontb">갖고싶다.. 스타인웨이</h2>
                <p>정말 어썸한 피아노입니다. 저거.. 와... 멋져어...</p>
                <p>아아... 쇼팽을 치면 얼마나 어썸할까요 우와앙..</p>
            </div>
        </div>

        <div class="row" style="margin-top: 150px; text-align: center;">
            <div class="col-lg-12">
                <h1 class="fontb">이쯤에서 끝낼레요 ㅇㅇ</h1>
                <p>이제 슬슬 끝낼레요.. ㅠㅠ 노가다 심하지만 프론트 좋네요 짜기 ㅇㅇ 어썸한 모달로 회원가입을 하시면 됩니다.</p>

            </div>
        </div>
        <div >

        </div>
    </div>
</div>
<div class="bg_image_5" id="itshoni">
    <div class="caption fontb">
        <h1 class="jpfont">一緒にしてください。</h1>
            <form class="reg_width" id="form_submit">
                <div class="jpfont">
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="Grade" id="grade1" value="1" checked>
                        1学年
                    </label>
                    <label class="form-check-label">
                        <input class="form-check-input" type="radio" name="Grade" id="grade2" value="2">
                        2学年
                    </label>
                    <label class="form-check-label">
                    <input class="form-check-input" type="radio" name="Grade" id="grade3" value="3">
                    3学年
                </label>
                <select class="form-control jpfont" id="selectBox">
                    <option value="1" selected>1組</option>
                    <option value="2">2組</option>
                    <option value="3">3組</option>
                    <option value="4">4組</option>
                    <option value="5">5組</option>
                    <option value="6">6組</option>
                </select>
                <input type="text" placeholder="名前" class="form-control" id="namae" required>
                    <input type="text" placeholder="番号" class="form-control" id="bango" required>
                </div>
                <input type="submit" class="btn btn-lg btn-primary" value="회원 가입!">
            </form>

    </div>
</div>

<script src="../js/blog.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>