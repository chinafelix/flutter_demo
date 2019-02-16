import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:happy_apartment/pages/lists.dart';


class Home extends StatefulWidget {
  _Home createState ()=> new _Home();
}

class _Home extends State<Home> {
  var imgs = [
    {'path': 'images/a.jpg'},
    {'path': 'images/b.jpg'}
  ];
  var a = [
    {
      'path': 'images/house_a.jpg',
      'name': '长龙社区',
      'address': '深圳市龙岗区布吉西路93号',
      'price': '￥2000~2500'
    },
    {
      'path': 'images/house_b.jpg',
      'name': '嘉禾望岗',
      'address': '广州市海珠区东环路89号',
      'price': '￥2000~2500'
    },
    {
      'path': 'images/house_c.jpg',
      'name': '上社旺龙小区',
      'address': '广州市天河区天河公园附近',
      'price': '￥2000~2500'
    },
    {
      'path': 'images/house_d.png',
      'name': '车陂大幅小区',
      'address': '深圳市龙岗区布吉西路93号',
      'price': '￥2000~2500'
    },
  ];

  var services = [
    {
      'path': 'images/fasha.png',
      'name': '品质家居',
      'title': '品质家居智能家居',
      'color': '0xfff9f8ef'
    },
    {
      'path': 'images/xichenqi.png',
      'name': '专业维修保洁',
      'title': '驻点人员及时到位',
      'color': '0xffeeffed'
    },
    {
      'path': 'images/food.png',
      'name': '美味餐厅',
      'title': '专业厨师打造美味',
      'color': '0xffeafdff'
    },
    {
      'path': 'images/jianshen.png',
      'name': '日常健身',
      'title': '多种健身器材随意',
      'color': '0xfffef8f7'
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('乐乎青年公寓',style: TextStyle(color: Colors.black),),
      ),
      body: ListView(
        children: <Widget>[
          _SwiperComponent(),         //轮播图
          _NavigationComponent(),     //“在线找房”等导航组件
          _RecommandComponent(),      //推荐社区
          _IndexComponent(),           //乐乎指数
          _ServiceComponent()           //乐乎服务
        ],
      ),
    );
  }

  Widget _ServiceComponent(){
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('乐乎服务',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          Container(
            height: 400,
            child: GridView.count(
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: _getServices(services),
            ),
          )
        ],
      ),
    );
  }

  List<Container> _getServices(obj){
    return List.generate(obj.length, (int index)=> Container(
      child: Container(
        color: Color(0xffeafdff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(obj[index]['path'], fit: BoxFit.fitWidth,width: 100,),
            Text(obj[index]['name']),
            Text(obj[index]['title'],style: TextStyle(
              color: Colors.grey[500]
            ),),
          ],
        ),
      ),
    ));
  }

  Widget _IndexComponent(){
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('乐乎指数',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ClipRRect(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.46,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      begin: const Alignment(-1.0, 0.0),
                      end: const Alignment(0.6, 0.0),
                      colors: <Color>[
                        const Color(0xfffdb571),
                        const Color(0xfffa7874)
                      ],
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('50000+',style: TextStyle(
                                color: Colors.white
                              ),),
                              Text('已入住乐友',style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        ),
                        Icon(Icons.group,color: Colors.white),
                      ],
                    ),
                  ),
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),ClipRRect(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.46,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      begin: const Alignment(-1.0, 0.0),
                      end: const Alignment(0.6, 0.0),
                      colors: <Color>[
                        const Color(0xff90f1f7),
                        const Color(0xff20c0dd)
                      ],
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('400+',style: TextStyle(
                                  color: Colors.white
                              ),),
                              Text('已举办活动',style: TextStyle(
                                  color: Colors.white
                              ))
                            ],
                          ),
                        ),
                        Icon(Icons.group,color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _RecommandComponent (){
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('推荐社区',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 500),
                        pageBuilder: (BuildContext context, Animation animation,
                            Animation secondaryAnimation){
                          return new FadeTransition(opacity: animation,
                            child: Lists(),
                          );
                        }
                    ));
                  },
                  child: Row(
                    children: <Widget>[
                      Text('全部门店'),
                      Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey[500],)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 260,
            padding: EdgeInsets.only(top: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: false,
              itemCount: a.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        child: Image.asset(a[index]['path'], fit: BoxFit.fitWidth,),
                      ),
                      Text(a[index]['name'],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(a[index]['address'],
                        style: TextStyle(
                            color: Colors.grey[400]
                        ),
                      ),
                      Text(a[index]['price'],
                        style: TextStyle(fontSize: 16,color: Colors.grey[600]),
                      ),
                    ],
                  ),
                );
              },
            )
          )
        ],
      ),
    );
  }
  /**
   *  轮播图下方的导航组件
   */
  Widget _NavigationComponent (){
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
             Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    boxShadow: [
                      BoxShadow (
                        color: Colors.grey[300],
                        offset: new Offset(0.0, 0.0),
                        blurRadius: 2.0,
                      ),
                      BoxShadow (
                        color: Colors.grey[300],
                        offset: new Offset(0.0, 0.0),
                        blurRadius: 2.0,
                      )
                    ]
                ),
             ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(
                  width: 1.0,style: BorderStyle.solid,
                  color: Colors.grey[300]
              ))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context,PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 500),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation){
                        return new FadeTransition(opacity: animation,
                          child: Lists(),
                        );
                      }
                  ));
                },
                child: Column(
                  children: <Widget>[
                    Image.asset('images/avator.png'),
                    Text('在线找房')
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Column(
                  children: <Widget>[
                    Image.asset('images/coupon.png'),
                    Text('新签有礼')
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Column(
                  children: <Widget>[
                    Image.asset('images/fuwu.png'),
                    Text('社区文化')
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  /**
   * 顶部轮播图组件
   */
  Widget _SwiperComponent (){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: Swiper(
        itemCount: imgs.length,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              color: Colors.lightBlueAccent,
              activeColor: Colors.blue,
            )
        ),
        autoplay: true,
        itemBuilder: _SwiperBuilder,
      ),
    );
  }

  Widget _SwiperBuilder(BuildContext context, int index) {
    return Image.asset(
      imgs[index]['path'],
      fit: BoxFit.fill,
    );
  }

}