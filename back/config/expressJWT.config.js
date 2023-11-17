module.exports = {
    // 加密和解密 Token 的秘钥
    jwtSecretKey: 'Gloria',
    // token 的有效期
    expiresIn: '8640h',
  };
  
    /**
     * - max：池中的最大连接数
  - min：池中的最小连接数
  - idle：连接释放之前可以空闲的最长时间（以毫秒为单位）
  - acquire：该池将在抛出错误之前尝试获取连接的最长时间（以毫秒为单位）
     */