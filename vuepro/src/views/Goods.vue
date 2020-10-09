<template>
    <div id="goods">
        <my-header></my-header>
        <div id="main">
            <div class="position" style="font-size:12px">
                <a href="">良仓</a>
                >
                <a href="">家居</a>
                >
                <a href="">智能调温的四季被 | 春秋、夏季都能用</a>
            </div>
            <div class="total">
                <div class="left">
                    <div>
                        <!-- <img :src="image" alt=""> -->
                        <my-glass :img="image"></my-glass>
                    </div>
                </div>
                <div class="right">
                    <div>8823</div>
                    <div>
                        <a href="">{{goods.title}}</a>
                    </div>
                    <div>{{goods.details}}</div>
                    <div>
                        价格:
                        <span>￥{{goods.price}}元</span>
                    </div>
                    <div>
                        <span class="free1">免运费</span>
                        <span class="free2">正版授权</span>
                    </div>
                    <div>
                        数量:&nbsp;&nbsp;
                        <span>
                            <a href="">{{goods.count}}</a>
                        </span>
                    </div>
                    <div>
                        数量:&nbsp;&nbsp;
                        <span class="shopadd">
                            <a href=""><img src="../assets/goods/24748.png" alt=""></a>
                            <input type="text" value="1" class="inpu">
                            <a href=""><img src="../assets/goods/24750.png" alt=""></a>
                        </span>
                    </div>
                    <div>
                        <p>已售罄，即将到货</p>
                    </div>
                    <div>
                        <a href="" class="a91"><span style="margin-left: 60px;">加入购物车</span></a>
                        <a href="" class="a92"><span style="margin-left: 82px;">分享</span></a>
                    </div>
                </div>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>

<style>
#goods a{
    text-decoration: none;
    color: #bfbfbf;
}
#goods #main{
    width: 1000px;
    margin: 0 auto;
}
#goods #main .position{
    width: 100%;
    height: 20px;
    line-height: 20px;
    color: #bfbfbf;
    font-weight: normal;
    padding: 10px 0px 5px 0px;
    font-family: 'Hiragino Sans GB','冬青黑体','Hiragino Kaku Gothic ProN','Microsoft Yahei' ,'Simsun','Arial', 'Helvetica', 'sans-serif';
}
#goods #main .total{
    width: 100%;
    position: relative;
}
#goods #main .total .left{
    width: 350px;
    margin-right: 20px;
}
#goods #main .total .left img{
    width: 100%;
}
#goods #main .total .right{
    width: 330px;
    position: absolute;
    right: 150px;
    top:0px
}
#goods #main .total .right div:first-child{
    background: url(../assets/shop/black_heart.png) no-repeat;
    background-size: 14px 13px;
    color: black;
    padding-left: 20px;
}
#goods #main .total .right div:nth-child(2){
    margin-top: 10px;
    font-size: 24px;
    line-height: 36px;
}
#goods #main .total .right div:nth-child(2) a{
    color: #878787;
}
#goods #main .total .right div:nth-child(3){
    font-size: 20px;
    color: #333;
    line-height: 26px;
}
#goods #main .total .right div:nth-child(4){
    font-size: 12px;
    line-height: 18px;
    color: rgb(153,153,153);
    padding-top: 5px;
    padding-bottom: 32px;
}
#goods #main .total .right div:nth-child(4) span{
    color: rgb(16,131,255);
    font-size: 18px;
    font-weight: normal;
}
#goods #main .total .right div:nth-child(5){
    font-size: 12px;
    width: 300px;
    padding-left: 44px;
}
#goods #main .total .right .free1{
    background: url(../assets/goods/24689.png) no-repeat left center;
    background-size: 12px 14px;
    padding-left: 17px;
    color: rgb(153,153,153);
    margin-right: 5px;
}
#goods #main .total .right .free2{
    background: url(../assets/goods/24689.png) no-repeat left center;
    background-size: 12px 14px;
    padding-left: 17px;
    color: rgb(153,153,153);
}
#goods #main .total .right div:nth-child(6){
    margin-top: 10px;
    padding: 5px 0px;
    height: 50px;
    font-size: 12px;
    color: rgb(153,153,153);
}
#goods #main .total .right div:nth-child(6) a{
    display: inline-block;
    padding: 2px 10px;
    height: 20px;
    line-height: 20px;
    vertical-align: middle;
    color: #999;
    font-size: 13px;
    text-align: center;
    background: #dcdcdc;
    border: 1px solid #000;
}
#goods #main .total .right div:nth-child(7){
    font-size: 12px;
    color: rgb(153,153,153);
    border-bottom-color: white;
    margin-top: 10px;
    border-bottom: 1px solid #ccc;
    padding-bottom: 10px;
}
#goods #main .total .right .shopadd{
    line-height: 24px;
}
#goods #main .total .right .shopadd a{
    color: black;
    width: 13px;
    height: 13px;
    font-size: 13px;
    line-height: 11px;
    background: #fff;
    text-align: center;
}
#goods #main .total .right .shopadd a img{
    width: 13px;
    height: 13px;
}
#goods #main .total .right .inpu{
    margin: 0px 7px;
    width: 52px;
    height: 24px;
    display: inline-block;
    line-height: 24px;
    color: #666;
    font-size: 13px;
    border: none;
    background: white;
    text-align: center;
    border: 1px solid rgb(238,238,238);
}
#goods #main .total .right div:nth-child(8){
    margin-top: 5px;
    padding-top: 10px;
    font-size: 21.8px;
    color: #999;
    font-weight: 100;
    text-align: center;
}
#goods #main .total .right div:nth-child(9){
    padding: 10px 0px;
}
#goods #main .total .right div:nth-child(9) a{
    display: inline-block;
    width: 160px;
    height: 32px;
    border: none;
    color: black;
    line-height: 32px;
    font-size: 13px;
    border: 1px solid black;
    background-color: #fff;
}
#goods #main .total .right div:nth-child(9) .a91{
    background: url(../assets/goods/24749.png) #fff no-repeat;
    float: left;
    background-size: 15px;
    background-position: 38px 8px;
}

#goods #main .total .right div:nth-child(9) .a92{
    background: url(../assets/goods/24746.png) #fff no-repeat;
    float: right;
    background-size: 12px;
    background-position: 55px 7px;
}
</style>

<script>
export default {
    props:["pid"],
    data(){
        return{
            goods:[],
            image:''
        }
    },
    mounted(){
        this.axios.get('/goods',{params:{pid:this.pid}}).then(res=>{
            let data = res.data.results;
            this.goods = data[0];
            this.image = require('../../../server/img/product/'+data[0].pic);

        })
    }
}
</script>