<template>
    <div id="register">
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
                    placeholder="请输入手机号"
                    class="loginInput" 
                    v-model="phone"
                    @blur="vali_phone()"
                    >
                </div>
                <div class="loginUser loginPass">
                    <label for="password" class="userLogo pwLogo"></label>
                    <input type="password"
                    placeholder="6-20位字符组成,区分大小写" 
                    class="loginInput" 
                    v-model="upwd"
                    @blur="vali_upwd()"
                    >
                </div>
                <div class="loginUser loginPass">
                    <label for="password" class="userLogo pwLogo"></label>
                    <input type="password"
                    placeholder="确认密码" 
                    class="loginInput" 
                    v-model="conupwd"
                    @blur="vali_conupwd()"
                    >
                </div>
                <div class="checkLogin">
                    <input type="checkbox">
                    <span style="vertical-align: middle;color: #fff;font-size:12px;">同意</span>
                    <a href="">良仓注册条款</a>
                </div>
                <div>
                    <button @click="register()" class="loginBtn">立即注册</button>
                </div>
                <div>
                    <a href="" class="quikLoginIcon icon_QQ_36"></a>
                    <a href="" class="quikLoginIcon icon_sina_36"></a>
                    <a href="" class="quikLoginIcon icon_douban_36"></a>
                    <a href="" class="quikLoginIcon icon_qqwb_36"></a>
                    <router-link to="/login" class="loginLC">登录良仓</router-link>
                </div>
            </div>
        </div>
    </div>
</template>

<style>
#register{
    background-color:rgba(0, 0, 0, 0.4);
    position: fixed;
    width: 100%;
    height: 100%;
}
#register #main {
    padding-top: 0px;
    width: 1000px;
    margin: 0 auto;
    clear: both;
    height: 100%;
}
#register .logTable{
    position: relative;
    width: 310px;
    margin: 100px auto;
}
#register .logTable div:first-child{
   padding: 22px 0;
   text-align: center;
}
#register .loginUser{
    width: 300px;
    height: 50px;
    line-height: 50px;
    background: url(../assets/images/loginuserBg.png) no-repeat;
    margin-top: 10px;
    position: relative;
}
#register .loginUser .psLogo{
    background: url(../assets/images/usericon.png) no-repeat;
    background-position: 10px 11px;
}
#register .loginUser .userLogo {
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
#register .loginUser .loginInput {
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
#register .loginPass {
    margin-bottom: 11px;
}
#register .loginUser .pwLogo {
    background: url(../assets/images/passicon.png) no-repeat;
    background-position: 10px 11px;
}
#register input::-webkit-input-placeholder{
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
#register a{
    text-decoration: none;
    color: #fff;
}
#register .checkLogin a{
    font-size: 12px;
    padding-right: 15px;
    color: #0c79cc;
}
#register .logTable .loginBtn {
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
#register .quikLoginIcon {
    width: 36px;
    height: 36px;
    display: inline-block;
    margin: 0px;
    position: relative;
}
#register .icon_QQ_36 {
    background: url(../assets/images/qqnormal.png) no-repeat;
    margin-left: 5px;
}
#register .icon_sina_36 {
    background: url(../assets/images/xinlangnormal.png) no-repeat;
}
#register .icon_douban_36 {
    background: url(../assets/images/doubannormal.png) no-repeat;
}
#register .icon_qqwb_36 {
    background: url(../assets/images/tengxunnormal.png) no-repeat;
}
#register .loginLC {
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
        upwd:'',
        conupwd:''
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
            var reg=/^[0-9A-Za-z]{6,20}$/;
            if(reg.test(this.upwd)){
                return true;
            }else{
                alert("密码必须包含大小写!")
                return false;
            }
        },
        vali_conupwd(){
            if(this.conupwd === this.upwd){
                return true;
            }else{
                alert("两次输入的密码不同!")
                return false;
            }
        },
        register(){
            if(this.vali_phone() && this.vali_upwd() && this.vali_conupwd()){
                let params=this.qs.stringify({"phone":this.phone,"upwd":this.upwd})
                this.axios.post('/register',params,{headers:{'Content-Type':'application/x-www-form-urlencoded'}}).then(res=>{
                    if(res.data.code == 1){
                        alert('注册成功');
                    }else{
                        alert('手机号已注册')
                    }
                })
            }
        }
   }
}
</script>