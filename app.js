const express=require("express");
const db=require("./core/mysql");

const server=express();

server.get("/getCats",async(request,response)=>{
    let sql="SELECT `catName` FROM `Categories`;";
    let result = await db.query(sql,null);
    //返回数据
//    console.log(result);
    response.json(result);
})

server.get("/getPlaces",async(request,response)=>{
    let catName = request.query.catName;
    let parmas=[catName];
    let sql="SELECT `plId`,`plName`,`longitude`,`latitude`,`time` FROM `Places` WHERE `catName`= ? ;";

    let result = await db.query(sql,parmas);
    //返回数据
//    console.log(result);
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
    response.json(result);
})

server.listen(8080,()=>{
    console.log("服务器启动完毕！");
})