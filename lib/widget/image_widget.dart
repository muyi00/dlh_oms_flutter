import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImageWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ImageWidget'),
        ),
        body: Column(
          children: <Widget>[
            //本地资源
            Image.asset("images/ico_front.png"),
            //网络图片
            Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557781801455&di=17f9f2fc3ded4efb7214d2d8314e8426&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg"),
            //
            Image.asset("images/ico_what.png"),
            //Icon
            Icon(
              Icons.android,
              size: 50.0,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
