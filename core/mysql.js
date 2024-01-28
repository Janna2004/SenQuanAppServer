const mysql = require("mysql2");

const pool = mysql.createPool({
    host: "127.0.0.1",
    user: "root",
    password: "Cptbtptp1",
    port: 3306,
    database: "shenquangu_sql"
});

module.exports.query = (sql, params) => {
    return new Promise((resolve, reject) => {
        pool.getConnection((err, conn) => {
            if (err) {
                console.log("连接MySQL失败:" + err.message);
                reject(err);
            } else {
                conn.query(sql, params, (err, result) => {
                    conn.release(); // 释放连接
                    if (err) {
                        console.log("执行SQL失败");
                        reject(err);
                    } else {
                        resolve(result);
                    }
                });
            }
        });
    });
};
