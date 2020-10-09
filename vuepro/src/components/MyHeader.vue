<template>
    <div id="header">
        <div class="header-top">
            <div class="wrap clearfix">
                <!-- 顶部图标 -->
                <div class="logo fl" style="opacity:1;">
                    <a href="/img/header.png"></a>
                </div>
                <!-- 顶部按钮 -->
                <ul class="nav fr">
                    <li class="login">
                        <router-link class="loginBtn" to="/login">登录</router-link>
                        <router-link class="registerBtn" to="/register">注册</router-link>
                    </li>
                    <li class="line"></li>
                    <li class="liback">
                        <a class="a1" href="">购物车</a>
                        <div class="cart fdDiv hide">
                            <div class="shop" id="nullCar">
                                <a href="">你的购物车暂时没有商品...</a>
                            </div>
                            <div class="cart-list hide"></div>
                            <a class="add-shop" href="">快去抢购良品商品吧!</a>
                        </div>
                    </li>
                    <li class="line"></li>
                    <li class="posr liback">
                        <a class="a1" href="">消息</a>
                         <div class="hide fdDiv msg user-m">
                            <a href="">
                                <span>动态<small>0</small></span>
                            </a>
                            <a href="">
                                <span>评论<small>0</small></span>
                            </a>
                            <a href="">
                                <span>私信<small>0</small></span>
                            </a>
                            <a href="">
                                <span>粉丝<small>0</small></span>
                            </a>
                            <a href="">
                                <span>喜欢<small>0</small></span>
                            </a>
                            <a href="">
                                <span>通知<small>0</small></span>
                            </a>
                        </div> 
                    </li>
                    <li class="line"></li>
                    <li>
                        <a class="a1" href="">添加良品</a>
                    </li>
                    <li>
                        <a class="a1" href="">资质证照/协议规则</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="subMenu clearfix">
            <ul class="fl">
                <li class="homepage">
                    <a href="" class="underline">首页</a>
                </li>
                <li>
                    <a href="" class="underline">商店</a>
                    <div class="submHide">
                        <div class="storeLeft fl">
                            <dl style="width:107px">
                                <router-link to="/list/1">
                                    <img src="../assets/header/23687.png" style="width:40px;height:40px">
                                    <div class="ctxt">家居</div>
                                </router-link>
                            </dl>
                            <dl style="width:107px">
                                <img src="../assets/header/23686.png" style="width:40px;height:40px">
                                <div class="ctxt">文具</div>
                            </dl>
                            <dl style="width:107px">
                                <img src="../assets/header/23683.png" style="width:40px;height:40px">
                                <div class="ctxt">数码</div>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="" class="underline">杂志</a>
                    <div class="submHide magazine">
                        <a href="">趣物</a>
                        <a href="">数码</a>
                        <a href="">汽车</a>
                        <a href="">文化</a>
                        <a href="">时尚</a>
                        <a href="">美食</a>
                        <a href="">建筑</a>
                        <a href="">空间</a>
                        <a href="">圈子</a>
                        <a href="">清单</a>
                        <a href="">活动</a>
                        <a href="">视频</a>
                    </div>
                </li>
                <li>
                    <a href="" class="underline">分享</a>
                    <div class="submHide magazine">
                        <a href="">男士</a>
                        <a href="">家居</a>
                        <a href="">数码</a>
                        <a href="">工具</a>
                        <a href="">玩具</a>
                        <a href="">美容</a>
                        <a href="">孩子</a>
                        <a href="">宠物</a>
                        <a href="">饮食</a>
                        <a href="">运动</a>
                        <a href="">文化</a>
                        <a href="">女士</a>
                    </div>
                </li>
                <li class="superman">
                    <a href="" class="underline">达人</a>
                </li>
            </ul>
        </div>
    </div>
</template>

<style>
#header{
    width: 100%;height: 105px;
}
#header>.header-top{
    width: 100%;height: 56px;
    background-color: #25292e;
    line-height: 56px;
}
#header .wrap{
    width: 1000px;
    margin: 0 auto;
}
#header .clearfix{
    display: block;
}
#header .clearfix:before{
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
#header .header-top .logo{
    width: 95px;height: 38px;
    margin: 9px 0;
}
#header .header-top .fl{
    float: left;
}
#header .header-top .logo a{
    width: 95px;height: 38px;
    display: block;
    background: url(../assets/icon.png) no-repeat 0px 0px;
}
/*按钮css*/
#header .header-top ul{
    height: 56px;
    position: relative;
    z-index: 10;
    list-style: none;
}
#header .header-top .fr{
    float: right;
}
#header .header-top ul li a{
    text-decoration: none;
    display: inline-block;
}
#header .header-top .fr .login a,.header-top .a1:hover{
    color: #ccc;
    text-decoration: none;
}
#header .header-top ul li{
    font-size: 12px;
    float: left;
    height: 56px;
    line-height: 56px;
}
#header .header-top .loginBtn{
    margin-right: 8px;
}
#header .header-top .registerBtn{
    padding-right: 15px;
}
#header .header-top .line{
    width: 1px;
    height: 8px;
    margin-top: 25px;
    background-color: #525961;
}
#header .header-top .a1{
    display: inline-block;
    color: #666;
    padding: 0 15px;
    letter-spacing: 1.1px;
    text-decoration: none;
}
/* 购物车隐藏div */
#header .header-top ul li .fdDiv{
    position: absolute;
    top: 56px;
    background: #292f34;
    z-index: 1000;
}
#header .header-top ul li .cart{
    width: 320px;
    right: 0;
    letter-spacing: 1.1px;
}
#header .hide{
    display: none;
} 
#header .header-top .liback:hover div{
    display: block;
}
#header .header-top .shop{
    height: 70px;
    line-height: 70px;
    padding: 0 20px;
    font-size: 13px;
    text-align: center;
    overflow: hidden;
}
#header .header-top .shop a{
    color: #9d9d9d;
}
#header .header-top .cart-list{
    padding: 0;
    width: 320px;
    background: none;
}
#header .header-top .add-shop{
    display: block;
    width: 100%;
    height: 50px;
    line-height: 50px;
    background-color: #7dbfde;
    text-align: center;
    font-size: 14px;
    color: #fff;
}
#header .header-top .msg{
    left: auto;
    right: -69px;
}
#header .header-top .user-m{
    width: 190px;
}
#header .header-top .posr{
    position: relative;
}
#header .header-top .user-m a{
    display: block;
    width: 160px;
    height: 44px;
    padding: 0 15px;
    line-height: 44px;
    background: #292f34;
    cursor: pointer;
    text-decoration: none;
    color: #878787;
}
#header .header-top .user-m span{
    display: inline-block;
    width: 100%;
    height: 44px;
    line-height: 44px;
    padding: 0;
    border-bottom: 1px solid #3f4449;
    color: #ccc;
    font-size: 12px;
    letter-spacing: 1.5px;
}
#header .header-top .msg span{
    position: relative;
    left: 0;
}
#header .header-top .msg small{
    position: absolute;
    right: 0;
    top: 1px;
}
/* 分类导航 */
#header .subMenu {
    width: 1000px;
    margin: 0 auto;
    position: relative;
    z-index: 9;
    height: 45px;
    border-bottom: 4px solid #ededed;
    background: #fff;
}
#header ul {
    list-style: none;
}
#header .subMenu ul {
    width: 734px;
    height: 49px;
}
#header .fl {
    float: left;
}
#header .subMenu ul li {
    float: left;
    width: 164px;
    height: 45px;
    line-height: 46px;
    cursor: pointer;
}
#header .subMenu ul li.homepage, #header .subMenu ul li.homepage a{
    width: 118px;
    text-align: left;
}
#header .subMenu ul li>a {
    display: block;
    width: 121px;
    height: 45px;
    line-height: 46px;
    color: #333;
    font-size: 15px;
    text-align: center;
    border-bottom: #ededed solid 4px;
}
#header .subMenu ul li.superman, #header .subMenu ul li.superman a {
    width: 121px;
}
#header .subMenu a {
    text-decoration: none;
    color: #878787;
}
#header .subMenu .fl li:hover .underline{
    border-bottom: #000 solid 4px;
}
#header .submHide {
    display: none;
    position: absolute;
    left: 0;
    top: 49px;
    width: 1000px;
    letter-spacing: 1px;
    background: #fff;
    z-index: 999;
}
#header .storeLeft dl {
    float: left;
    width: 122px;
}
#header .subMenu li:nth-child(2):hover div{
    display: block;
}
#header .magazine {
    width: 1000px;
    padding: 31px 0 40px;
    text-align: left;
}
#header .magazine a {
    display: inline-block;
    line-height: 32px;
    margin-right: 60px;
    color: #666;
    font-size: 12px;
    font-weight: normal;
}
#header .subMenu li:nth-child(3):hover div{
    display: block;
}
#header .subMenu li:nth-child(4):hover div{
    display: block;
}
#header .ctxt{
    color: #4d4d4d;
    text-align: left;
    font-weight: bolder;
    height: 20px;
    line-height: 20px;
    margin-left: 5px;
}
</style>

<script>
export default {
    
}
</script>