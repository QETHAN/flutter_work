import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      decoration: BoxDecoration(color: Colors.red[50]),
      margin: EdgeInsets.only(top: 100),
      padding: new EdgeInsets.all(15),
      // height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  // padding: EdgeInsets.only(bottom: 8),
                  child: Text("Oeschinen Lake Campground",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ))),
              new Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              new Text('41')
            ],
          )
        ],
      ),
    );

    // 图文
    Widget cardItem = Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.blue[50]),
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(15),
          height: 130,
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'http://a.hiphotos.baidu.com/image/h%3D300/sign=45e16856990a304e4d22a6fae1c9a7c3/ac4bd11373f08202e2518d6d45fbfbedaa641ba4.jpg',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      // decoration: BoxDecoration(color: Colors.grey),
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('这是一个标题这是一个标题这是一个标题',
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(4)),
                            child: Text('标签1', style: TextStyle(fontSize: 10),),
                          )
                        ],
                      )))
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Text('右下角定位'),
        )
      ]
    );

    return new MaterialApp(
        home: new Scaffold(
            body: Column(children: <Widget>[titleSection, cardItem])));
  }
}
