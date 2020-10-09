<template>
    <div id="login">
        <div id="main">
            <div class="logTable">
                <div>
                    <a href="">
                        <img src="../assets/images/logo_icon.png" alt="">
                    </a>
                </div>
                <div class="loginUser">
                    <label for="phone" class="userLogo psLogo"></label>
                    <input type="text"
                    placeholder="手机号/邮箱/用户名"
                    class="loginInput" 
                    v-model="phone"
                    @blur="vali_phone()"
                    >
                </div>
                <div class="loginUser loginPass">
                    <label for="password" class="userLogo pwLogo"></label>
                    <input type="password"
                    placeholder="密码" 
                    class="loginInput" 
                    v-model="upwd"
                    @blur="vali_upwd()"
                    >
                </div>
                <div class="checkLogin">
                    <input type="checkbox">
                    <span style="vertical-align: middle;color: #fff;font-size:12px;">自动登录</span>
                    <a href="">忘记密码?</a>
                </div>
                <div>
                    <button @click="login()" class="loginBtn">登录良仓</button>
                </div>
                <div>
                    <a href="" class="quikLoginIcon icon_QQ_36"></a>
                    <a href="" class="quikLoginIcon icon_sina_36"></a>
                    <a href="" class="quikLoginIcon icon_douban_36"></a>
                    <a href="" class="quikLoginIcon icon_qqwb_36"></a>
                    <router-link to="/register" class="regLC">注册良仓</router-link>
                </div>
            </div>
        </div>
    </div>
</template>

<style>
#login{
    background-color:rgba(0, 0, 0, 0.4);
    position: fixed;
    width: 100%;
    height: 100%;
}
#login #main {
    padding-top: 0px;
    width: 1000px;
    margin: 0 auto;
    clear: both;
    height: 100%;
}
#login .logTable{
    position: relative;
    width: 310px;
    margin: 200px auto;
}
#login .logTable div:first-child{
   padding: 22px 0;
   text-align: center;
}
#login .loginUser{
    width: 300px;
    height: 50px;
    line-height: 50px;
    background: url(../assets/images/loginuserBg.png) no-repeat;
    margin-top: 10px;
    position: relative;
}
#login .loginUser .psLogo{
    background: url(../assets/images/usericon.png) no-repeat;
    background-position: 10px 11px;
}
#login .loginUser .userLogo {
    color: #ffffff;
    display: inline-block;
    font-family: 微软雅黑;
    font-size: 14px;
    font-weight: bold;
    height: 50px;
    opacity: 0.99;
    width: 200px;
    padding-left: 62px;
    text-align: left;
}
#login .loginUser .loginInput {
    float: left;
    padding-left: 10px;
    width: 224px;
    height: 30px;
    line-height: 30px;
    border: none;
    border-left: 1px solid #ffffff;
    background: none;
    font-family: 微软雅黑;
    font-size: 14px;
    color: #ffffff;
    top: 10px;
    left: 50px;
    position: absolute;
}
#login .loginPass {
    margin-bottom: 11px;
}
#login .loginUser .pwLogo {
    background: url(../assets/images/passicon.png) no-repeat;
    background-position: 10px 11px;
}
input::-webkit-input-placeholder{
            color:#fff;
        }
        input::-moz-placeholder{  
            color:#fff;
        }
        input:-moz-placeholder{ 
            color:#fff;
        }
        input:-ms-input-placeholder{ 
            color:#fff;
        }
#login a{
    text-decoration: none;
    color: #fff;
}
#login .checkLogin a{
    font-size: 12px;
    float: right;
    padding-right: 15px;
}
#login .logTable .loginBtn {
    cursor: pointer;
    width: 300px;
    height: 50px;
    border: 0;
    background: #25292e;
    font-size: 18px;
    font-weight: bold;
    color: #ffffff;
    margin-top: 9px;
    margin-bottom: 30px;
}
#login .quikLoginIcon {
    width: 36px;
    height: 36px;
    display: inline-block;
    margin: 0px;
    position: relative;
}
#login .icon_QQ_36 {
    background: url(../assets/images/qqnormal.png) no-repeat;
    margin-left: 5px;
}
#login .icon_sina_36 {
    background: url(../assets/images/xinlangnormal.png) no-repeat;
}
#login .icon_douban_36 {
    background: url(../assets/images/doubannormal.png) no-repeat;
}
#login .icon_qqwb_36 {
    background: url(../assets/images/tengxunnormal.png) no-repeat;
}
#login .regLC {
    float: right;
    font-size: 14px;
    color: #ffffff;
    font-weight: bold;
    position: relative;
    top: -12px;
    right: 6px;
    margin-top: 10px;
    padding-bottom: 3px;
    border-bottom: 1px solid #ffffff;
}
</style>

<script>
export default {
    data(){
        return{
        phone:'',
        upwd:''
        }
    },
    methods:{
        vali_phone(){
            var reg=/^1[3-9]\d{9}$/;
            if(reg.test(this.phone)){
                return true;
            }else{
                alert("手机格式不对!")
                return false;
            }
        },
        vali_upwd(){
            var reg=/^[0-9A-Za-z]{8,16}$/;
            if(reg.test(this.upwd)){
                return true;
            }else{
                alert("密码必须包含大小写!")
                return false;
            }
        },
        login(){
            if(this.vali_phone() && this.vali_upwd()){
                this.axios.get('/login',{params:{"phone":this.phone,"upwd":this.upwd}}).then(res=>{
                    if(res.data.code == 1){
                        this.$router.push('/')
                    }else{
                        alert("用户名或密码错误");
                    }
                })
            }
        }
    }
}
</script>