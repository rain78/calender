
// exports.schedule_add = async (req, res) => {
exports.getFirstAndLastDayOfMonth=(date)=>{
    // 如果没有传递日期，默认使用当前日期
    const today = date || new Date();
  
    // 获取本月第一天
    const firstDayOfMonth = new Date(today.getFullYear(), today.getMonth(), 1);
  
    // 获取下个月第一天
    const nextMonth = new Date(today.getFullYear(), today.getMonth() + 1, 1);
  
    // 获取本月最后一天，即下个月第一天的前一天
    const lastDayOfMonth = new Date(nextMonth - 1);
  
    return {
      firstDay: firstDayOfMonth,
      lastDay: lastDayOfMonth,
    };
  }
  
  // 使用示例

  