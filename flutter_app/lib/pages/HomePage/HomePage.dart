import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage/Content/ContentComponent.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2023年10月'),
      ),
      backgroundColor: Color.fromARGB(255, 214, 214, 214),
      body: ContentComponent(),
      // bottomNavigationBar: BottomNavigationComponent(),
    );
  }
}
