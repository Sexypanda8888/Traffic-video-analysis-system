    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>登录</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/sign-up-login.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/inputEffect.css" />
    <link rel="stylesheet" href="css/tooltips.css" />
    <link rel="stylesheet" href="css/spop.min.css" />

    <script type="text/javascript" src="jquery-1.8.3.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/snow.js"></script>
    <script src="js/jquery.pure.tooltips.js"></script>
    <script src="js/spop.min.js"></script>
    <script>
        (function() {
            // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
            if (!String.prototype.trim) {
                (function() {
                    // Make sure we trim BOM and NBSP
                    var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
                    String.prototype.trim = function() {
                        return this.replace(rtrim, '');
                    };
                })();
            }

            [].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
                // in case the input is already filled..
                if( inputEl.value.trim() !== '' ) {
                    classie.add( inputEl.parentNode, 'input--filled' );
                }

                // events:
                inputEl.addEventListener( 'focus', onInputFocus );
                inputEl.addEventListener( 'blur', onInputBlur );
            } );

            function onInputFocus( ev ) {
                classie.add( ev.target.parentNode, 'input--filled' );
            }

            function onInputBlur( ev ) {
                if( ev.target.value.trim() === '' ) {
                    classie.remove( ev.target.parentNode, 'input--filled' );
                }
            }
        })();

        $(function() {
            $('#login #login-password').focus(function() {
                $('.login-owl').addClass('password');
            }).blur(function() {
                $('.login-owl').removeClass('password');
            });
            $('#login #register-password').focus(function() {
                $('.register-owl').addClass('password');
            }).blur(function() {
                $('.register-owl').removeClass('password');
            });
            $('#login #register-repassword').focus(function() {
                $('.register-owl').addClass('password');
            }).blur(function() {
                $('.register-owl').removeClass('password');
            });
            $('#login #forget-password').focus(function() {
                $('.forget-owl').addClass('password');
            }).blur(function() {
                $('.forget-owl').removeClass('password');
            });
        });

        function goto_register(){
            $("#register-username").val("");
            $("#register-password").val("");
            $("#register-repassword").val("");
            $("#register-code").val("");
            $("#tab-2").prop("checked",true);
        }

        function goto_login(){
            $("#login-username").val("");
            $("#login-password").val("");
            $("#tab-1").prop("checked",true);
        }

        function goto_forget(){
            $("#forget-username").val("");
            $("#forget-password").val("");
            $("#forget-code").val("");
            $("#tab-3").prop("checked",true);
        }

        //登录
        function login(){
            var username = $("#login-username").val(),
                password = $("#login-password").val(),
                validatecode = null,
                flag = false;
            if(username == "" && password == ""){
               alert("用户名和密码不能为空");
            }
            else if(password == ""){
                $.pt({
                    target: $("#login-password"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"密码不能为空"
                });
            }
            else if(username == ""){
                $.pt({
                    target: $("#login-username"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"用户名不能为空"
                });
            }
            //判断用户名密码是否正确
            else {
                $.post("../BigHomework_war_exploded/user_center_servlet_action", {
                    action: "login",
                    username: username,
                    password: password
                }, function (json) {
                    console.log("前端收到：" + JSON.stringify(json));
                    if (json.redirect_url != null) {
                        window.location.href = json.redirect_url;
                    } else {
                        alert(json.wrong_code);
                    }
                })
            }
        }

        //注册
        function register(){
            var username = $("#register-username").val(),
                password = $("#register-password").val(),
                repassword = $("#register-repassword").val(),
                email = $("#register-email").val(),
                id = $("#register-id").val(),
                flag = false,
                validatecode = null;

            //判断用户名密码是否为空
            if(username == "" && password == "" && email=="" && id==""){
                alert("ID、用户名、密码、邮箱不能为空");
                return;
            }
            else if(password == ""){
                $.pt({
                    target: $("#register-password"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"密码不能为空"
                });
                return;
            }
            else if(username == ""){
                $.pt({
                    target: $("#register-username"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"用户名不能为空"
                });
                return;
            }
            else if (email==""){
                $.pt({
                    target: $("#register-email"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"邮箱不能为空"
                });
                return;
            }
            else if(id==""){
                $.pt({
                    target: $("#register-id"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"ID不能为空"
                });
                return;
            }
            else{
                if(password != repassword){
                    $.pt({
                        target: $("#register-repassword"),
                        position: 'r',
                        align: 't',
                        width: 'auto',
                        height: 'auto',
                        content:"两次输入的密码不一致"
                    });
                    return;
                }
                else{
                    $.post("../BigHomework_war_exploded/user_center_servlet_action",{
                        action:"verify_register_name_email",
                        username:username,
                        email:email
                    },function (json) {
                        if(json.name_exist){
                            alert("用户名已注册，请重新输入！");
                            return;
                        }
                        else if(json.email_exist){
                            alert("邮箱已注册，请重新输入！");
                            return;
                        }
                        else{
                            //注册
                            $.post("../BigHomework_war_exploded/user_center_servlet_action", {
                                action: "insert_user_information",
                                id:id,
                                username: username,
                                email:email,
                                password: password
                            }, function (json) {
                                if(json.insert_ok){
                                    spop({
                                        template: '<h4 class="spop-title">注册成功</h4>即将于3秒后返回登录',
                                        position: 'top-center',
                                        style: 'success',
                                        autoclose: 3000,
                                        onOpen : function(){
                                            var second = 2;
                                            var showPop = setInterval(function(){
                                                if(second == 0){
                                                    clearInterval(showPop);
                                                }
                                                $('.spop-body').html('<h4 class="spop-title">注册成功</h4>即将于'+second+'秒后返回登录');
                                                second--;
                                            },1000);
                                        },
                                        onClose : function(){
                                            goto_login();
                                        }
                                    });
                                }
                            })
                        }
                    },"json")
                }
            }
        }

        //重置密码
        function forget(){
            var username = $("#forget-username").val(),
                password = $("#forget-password").val(),
                email = $("#forget-email").val(),
                flag = false,
                validatecode = null;
            //判断用户名密码是否为空
            if(username == ""){
                $.pt({
                    target: $("#forget-username"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"用户名不能为空"
                });
                return;
            }
            else if(password == ""){
                $.pt({
                    target: $("#forget-password"),
                    position: 'r',
                    align: 't',
                    width: 'auto',
                    height: 'auto',
                    content:"密码不能为空"
                });
                flag = true;
            }
            else{
                $.post("../BigHomework_war_exploded/user_center_servlet_action",{
                    action:"verify_register_name_email",
                    username:username,
                    email:email
                },function (json) {
                        if(!json.name_exist){
                            alert("用户名不存在，请重新输入！");
                            return;
                        }
                        else{
                            //重置密码
                            if(json.username_email_exist){
                                $.post("../BigHomework_war_exploded/user_center_servlet_action", {
                                    action: "reset_user_password",
                                    username: username,
                                    email:email,
                                    password: password
                                }, function (json) {
                                    if(json.reset_ok){
                                        spop({
                                            template: '<h4 class="spop-title">重置密码成功</h4>即将于3秒后返回登录',
                                            position: 'top-center',
                                            style: 'success',
                                            autoclose: 3000,
                                            onOpen : function(){
                                                var second = 2;
                                                var showPop = setInterval(function(){
                                                    if(second == 0){
                                                        clearInterval(showPop);
                                                    }
                                                    $('.spop-body').html('<h4 class="spop-title">重置密码成功</h4>即将于'+second+'秒后返回登录');
                                                    second--;
                                                },1000);
                                            },
                                            onClose : function(){
                                                goto_login();
                                            }
                                        });
                                    }

                                });
                            }
                            else{
                                alert("用户名输入与邮箱不匹配，请重新输入！")
                            }
                        }
            });
        }
            //检查用户名是否存在


            //调后台方法

            if(flag){
                return false;
            }else{//重置密码

                return false;
            }
        }




    </script>
    <style type="text/css">
        html{width: 100%; height: 100%;}

        body{

            background-repeat: no-repeat;

            background-position: center center #2D0F0F;

            background-color: #00BDDC;

            background-image: url(images/snow.jpg);

            background-size: 100% 100%;

        }

        .snow-container { position: fixed; top: 0; left: 0; width: 100%; height: 100%; pointer-events: none; z-index: 100001; }

    </style>
</head>
<body>
<!-- 雪花背景 -->
<div class="snow-container"></div>
<!-- 登录控件 -->
<div id="login">
    <input id="tab-1" type="radio" name="tab" class="sign-in hidden" checked />
    <input id="tab-2" type="radio" name="tab" class="sign-up hidden" />
    <input id="tab-3" type="radio" name="tab" class="sign-out hidden" />
    <div class="wrapper">
        <!-- 登录页面 -->
        <div class="login sign-in-htm">
            <form class="container offset1 loginform">
                <!-- 猫头鹰控件 -->
                <div id="owl-login" class="login-owl">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad input-container">
                    <section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="login-username"
                                       autocomplete="off" placeholder="请输入用户名" tabindex="1" maxlength="15" />
								<label class="input__label input__label--hideo" for="login-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="login-password" placeholder="请输入密码" tabindex="2" maxlength="15"/>
								<label class="input__label input__label--hideo" for="login-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                    </section>
                </div>
                <div class="form-actions">
                    <a tabindex="4" class="btn pull-left btn-link text-muted" onClick="goto_forget()">忘记密码?</a>
                    <a tabindex="5" class="btn btn-link text-muted" onClick="goto_register()">注册</a>
                    <input class="btn btn-primary" type="button" tabindex="3" onClick="login()" value="登录"
                           style="color:white;"/>
                </div>
            </form>
        </div>

        <!-- 忘记密码页面 -->
        <div class="login sign-out-htm">
            <form action="#" method="post" class="container offset1 loginform">
                <!-- 猫头鹰控件 -->
                <div id="owl-login" class="forget-owl">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad input-container">
                    <section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-username" autocomplete="off" placeholder="请输入用户名"/>
								<label class="input__label input__label--hideo" for="forget-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-email" autocomplete="off" placeholder="请输入注册邮箱"/>
								<label class="input__label input__label--hideo" for="forget-email">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="forget-password" placeholder="请重置密码" />
								<label class="input__label input__label--hideo" for="forget-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                    </section>
                </div>
                <div class="form-actions">
                    <a class="btn pull-left btn-link text-muted" onClick="goto_login()">返回登录</a>
                    <input class="btn btn-primary" type="button" onClick="forget()" value="重置密码"
                           style="color:white;"/>
                </div>
            </form>
        </div>

        <!-- 注册页面 -->
        <div class="login sign-up-htm">
            <form action="#" method="post" class="container offset1 loginform">
                <!-- 猫头鹰控件 -->
                <div id="owl-login" class="register-owl">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad input-container">
                    <section class="content">
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-id"
                                       autocomplete="off" placeholder="请输入ID号" maxlength="30"/>
								<label class="input__label input__label--hideo" for="register-id">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-username"
                                       autocomplete="off" placeholder="请输入用户名" maxlength="15"/>
								<label class="input__label input__label--hideo" for="register-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-email"
                                       autocomplete="off" placeholder="请输入邮箱" maxlength="30"/>
								<label class="input__label input__label--hideo" for="register-email">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-password" placeholder="请输入密码" maxlength="15"/>
								<label class="input__label input__label--hideo" for="register-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                        <span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-repassword" placeholder="请确认密码" maxlength="15"/>
								<label class="input__label input__label--hideo" for="register-repassword">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
                    </section>
                </div>
                <div class="form-actions">
                    <a class="btn pull-left btn-link text-muted" onClick="goto_login()">返回登录</a>
                    <input class="btn btn-primary" type="button" onClick="register()" value="注册"
                           style="color:white;"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>