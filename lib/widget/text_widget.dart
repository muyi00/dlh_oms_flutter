import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextWidget'),
        ),
        body: Column(
          children: <Widget>[
            Text('TextWidget'),
            Text(
              'TextWidget',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                backgroundColor: Colors.yellow,
              ),
            ),
            Text(
              'TextWidget',
              style: TextStyle(
                  fontSize: 40.0,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.red),
            ),
            Text(
              'TextWidget',
              textAlign: TextAlign.left,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: '2019年',
                    style: TextStyle(fontSize: 25.0, color: Colors.blue)),
                TextSpan(
                    text: '11月',
                    style: TextStyle(fontSize: 25.0, color: Colors.yellow)),
                TextSpan(
                    text: '14日',
                    style: TextStyle(fontSize: 25.0, color: Colors.green)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
