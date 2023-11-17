const express = require("express");
const http = require("http");
const createError = require("http-errors");
const app = express();
app.server = http.createServer(app);
//expressJWT.config.js
const connection = require("./utils/mysql.js");
const { getFirstAndLastDayOfMonth } = require("./utils/index.js");
//处理跨域
const cors = require("cors");
app.use(cors());
app.use(express.json());

// 配置解析表单数据的中间件，注意：这个中间件，只能解析 application/x-www-form-urlencoded 格式的表单数据
app.use(express.urlencoded({ extended: false }));
const api = require("./api/index");

// 在app.js中封装res.send()的中间件，减少重复代码的使用；
app.use((req, res, next) => {
  // status 默认值为 500，表示失败的情况
  // err 的值，可能是一个错误对象，也可能是一个错误的描述字符串
  res.cc = function (err, status = 500, data) {
    res.send({
      status,
      message: err instanceof Error ? err.message : err,
      data,
    });
  };
  next();
});

app.use("/api", api);

app.use(function (req, res, next) {
  // console.log('dd')
  next(createError(404));
});

// 定义错误级别的中间件
app.use((err, req, res, next) => {
  res.cc(err);
});

app.server.listen(3052, async () => {
  console.log("express server running at http://127.0.0.1:3052");
});

