<template>
    <div id="myfooter">
        <div id="service">
            <a>
                <p class="hand" style="left:0px;"></p>
            </a>
            <div class="slogen">
                <dl class="fore1">
                    <dt></dt>
                    <dd>
                        <p class="chinesetop">全球精品</p>
                        <p class="english">Global Selections</p>
                    </dd>
                    <p class="clr"></p>
                </dl>
                <dl class="fore2">
                    <dt></dt>
                    <dd>
                        <p class="chinesetop">正品保证</p>
                        <p class="english">Authenticity Guaranteed</p>
                    </dd>
                    <p class="clr"></p>
                </dl>
                <dl class="fore3">
                    <dt></dt>
                    <dd>
                        <p class="chinesetop">全场包邮</p>
                        <p class="english">Free Delivery</p>
                    </dd>
                    <p class="clr"></p>
                </dl>
                <dl class="fore4">
                    <dt></dt>
                    <dd>
                        <p class="chinesetop phonehm"></p>
                        <p class="english">工作日 09:00-18:00</p>
                    </dd>
                    <p class="clr"></p>
                </dl>
            </div>
        </div>
        <div id="footer" style="height:250px;">
            <div class="wrap">
                <div class="footLeft fl">
                    <a style="display:block;height:44px;width:196px;" href="">
                        <div class="download">
                            <p class="iPhone">
                                <span class="numLeFont">iPhone Android</span>
                            </p>
                            <p class="client-down">客户端下载</p>
                        </div>
                    </a>
                    <div class="friendly">
                        <p class="toplink">
                            <a href="" class="first">关于良仓</a>
                            <a href="">服务协议</a>
                            <a href="">隐私保护政策</a>
                            <a href="">使用指南</a>
                            <a href="">联系我们</a>
                            <a href="">加入我们</a>
                            <a href="">友情链接</a>
                            <a href="">私信良仓</a>
                        </p>
                        <p>
                            <span>@</span>
                            &nbsp;2013-2019 北京良仓文化传播有限公司版权所有&nbsp;
                        </p>
                        <p>  公司名称：北京良仓文化传播有限公司  电话：010-58696733  </p>
                        <p>  公司地址：北京朝阳区百子湾路32号6号楼1层60号.  </p>
                        <p>  社会信用统一代码：91110105059231575L  食品许可证：JY11105160159557  </p>
                        <p>  图书证名称：中华人民共和国出版物经营许可证  图书证编号：新出发京零 字第 朝 150051 号  </p>
                        <p>
                            <a href="" class="first">
                                <span>京</span>
                                <span>ICP</span>
                                备
                                <span>13010677</span>
                                号
                                <span>-1</span>
                            </a>
                             京公网安备
                             <span>11010502025627</span>
                        </p>
                    </div>
                </div>
                <div class="footRight text-r fr">
                    <div class="commun">
                        <ul>
                            <li><a href="" class="douban" style="opacity:0.2;"></a></li>
                            <li><a href="" class="sina" style="opacity:0.2;"></a></li>
                            <li><a href="" class="wechat" style="opacity:0.2;"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style>
#myfooter a{
    text-decoration: none;
    color: #878787;
}
#myfooter>#service{
    padding: 51px 0 78px;
    width: 100%;
    min-width: 1000px;
    border-top: #ededed 1px solid;
    background: #fbfbfe;
    margin: 90px auto 0;
}
#myfooter>#service>a{
    display: block;
    position: relative;
    margin: 0 auto;
    padding-left: 45px;
    width: 177px;
    height: 16px;
    background: url(../assets/icon.png) no-repeat;
    background-position: 45px -417px;
}
#myfooter>#service>a>.hand{
    position: absolute;
    top: 0px;
    width: 27px;
    height: 15px;
    overflow: hidden;
    background: url(../assets/icon.png) no-repeat;
    background-position: -173px -356px;
}
#myfooter>#service>.slogen{
    padding-top: 42px;
    margin: 0 auto;
    width: 1000px;
    overflow: hidden;
}
#myfooter dl{
    list-style: none;
    list-style-type: none;
}
#myfooter .slogen dl dt {
    float: left;
    height: 60px;
    background: url(../assets/icon.png) no-repeat;
}
#myfooter .slogen dl.fore1 dt {
    width: 56px;
    background-position: 0 -355px;
}
#myfooter .slogen dd .chinesetop {
    width: 100%;
    height: 24px;
    line-height: 24px;
    overflow: hidden;
    font-size: 14px;
    color: #737373;
    text-align: left;
}
#myfooter .slogen dd .english {
    line-height: 22px;
    color: #ccc;
    font-size: 12px ;
}
#myfooter .clr {
    display: block;
    overflow: hidden;
    clear: both;
    height: 0;
    line-height: 0;
    font-size: 0;
}
#myfooter .slogen dl.fore2 dt {
    width: 45px;
    background-position: -153px -217px;
}
#myfooter .slogen dl.fore3 dt {
    width: 55px;
    background-position: -57px -353px;
}
#myfooter .slogen dl.fore4 dt {
    width: 57px; 
    background-position: -114px -353px;
    background-repeat: no-repeat;
}
#myfooter .slogen dl{
    float: left;
}
#myfooter .slogen dd {
    float: left;
    padding: 9px 0 0 20px;
    letter-spacing: 1.2px;
    word-break: break-all;
}
#myfooter .slogen dl.fore1 dd {
    width: 185px;
}
#myfooter .slogen dl.fore2 dd {
    width: 207px;
}
#myfooter .slogen dl.fore3 dd {
    width: 177px;
}
#myfooter .slogen dl.fore4 dd {
    width: 138px;
}
#myfooter .slogen dl.fore4 dd .phonehm {
    background: url(../assets/icon.png) no-repeat;
    background-position: 0 -434px;
    width: 117px;
}
/* 底部footer css*/
#myfooter #footer {
    border-top: #25292e 1px solid;
    margin: 0 auto;
    width: 100%;
    min-width: 1000px;
    height: 192px;
    background: #25292e;
    color: #5c5c5c;
}
#footer .wrap {
    width: 1000px;
    margin: 0 auto;
}
#myfooter #footer .footLeft {
    width: 800px;
    padding-top: 40px;
}
#myfooter .fl {
    float: left;
}
#myfooter a .download {
    position: relative;
    padding: 0 0 0 60px;
    width: 136px;
    height: 44px;
    background: url(../assets/icon.png) no-repeat;
    background-position: -175px 0;
    color: #5c5c5c;
    font-size: 14px;
    letter-spacing: 2px;
    cursor: pointer;
    z-index: 1;
    transition: all .3s;
    -moz-transition: all .3s;
    -webkit-transition: all .3s;
    -o-transition: all .3s;
}
#myfooter .download p {
    line-height: 18px;
}
#myfooter .client-down {
    margin-top: 7px;
}
#myfooter .friendly {
    font-size: 12px;
    font-family: "Hiragino Sans GB", 冬青黑体, "Hiragino Kaku Gothic ProN", "Microsoft Yahei", Simsun, Arial, Helvetica, sans-serif;
    line-height: 1.428;
    color: #5c5c5c;
    letter-spacing: 3px;
    margin-top: 29px;
}
#myfooter .friendly .toplink {
    height: 14px;
    margin-bottom: 9px;
}
#myfooter .friendly p .first {
    padding-left: 0;
    background: none;
}
#myfooter .friendly a {
    display: inline-block;
    height: 14px;
    line-height: 14px;
    padding: 0 8px 0 10px;
    color: #5c5c5c;
    border-left: 1px #5c5c5c solid;
}
#myfooter .friendly .first{
    border-left: 0;
}
#myfooter .footRight {
    width: 200px;
    background: #25292e;
}
#myfooter .text-r {
    text-align: right;
}
#myfooter .fr {
    float: right;
}
#myfooter .commun {
    height: 30px;
    padding: 45px 0 0;
}
#myfooter ul {
    list-style: none;
}
#myfooter .commun li {
    float: right;
    height: 30px;
    margin-left: 27px;
    position: relative;
}
#myfooter .commun li a {
    display: block;
    height: 20px;
    opacity: 0.2;
    cursor: pointer;
    background: url(../assets/icon.png) no-repeat;
}
#myfooter .commun li a.douban {
    width: 18px;
    background-position: -129px -25px;
    overflow: hidden;
}
#myfooter .commun li a.sina {
    width: 23px;
    background-position: -150px -23px;
    overflow: hidden;
}
#myfooter .commun li a.wechat {
    width: 26px;
    background-position: -100px -23px;
}
</style>