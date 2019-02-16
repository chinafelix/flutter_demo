import 'package:flutter/material.dart';


class Lists extends StatefulWidget {
  @override
  _Lists createState() => new _Lists();
}

class _Lists extends State<Lists> {
  var areas = ['不限','天河区','海珠区','萝岗区','越秀区','南沙区','白云区','番禺区'];
  var lines = ['不限','一号线','二号线','三号线','四号线','五号线','六号线','七号线'];
  var prices = ['不限','￥1000-￥1499','￥1500-￥1999','￥2000-￥2499','￥2500-￥2999','￥3000-￥3499','￥3500-￥3999'];
  var hourses = [
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
          title: Text('乐乎城市青年社区',style: TextStyle(color: Colors.black),),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              _RenderSelect(),
              Expanded(
                child: _RenderHouses(),
              )
            ],
          ),
        ),
      ),
    );
  }

  /**
   *  房源列表
   */
  Widget _RenderHouses(){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: hourses.length,
      itemBuilder: (context, index){
        return Card(
          child: Container(
          height: 350,
            width: MediaQuery.of(context).size.width*0.9,
            child:ListView(
              children: <Widget>[
                Image.asset(hourses[index]['path'],fit: BoxFit.contain),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(hourses[index]['name']),
                      Text(hourses[index]['price']),
                    ],
                  ),
                ),
                Text(hourses[index]['address'])
              ],
            ),
          ),
        );
      },
    );
  }

  /**
   *  下拉选择条件的菜单
   */
  Widget _RenderSelect(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              children: <Widget>[
                Text('区域'),
                PopupMenuButton(
                  child: Icon(Icons.arrow_drop_down),
                  onSelected: (value){
                    print(value);
                  },
                  itemBuilder: (BuildContext context){
                    return areas.map((value){
                      return PopupMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList();
                  },
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              children: <Widget>[
                Text('租金'),
                PopupMenuButton(
                  child: Icon(Icons.arrow_drop_down),
                  onSelected: (value){
                    print(value);
                  },
                  itemBuilder: (BuildContext context){
                    return prices.map((value){
                      return PopupMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList();
                  },
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              children: <Widget>[
                Text('地铁'),
                PopupMenuButton(
                  child: Icon(Icons.arrow_drop_down),
                  onSelected: (value){
                    print(value);
                  },
                  itemBuilder: (BuildContext context){
                    return lines.map((value){
                      return PopupMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList();
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}