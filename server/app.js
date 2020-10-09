const express = require('express');
const app = express();
const mysql = require('mysql');
const cors = require('cors');
const bodyParser = require('body-parser')
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'lc',
    connectionLimit:20
})

app.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
}))
app.use(bodyParser.urlencoded({
    extended:false
}))
app.listen(3000,()=>{
    console.log('server is running...')
});

// 用户登录
app.get('/login',(req,res)=>{
    let phone = req.query.phone;
    let upwd = req.query.upwd;
    let sql = 'SELECT phone,upwd FROM lc_user where phone=? and upwd=?';
    pool.query(sql,[phone,upwd],(err,results)=>{
        if(err)throw err;
        if(results.length>0){
            res.send({message:'登录成功',code:1,results:results})
        }else{
            res.send({message:'登录失败',code:0,results:results})
        }
    })
})

// 用户注册
app.post('/register',(req,res)=>{
    let phone = req.query.phone;
    let obj = req.body;
    let sql = 'select * from lc_user where phone = ?'
    pool.query(sql,[phone],(err,results)=>{
        if(err) throw err;
        if(results.length>0){
            res.send({message:'手机号已存在',code:0,results:results});
        }else{
            let sql = 'insert into lc_user set ?';
            pool.query(sql,[obj],(err,results)=>{
                if(err) throw err;
                res.send({message:'注册成功',code:1,results:results});
            })
        }
    })
})

// 商品列表
app.get('/list',(req,res)=>{
    let sid = req.query.sid;
    console.log(sid);
    let sql = 'select * from lc_index_product where sid = ?';
    pool.query(sql,[sid],(err,results)=>{
        if(err) throw err;
        res.send({results})
    })
})

//商品详情
app.get('/goods',(req,res)=>{
    let pid = req.query.pid;
    console.log(pid);
    let sql = 'select *from lc_index_product where pid = ?';
    pool.query(sql,[pid],(err,results)=>{
        if(err) throw err;
        res.send({results})
        console.log(results);
    })
})