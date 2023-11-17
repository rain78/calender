import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 5, // 下区域占总高度的50%
      child: Container(
        // color: Colors.green, // 下区域背景颜色
        child: ListView.builder(
          itemCount: 20, // ListView中的项目数量
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 237, 238), // 设置背景颜色
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
