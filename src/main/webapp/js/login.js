
$(document).ready(function() {
    //判断登录状态
    /*callAjax(baseUrlCjh()+"isUserLoggedIn/","get",{},function(data){
        var obj= eval(data);
        if ( obj.loggedIn == '1' ) {
            showPC();
        } else {
            hidePC();
        }
    });*/

    //登录
    $('#login-btn').click(function() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;
        if ( !username && !password ){
            $("#login-warning").html('请填写登录信息!');
        }
        else if ( !username ) {
            $("#login-warning").html('请填写手机号或身份证号!');
        }
        else if ( !password ) {
            $("#login-warning").html('请填写密码!');
        }
        else {
            $.ajax({
                type: "POST",
                url:  "/user/login",
                data: {phoneNumber:username,password:password},
                success:function(data) {
                    if (typeof data == "string") {
                        data = JSON.parse(data);
                    }
                    if (data.status == 1000) {
                        location.reload();
                    }else if(data.status==1001){
                        alert("参数为空");
                    }else{
                        alert("手机号与密码不匹配！");
                    }
                },

            });
        }
    });

    //退出登录
    /*$('#nav-logout').click(function() {
        callAjax(baseUrlCjh()+"logout/","get",{},function(data){
            var obj= eval(data);
            if ( obj.message == '已登出') {

                alert('退出登录成功！');
            }
        });
    });*/
});


//显示个人中心和退出
function showPC() {
    $('#nav-login').hide();
    $('#nav-register').hide();
    $('#nav-pc').show();
    $('#nav-logout').show();
}

//隐藏个人中心和退出
function hidePC() {
    $('#nav-login').show();
    $('#nav-register').show();
    $('#nav-pc').hide();
    $('#nav-logout').hide();
}

