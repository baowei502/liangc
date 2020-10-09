<template>
    <div id="index">
        <my-header></my-header>
        <my-banner></my-banner>
        <div id="main">
            <div class="adv">
                <div class="adv1">
                    <a href=""><img src="../assets/index/1.jpg" alt=""></a>
                </div>
                <div class="adv2">
                    <a href=""><img src="../assets/index/2.jpg" alt=""></a>
                </div>
                <div class="adv3">
                    <a href=""><img src="../assets/index/3.jpg" alt=""></a>
                </div>
                <div class="adv4">
                    <a href=""><img src="../assets/index/4.jpg" alt=""></a>
                </div>
                <div class="adv5">
                    <a href=""><img src="../assets/index/5.jpg" alt=""></a>
                </div>
            </div>
            <div class="shoptle">
                人气良品
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>

<style>
#index #main{
    width: 1000px;
    margin: 0 auto;
}
#index #main .adv{
    margin-top: 30px;
    width: 100%;
    height: 403px;
    position: relative;
}
#index #main .adv1,.adv2,.adv3,.adv4,.adv5{
    position: absolute;
}
#index #main .adv2{
    left: 342px;
}
#index #main .adv3{
    left: 684px;
}
#index #main .adv4{
    top:210px
}
#index #main .adv5{
    top:210px;
    left: 684px;
}
#index #main .shoptle{
    padding: 10px 0px;
    border-bottom: 1px solid #ccc;
    text-align: center;
    color: #333;
    width: 100%;
    margin: 36px 0px 20px 0px;
}
</style>

<script>
export default {
    
}
</script>