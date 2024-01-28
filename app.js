const express=require("express");
const db=require("./core/mysql");

const server=express();

server.get("/getCats", async (request, response) => {
    let sql = "SELECT `catName` FROM `Categories` ORDER BY `catId`;";

    let result;
    try {
        result = await db.query(sql, null);
        result = result.map((item) => item.catName);
        
        //返回数据
        response.json({ code: 200, msg: "查询目录成功", data: result });
    } catch (err) {
        response.json({ code: 500, msg: "服务器错误" });
    }
});

server.get("/getPlaces",async(request,response)=>{
    let catName = request.query.catName;
    let parmas=[catName];
    let sql="SELECT plId, catName, plName, longitude, latitude, time, imgUrl FROM `Places` WHERE `catName`= ? ;";

    let result;
    try{
        result = await db.query(sql,parmas);

        //返回数据
        response.json({ code: 200, msg: "查询分类下地点成功", data: result });
    } catch (err) {
        response.json({ code: 500, msg: "服务器错误" });
    }

})

server.get("/getDetail",async(request,response)=>{
    let plName = request.query.plName;
    let parmas=[plName];
    let sql="SELECT * FROM `Places` WHERE `plName`= ? ;";

    let result;
    try{
        result = await db.query(sql,parmas);

        //返回数据
        response.json({ code: 200, msg: "查询详细信息成功", data: result[0] });
    } catch (err) {
        response.json({ code: 500, msg: "服务器错误" });
    }
})

server.get("/getRoute",async(request,response)=>{
    let url = request.query.url;
    let result
    try{
        result = await route.get(url);

        //返回数据
        response.json({ code: 200, msg: "查询路线成功", data: result });
    } catch (err) {
        response.json({ code: 500, msg: "服务器错误" });
    }
})

server.listen(8080,()=>{
    console.log("服务器启动完毕！");
})