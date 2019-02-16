import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mine extends StatefulWidget {
  @override
  _Mine createState() => new _Mine();
}

class _Mine extends State<Mine> {
  var userInfo = {};
  var logined = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          title: Text('个人中心',style: TextStyle(color: Colors.black),),
        ),
        body: Container(
          height: double.infinity,
          color: Color(0xfff4f4f4),
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                color: Color(0xff59edd0),
              ),
              Positioned(
                top: 100,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    heightFactor: 1.0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                            color: Colors.grey,//阴影颜色
                            blurRadius: 4.0,//阴影大小
                          )
                        ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Offstage(
                            offstage: logined,
                            child: Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: Image.asset('images/avator.png'),
                                ),
                                Text('立即登录',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),)
                              ],
                            ),
                          ),
                          Offstage(
                            offstage: !logined,
                            child: Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: Image.asset('images/avator.png'),
                                ),
                                Text('冯侠',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),)
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(right: 10,top: 10, bottom: 10),
                                  child: Image.asset('images/coupon.png')
                              ),
                              Text('优惠券',style: TextStyle(
                                fontSize: 20,
                              ))
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(right: 10),
                                  child: Image.asset('images/fuwu.png')
                              ),
                              Text('联系客服',style: TextStyle(
                                fontSize: 20,
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(children: <Widget>[
                    Expanded(child: RaisedButton(
                     child: Text('退出登录'),
                      color: Colors.white,
                      textColor: Colors.brown,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      splashColor: Colors.lightBlue,
                      onPressed: _launchURL,
                    ))
                  ],),
                ),
                top: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
  _launchURL() async {
    const url = 'https://flutter.io';
    await launch(url);
  }
}
