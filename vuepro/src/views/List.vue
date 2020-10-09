<template>
    <div id="list">
        <my-header></my-header>
        <div id="main">
            <div class="position">
                <a href="">良仓</a>
                >
                <a href="">商店</a>
                >
                <a href="">家居</a>
            </div>
            <div class="osm-bar">
                <ul class="osm-cls">
                    <li>
                        <a href="" class="new">新品</a>
                    </li>
                    <li>
                        <a href="">家居</a>
                    </li>
                    <li>
                        <a href="">文具</a>
                    </li>
                    <li>
                        <a href="">数码</a>
                    </li>
                    <li>
                        <a href="">玩乐</a>
                    </li>
                    <li>
                        <a href="">餐厨</a>
                    </li>
                    <li>
                        <a href="">美食</a>
                    </li>
                    <li>
                        <a href="">服装</a>
                    </li>
                    <li>
                        <a href="">鞋包</a>
                    </li>
                    <li>
                        <a href="">配饰</a>
                    </li>
                    <li>
                        <a href="">美肤</a>
                    </li>
                    <li>
                        <a href="">出行</a>
                    </li>
                    <li>
                        <a href="">图书</a>
                    </li>
                    <li>
                        <a href="">艺术</a>
                    </li>
                    <li>
                        <a href="">水具</a>
                    </li>
                    <li>
                        <a href="">运动</a>
                    </li>
                    <li>
                        <a href="">品牌</a>
                    </li>
                </ul>
                <div class="osm-price">
                    价格筛选
                    <span class="arrow"></span>
                    <ul>
                        <li><a href="" class="chk">全部</a></li>
                        <li><a href="">0-300</a></li>
                        <li><a href="">301-1000</a></li>
                        <li><a href="">1001-2000</a></li>
                        <li><a href="">2001-4000</a></li>
                        <li><a href="">4001以上</a></li>
                    </ul>
                </div>
            </div>
            <div class="shopListCon">
                <div class="item" v-for="(list,k) of lists" :key="k">
                    <div class="itemchild">
                        <div class="imgCon">
                            <a href="">
                                <img :src="list.pic" alt="">
                            </a>
                            <router-link class="goodsInfo" :to="`/goods/${list.pid}`">
                                <p class="money">￥{{list.price}}元</p>
                                <p class="tle">{{list.details}}</p>
                            </router-link>
                        </div>
                    <div class="bar">
                        <a href=""><img src="../assets/shop/4.jpg" alt="">{{list.title}}</a>
                        <a href="" class="heart"></a>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>

<style>
#list a{
    text-decoration: none;
    color: #666;
    font-size: 12px;
}
#list ul {
    list-style: none;
}
#list #main {
    padding-top: 0;
    width: 1000px;
    margin: 0 auto;
    height: 1400px;
}
#list .position {
    width: 100%;
    height: 20px;
    line-height: 20px;
    color: #bfbfbf;
    font-weight: normal;
    vertical-align: middle;
    padding: 10px 0px 5px 0px;
    font-family: 'Hiragino Sans GB','冬青黑体','Hiragino Kaku Gothic ProN','Microsoft Yahei' ,'Simsun','Arial', 'Helvetica', 'sans-serif';
}
#list .osm-bar {
    margin-top: 10px;
    width: 100%;
    float: left;
    position: relative;
    font-size: 13px;
    z-index: 1;
}
#list .osm-bar{
    content: "";
    display: block;
    clear: both;
}
#list .osm-cls {
    border-bottom: 1px solid #ededed;
    position: relative;
    float: left;
    width: 840px;
    z-index: 1;
}
#list .osm-cls li {
    float: left;
    display: block;
    zoom: 1;
    position: relative;
    padding: 6px 20px 5px 0px;
    height: 25px;
    border-bottom: 1px solid #ededed;
    margin: 10px 0px -1px 0px;
}
#list .osm-cls li a {
    width: 64px;
    color: #333;
    text-align: center;
    display: block;
    zoom: 1;
    margin-top: 1px;
    height: 24px;
    line-height: 24px;
}
#list .osm-cls li a.new {
    background: url(../assets/icon.png) no-repeat;
    background-position: -173px -584px;
    text-align: right;
}
#list .osm-cls li a:hover{
    border-bottom: 1px solid #000;
}
#list .osm-price {
    width: 142px;
    margin: 10px 0 0;
    text-align: right;
    border-bottom: 1px solid #ededed;
    position: relative;
    float: right;
    height: 24px;
    padding: 7px 18px 5px 0px;
    position: relative;
    cursor: pointer;
    z-index: 1;
}
#list .osm-price .arrow {
    display: block;
    background: url(../assets/icon.png) no-repeat;
    position: absolute;
    right: 0;
    top: 5px;
    width: 12px;
    height: 20px;
    zoom: 1;
    background-position: -188px -385px;
    transition: transform 0.3s ease-out;
}
#list .osm-price ul {
    display: none;
    width: 95px;
    position: absolute;
    z-index: 100000;
    right: 0px;
    top: 36px;
    border: 1px solid #ededed;
    background: #fff;
}
#list .osm-price ul li a.chk {
    color: #fff;
}
#list .osm-price ul li a {
    display: block;
    zoom: 1;
    padding: 0px 10px;
    width: 75px;
    height: 39px;
    color: #666;
    border-bottom: 1px solid #ededed;
    line-height: 39px;
    text-align: left;
}
#list .osm-price:hover ul{
    display: block;
}
#list .osm-price li:hover {
    background: #333;
}
#list .shopListCon{
    margin-top: 20px;
    float: left;
}
#list .shopListCon::after{
    content:"";
    display: block;
    clear: both;
}
#list .shopListCon .item{
    float: left;
    width: 333px;
    height: 366px;
    margin: 0px 0px 30px 0px;
}
#list .shopListCon .itemchild{
    padding: 0px 8.5px;
    position: relative;
}
#list .shopListCon .first{
    margin-left: 0px;
    clear: left;
}
#list .shopListCon .imgCon img{
    width: 100%;
    height: 316px;
}
#list .shopListCon .bar{
    width: 100%;
    height: 40px;
    margin-top: 10px;
}

#list .shopListCon .bar img{
    width: 34px;
    height: 34px;
    margin-right: 10px;
}
#list .shopListCon .bar a{
    font-size: 14px;
    color: #878787;
}
#list .shopListCon .bar .heart{
    float: right;
    display: block;
    background: url(../assets/shop/heart.png) no-repeat;
    padding-right: 30px;
    height: 40px;
    line-height: 40px;
}
#list .shopListCon .goodsInfo{
    display: block;
    display: none;
    width: 316px;
    height: 316px;
    /* padding: 15px;  */
    background: rgba(0, 0, 0, 0.6);
    position: absolute;
    left: 10px;
    top: 0;
}
#list .shopListCon .goodsInfo .money{
    margin-top: 15px;
    margin-left: 20px;
    color: #0c6eba;
    font-size: 20px;
    font-style: italic;
    font-weight: bolder;
}
#list .shopListCon .goodsInfo .tle{
    font-size: 14px;
    margin-top: 100px;
    margin-left: 20px;
    color: #fff;
    font-weight: bolder;
}
#list .shopListCon .imgCon:hover a:nth-child(2){
    display: block;
}
</style>

<script>
export default {
    props:["sid"],
    data(){
        return{
            lists:[]
        }
    },
    mounted(){
        this.axios.get('/list',{params:{sid:this.sid}}).then(res=>{
            let data = res.data.results;
            this.lists = res.data.results;
            data.forEach(item=>{
                if(item.pic != null){
                    item.pic =require('../../../server/img/product/'+item.pic)
                }
            })
        })
    }
}
</script>