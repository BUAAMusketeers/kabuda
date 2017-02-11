<%@ page import="com.kabuda.entity.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%
    User user = (User)request.getSession().getAttribute("user");
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>卡布达 | 车辆详情</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/cityselect.css">
    <link rel="stylesheet" href="css/vehicle_detail.css">
    <link href="images/favicon.ico" rel="shortcut icon" />
</head>

<body>
<!--顶部-->
<jsp:include page="base/head.jsp"></jsp:include>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="#">首页</a></li>
        <li><a href="buyCar.jsp">买车</a></li>
        <%--<li><a href="carManage.jsp">车辆信息</a></li>--%>
        <li class="active">车辆信息</li>
    </ol>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="det-sumleft slideshow">
                <div class="dt-sumpic" data-role="imgContainer">
                    <a href="javascript:void(0);" data-role="imgArrow" class="arrow-prew prev"></a>
                    <a href="javascript:void(0);" data-role="imgArrow" class="arrow-next next"></a>
                    <p class="amount">
                        <i class="fc-org" data-role="currentNumber">1</i>/30        </p>
                    <input type="hidden" data-role="navbtn" data-maskname="mask2" id="js-login">
                    <input type="hidden" data-role="navbtn" data-maskname="mask3" id="skipKind" value="1">
                    <ul class="det-picside">
                        <li data-role="img" style="display: block;">

                            <!-- 车源售卖状态显示 -->

                            <img src="https://image1.guazistatic.com/qn170112101017c8a885e19538a00064791549925bc54e.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img src="https://image1.guazistatic.com/qn170112101017fb59fb26005f0476c0653d8e660f9673.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none;">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017bb2af7378a95ffd52f2192df433f1416.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn170112101017bb2af7378a95ffd52f2192df433f1416.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none;">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101709a769f12b8b22869a20eae6e02fe029.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn17011210101709a769f12b8b22869a20eae6e02fe029.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none;">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101745da74fa893e787085bcb50ec863b51d.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn17011210101745da74fa893e787085bcb50ec863b51d.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017235dff7e901a45cf0cf8c422c8dba66d.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn170112101017235dff7e901a45cf0cf8c422c8dba66d.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017a1e721c316aa40c77881d58de9242cf3.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101748d05c48219854caedf95888c9f45c98.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn1701121010177745a51c889d10316df4a97ad1a82e37.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017f7ead7783fd02ce84ac0eaad61443fbe.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101765405000ce447e4ca197e0e1d72acb48.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn17011210101765405000ce447e4ca197e0e1d72acb48.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none;">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101737948ab4ce2a58ea85e6048fcf52fb87.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn17011210101737948ab4ce2a58ea85e6048fcf52fb87.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017436144d2bf22f8136d93ff2101ed1b88.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版" src="https://image1.guazistatic.com/qn170112101017436144d2bf22f8136d93ff2101ed1b88.jpg?imageView2/1/w/600/h/400/q/88">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101782847d04790498d7b92e207798d15185.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017eb427600613a74945de347a176673bdc.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017e48ef0d3685c921e3935d8c64a10bdda.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017a9ca29185627089e40993de665b8ffc0.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017903f5d861f95f2e3273a09ca26c2dfe0.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017577b4f593a2d02222a3112994c1e44b4.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017dd133efff11802720f54b9f68fb15fc1.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017ead01eb98580db86eba77f43cd14d21d.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017afce47a5933894d9e5ac437ca9d757c1.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017b366af41e1a41790630724140e8839e7.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017f0dcf3992ffa58928c23dc263af8ecf7.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn1701121010176f81898cfe9ebefbe74745d7763e11bc.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101710940b64b18be9dcdeae41c2f44c6f78.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn1701121010170d70fb346cc0a069c42ad87d65aa04b6.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017a211a81e3cbebc479fdbabf57f636ac5.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn170112101017730ac2b9130fd172e4a6020ed6af1188.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                        <li data-role="img" style="display: none">

                            <!-- 车源售卖状态显示 -->

                            <img data-src="https://image1.guazistatic.com/qn17011210101747856e9fd9cb8391a6a9338d344e90fd.jpg?imageView2/1/w/600/h/400/q/88" alt="日产阳光 2014款 1.5XE 手动舒适版">
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="vehicle col-md-6">
            <div >
                <p class="title col-xs-12">
                    <span class="vehicle_name col-xs-8" name="title">斗山DH300LC-7挖掘机</span>
                    <span class="vehicle_update col-xs-3 col-xs-offset-1" name="time">01-14更新</span>
                </p>

                <p class="price">
                    <span class="pric_number" name="price">¥38万</span>
                    <span class="pric_number col-xs-3 col-xs-offset-1" style="float: right;" name="tonnage">10吨</span>
                </p>

                <div class="device_inf">
                    <div class="d_inf">
                        <input type="hidden" id="equipmentCityId" value="45074">
                        <div class="ecolor" name="location">北京&nbsp;北京市</div>
                        <div class="sec_div">停放</div>
                    </div>
                    <div class="d_inf">
                        <div class="ecolor" name="used_hours">6100小时</div>
                        <div class="sec_div">小时</div>
                    </div>
                    <div class="d_inf last_d_inf">
                        <div class="ecolor" name="vehicle_age">2011年</div>
                        <div class="sec_div">年限</div>
                    </div>
                </div>

                <div class="row vehicle-info">
                    <div class="col-xs-6">
                        <span class="col-xs-5 col-xs-offset-1">设备类别:</span>
                        <span class="col-xs-6" name="model">挖掘机</span>
                    </div>
                    <div class="col-xs-6 ">
                        <span class="col-xs-5 col-xs-offset-1">设备品牌:</span>
                        <span class="col-xs-6" name="grand">斗山</span>
                    </div>
                    <div class="col-xs-6 ">
                        <span class="col-xs-5 col-xs-offset-1">联系人:</span>
                        <span class="col-xs-6" name="contact">张先生</span>
                    </div>
                    <div class="col-xs-6 ">
                        <span class="col-xs-5 col-xs-offset-1">联系电话:</span>
                        <span class="col-xs-6" name="contact_phone">12343213</span>
                    </div>
                    <div class="col-xs-12 ">
                        <span class="col-xs-10" style="margin-left: 20px">车主描述:</span>
                        <p class="col-xs-12" name="description" style="margin-left: 20px">12343213</p>
                    </div>
                </div>
        </div>
        </div>
        <h4>
            <i class="deck"></i>
            车辆照片
        </h4>
        <div class="col-md-6">
            <img width="100%"  class="js-lazy-load" src="https://image1.guazistatic.com/qn17010812192624594c64f12a9923e7b4d2c9f1be6293.jpg?imageView2/1/w/620/h/430/q/88" data-original="https://image1.guazistatic.com/qn17010812192624594c64f12a9923e7b4d2c9f1be6293.jpg?imageView2/1/w/620/h/430/q/88">
        </div>
        <div class="col-md-6">
            <img width="100%" class="js-lazy-load" src="https://image1.guazistatic.com/qn17010812192624594c64f12a9923e7b4d2c9f1be6293.jpg?imageView2/1/w/620/h/430/q/88" data-original="https://image1.guazistatic.com/qn17010812192624594c64f12a9923e7b4d2c9f1be6293.jpg?imageView2/1/w/620/h/430/q/88">
        </div>
</div>
    
</div>

<!--底部-->
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/cityselect.js"></script>
<script >
    $(function(){
        $(".dt-sumpic").hover(function () {
            $(".arrow-prew").show();
            $(".arrow-next").show();
         },function () {
            console.log($(".arrow-next").is(":focus"));
            $(".arrow-prew").hide();
            $(".arrow-next").hide();
        });
        var now=0;
        var sum=30;
        $(".arrow-next").click(function(){
            $(".det-picside li:eq("+now+")").hide();
            now=(now+1)%sum;
            $(".fc-org").text(now+1);
            $(".det-picside li:eq("+now+")").show();
            console.log(now);
        });
        $(".arrow-prew").click(function(){
            $(".det-picside li:eq("+now+")").hide();
            now=(now+29)%sum;
            $(".fc-org").text(now+1);
            $(".det-picside li:eq("+now+")").show();
            console.log(now);
        });

        //初始化数据
        function init(){
            var id = getQueryString("vehicleId");
            $.ajax({
                type: "post",
                url: "/car/getCarInfo",
                data:{"id":id},
                success: function(data){
                    if (typeof data == "string") {
                        data = JSON.parse(data);
                    }
                    if(data.status==1000) {


                    }

                },
                error:function(error){
                    alert("connection error!");
                }
            });
        }

    });
</script>
</body>
</html>