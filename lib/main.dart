import 'package:flutter/material.dart';
import 'package:happy_apartment/pages/home.dart';
import 'package:happy_apartment/pages/mine.dart';
import 'package:happy_apartment/pages/provice.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState()=> new _MyApp();
}

class _MyApp extends State<MyApp> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.access_time),title: Text('约看')),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),title: Text('我的'))
          ],
          currentIndex: currentIndex,
          onTap: (index){
              if(currentIndex != index) {
                setState(() {
                  currentIndex = index;
                });
              }
          },
        ),
        body: getPages(currentIndex),
      ),
    );
  }

  /**
   * 页面跳转渲染
   */
  Widget getPages(index){
    if(index ==0) {
      return Home();
    }
    if(index ==1) {
      return Provices();
    }
    if(index ==2) {
      return Mine();
    }
  }
}

