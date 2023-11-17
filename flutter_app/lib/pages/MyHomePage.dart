import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2023年103月'),
      ),
      backgroundColor: Color.fromARGB(255, 214, 214, 214),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8), // 左下角圆角半径
                  bottomRight: Radius.circular(8), // 右下角圆角半径
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 206, 204, 204), // 边框颜色
                        width: 1, // 边框宽度
                      ),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: List.generate(7, (index) {
                            return Expanded(
                              child: Container(
                                // color: Colors.blue, // 为了可视化效果，设置容器颜色
                                child: Center(
                                  child: Text(
                                    '三',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: const Color.fromARGB(
                                            255, 82, 77, 77)),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7,
                            childAspectRatio: 1.0,
                          ),
                          itemCount: 35,
                          itemBuilder: (context, index) {
                            int indexValue = index + 1;
                            return Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    indexValue.toString(),
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                  Text(
                                    '十八',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 下区域占50%
              Expanded(
                // flex: 5, // 下区域占总高度的50%
                child: Container(
                  // color: Colors.green, // 下区域背景颜色
                  child: ListView.builder(
                    itemCount: 20, // ListView中的项目数量
                    itemBuilder: (context, index) {
                      return Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  255, 236, 237, 238), // 设置背景颜色
                              borderRadius: BorderRadius.circular(5.0), // 设置圆角
                            ),
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    child: Row(
                                  children: [
                                    Container(
                                      width: 80, // 第一个Container的宽度为100px
                                      // color: Colors.blue, // 背景颜色，可选
                                      // child: Text('100'),
                                    ),
                                    Expanded(
                                      child: Container(
                                        // color: Colors.red, // 第二个Container的背景颜色，可选
                                        child: Text('2023年9月'),
                                      ),
                                    ),
                                  ],
                                )),
                                Container(
                                    child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 80, // 第一个Container的宽度为100px
                                      child: Column(children: [
                                        Text('22'),
                                        Text('周五'),
                                      ]),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('XX生日'),
                                              Text('22:53-23:53'),
                                            ]),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ));
                    },
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            // Positioned用于固定定位的部分
            right: 20, // 距离左边的距离
            bottom: 20, // 距离顶部的距离
            child: Container(
                width: 40, // 定位盒子的宽度
                height: 40, // 定位盒子的高度
                // color: Colors.red, // 定位盒子的颜色
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 253, 251, 251), // 定位盒子的颜色
                  borderRadius: BorderRadius.circular(50), // 设置为容器宽度的一半
                  border: Border.all(
                    color: Color.fromARGB(255, 223, 221, 221), // 边框颜色
                    width: 2, // 边框宽度
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // 阴影颜色
                      blurRadius: 5, // 阴影模糊半径
                      offset: Offset(0, 4), // 阴影偏移
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/homePage');
                    // Navigator.pushNamed(context, '/second');
                  },
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 88, 98, 240),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
