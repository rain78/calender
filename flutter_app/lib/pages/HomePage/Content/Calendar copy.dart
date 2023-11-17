import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
            );

  }
}
