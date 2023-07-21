//安装mysql模块
//npm i mysql --save-dev

//引入mysql模块
const mysql = require("mysql");

//创建连接池对象
const pool = mysql.createPool({
    host: "127.0.0.1",
    user: "root",
    password: "changshunSQL",
    port: 3306,
    database:"shenquangu_sql"
});

//封装sql方法
module.exports.Pool = pool;
module.exports.query = (sql, params) => {
    //获取链接
    return new Promise((resolve,reject) =>{
        pool.getConnection((err,conn) => {
            if (err) {
                console.log("链接mysql失败:"+err.message);
                pool.releaseConnection();
            }else{
                conn.query(sql, params, (err, result, friends) => {
                    conn.release();
                    if (err) {
                        console.log("执行sql失败")
                        reject(err);
                    }else{
                        resolve(result);
                    }
                    //console.log(result);
                })
            }
        });
    });
};
