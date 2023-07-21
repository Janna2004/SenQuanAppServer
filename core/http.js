const request = require('request')

module.exports.get = (url) => {
    return new Promise((resolve,reject) =>{
        request(url, function(error, response, body) {
            if (!error && response.statusCode === 200) {
                // 请求成功的处理逻辑
                //console.log(body)
                resolve(body)
            }else{
                console.log("node转发请求失败")
                reject(err);
            }
        })
    });
};
