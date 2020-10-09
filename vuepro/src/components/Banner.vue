<template>
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="../assets/banner/1.jpg" alt="">
            </div>
            <div class="swiper-slide">
                <img src="../assets/banner/2.jpg" alt="">
            </div>
            <div class="swiper-slide">
                <img src="../assets/banner/3.jpg" alt="">
            </div>
            <div class="swiper-slide">
                <img src="../assets/banner/4.jpg" alt="">
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
</template>
    <!-- Demo styles -->
<style>
    @import'../../public/css/swiper.min.css';
    html, body {
        position: relative;
        height: 100%;
    }
    body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color:#000;
        margin: 0;
        padding: 0;
    }
    .swiper-container {
        width: 100%;
        height: 100%;
        
    }
    .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        
        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
    .swiper-button-next{
        right: 300px;
    }
    .swiper-button-prev{
        left: 300px;
    }
    .swiper-pagination-bullet{
        border-radius: 0px;
        width: 20px;
        height: 5px;
    }
    
</style>
    <!-- Swiper JS -->
    <!-- Initialize Swiper -->
<script>
import'../../public/js/swiper.min.js'
export default {
    mounted(){
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false
    });
    }
}
</script>
