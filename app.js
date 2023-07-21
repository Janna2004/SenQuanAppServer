const express=require("express");
const db=require("./core/mysql");
const route=require("./core/http")

const server=express();
var request = require('request');

server.get("/getCats",async(request,response)=>{
    let sql="SELECT `catName` FROM `Categories` ORDER BY `catId`;";
    let result = await db.query(sql,null);
    result = result.map((item)=>item.catName)
    //返回数据
    console.log(result);
    response.json(result);
})

server.get("/getPlaces",async(request,response)=>{
    let catName = request.query.catName;
    let parmas=[catName];
    let sql="SELECT * FROM `Places` WHERE `catName`= ? ;";

    let result = await db.query(sql,parmas);
    //返回数据
    console.log(result);
    response.json(result);
})

server.get("/getDetail",async(request,response)=>{
    let plName = request.query.plName;
    let parmas=[plName];
    let sql="SELECT * FROM `Places` WHERE `plName`= ? ;";

    let result = await db.query(sql,parmas);
    //返回数据
//    console.log(parmas);
//    console.log(result);
    response.json(result[0]);
})

server.get("/getRoute",async(request,response)=>{
    let url = request.query.url;
    let result = await route.get(url);
    console.log(result);
    response.json(result);
})

//端口号修改到8090！
server.listen(8090,()=>{
    console.log("服务器启动完毕！");
})