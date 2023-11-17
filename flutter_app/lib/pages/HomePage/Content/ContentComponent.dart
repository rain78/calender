import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage/Content/calendar.dart';
import 'package:flutter_app/pages/HomePage/Content/schedule.dart';

class ContentComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Container(
          child: Column(children: [
            Calendar(),
            // 下区域占50%
            Schedule(),
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
                  // Navigator.pushNamed(context, '/homePage');
                  Navigator.pushNamed(context, '/second');
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
    );
  }
}
