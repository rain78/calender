const connection = require("../utils/mysql.js");
const { getFirstAndLastDayOfMonth } = require("../utils/index.js");

exports.schedule = async (req, res) => {
  console.log('schedule=>',req.query)
  try {
    const limit = 5; // 每页显示的数据条目数
    const page = req.query.page || 1; // 从请求参数中获取页数，默认为第一页
    const offset = (Number(page) - 1) * limit; // 计算偏移量
    const nowMonth=req.query.nowMonth || new Date()
    const { firstDay, lastDay } = getFirstAndLastDayOfMonth(new Date(nowMonth));
    const firstDayFormat =firstDay.toLocaleString('zh-CN')
    const lastDayFormat =lastDay.toLocaleString('zh-CN')
    const sql = "SELECT * FROM schedule WHERE selectedStartDate >= ? AND selectedStartDate <= ? LIMIT ? OFFSET ?"; // 使用 LIMIT 和 OFFSET 子句
    const values = [firstDayFormat, lastDayFormat, limit, offset];
    connection.query(sql, values, (err, result) => {
      if (err) {
        throw err;
      } else {
        const countSql = "SELECT COUNT(*) AS total FROM schedule WHERE selectedStartDate >= ? AND selectedStartDate <= ?";
        connection.query(countSql,[firstDayFormat, lastDayFormat], (countErr, countResult) => {
          if (countErr) {
            throw countErr;
          } else {
            const total = countResult[0].total;
            console.log('schedule=>',total)

            res.send({
              status: 200,
              message: "查询成功",
              data: {
                list: result,
                total: Number(total),
                page:Number(page)
                
              },
            });
          }
        });
      }
    });
  } catch (error) {
    console.log("err=>", error);
    return res.cc("服务器错误！", 500, error);
  }
};

exports.schedule_day = async (req, res) => {
  console.log('schedule_day=>',req.query)
  try {
    const limit = 5; // 每页显示的数据条目数
    const page = req.query.page || 1; // 从请求参数中获取页数，默认为第一页
    const offset = (Number(page) - 1) * limit; // 计算偏移量
    const nowMonth=req.query.nowMonth || new Date()
    const dayForm=new Date(req.query.day)
    console.log(dayForm.getFullYear(), dayForm.getMonth(), dayForm.getDay())
    const startDay= new Date(dayForm.getFullYear(), dayForm.getMonth(), dayForm.getDate());
    const nextDay=new Date(startDay.getTime() + 24*60*60*1000); 
    console.log(startDay,nextDay)
    const dayFormat =startDay.toLocaleString('zh-CN').replace(/\//g,'-').split(' ')[0]
    const newDayFormat =nextDay.toLocaleString('zh-CN').replace(/\//g,'-').split(' ')[0]
    // const dayFormat =startDay.toLocaleString('zh-CN')
    // const newDayFormat =nextDay.toLocaleString('zh-CN')
    const sql = "SELECT * FROM schedule WHERE selectedStartDate >= ? AND selectedStartDate < ? LIMIT ? OFFSET ?"; // 使用 LIMIT 和 OFFSET 子句
    console.log(dayFormat,newDayFormat)
    const values = [dayFormat, newDayFormat, limit, offset];
    connection.query(sql, values, (err, result) => {
      if (err) {
        throw err;
      } else {
        const countSql = "SELECT COUNT(*) AS total FROM schedule WHERE selectedStartDate >= ? AND selectedStartDate <= ?";
        connection.query(countSql,[dayFormat, newDayFormat], (countErr, countResult) => {
          if (countErr) {
            throw countErr;
          } else {
            const total = countResult[0].total;
            console.log('schedule_day=>',total)

            res.send({
              status: 200,
              message: "查询成功",
              data: {
                list: result,
                total: Number(total),
                page:Number(page)
              },
            });
          }
        });
      }
    });
  } catch (error) {
    console.log("err=>", error);
    return res.cc("服务器错误！", 500, error);
  }
};

exports.schedule_add = async (req, res) => {
  try {
    const {
      id,
      title,
      selectedStartDate,
      selectedEndDate,
      selectedRemindDate,
      repetitionType,
      isFullDay,
      isAlarm,
      addr,
      remark,
    } = req.body;
    const sql =
      "INSERT INTO schedule (id, title,selectedStartDate,selectedEndDate,selectedRemindDate,repetitionType,isFullDay,isAlarm,addr,remark) VALUES (?, ?,?, ?,?, ?,?, ?,?, ?)";
    const values = [
      id,
      title,
      selectedStartDate,
      selectedEndDate,
      selectedRemindDate,
      repetitionType,
      isFullDay,
      isAlarm,
      addr,
      remark,
    ];
    connection.query(sql, values, (err, result) => {
      if (err) {
        throw err;
      } else {
        res.send({
          status: 200,
          message: "新增成功",
        });
      }
    });
  } catch (error) {
    console.log("err=>", error);
    return res.cc("服务器错误！", 500, error);
  }
};

exports.schedule_update = async (req, res) => {
  try {
    const {
      title,
      selectedStartDate,
      selectedEndDate,
      selectedRemindDate,
      repetitionType,
      isFullDay,
      isAlarm,
      addr,
      remark,
      id,
    } = req.body;
    const sql =
      "UPDATE schedule SET title = ?, selectedStartDate = ?, selectedEndDate = ?, selectedRemindDate = ?, repetitionType = ?, isFullDay = ?, isAlarm = ?, addr = ?, remark = ? WHERE id = ?";

    connection.query(
      sql,
      [
        title,
        selectedStartDate,
        selectedEndDate,
        selectedRemindDate,
        repetitionType,
        isFullDay,
        isAlarm,
        addr,
        remark,
        id,
      ],
      (err, result, fields) => {
        // console.error('fields=>', fields)

        if (err) {
          throw err;
          // res.cc("服务器错误！", 500, err);
        } else {
          res.send({
            status: 200,
            message: "修改成功",
          });
        }
      }
    );
  } catch (error) {
    console.log("err=>", error);
    return res.cc("服务器错误！", 500, error);
  }
};

exports.schedule_delete = async (req, res) => {
  console.log("delete");
  try {
    const id = req.params.id;
    console.log("id=>", id);
    const sql = "DELETE FROM schedule WHERE id = ?";

    connection.query(sql, [id], (err, result) => {
      // console.error('fields=>', fields)

      if (err) {
        throw err;
        // res.cc("服务器错误！", 500, err);
      } else {
        res.send({
          status: 200,
          message: "删除成功",
        });
      }
    });
  } catch (error) {
    console.log("err=>", error);
    return res.cc("服务器错误！", 500, error);
  }
};


