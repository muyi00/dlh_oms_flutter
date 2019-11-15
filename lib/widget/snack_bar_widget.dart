import 'package:flutter/material.dart';

class SnackBarBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBarWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBarWidget'),
        ),
        body: Builder(
          builder: (context) => RaisedButton(
                child: Text('Show SnackBar'),
                onPressed: () {
                  showSnackBar(context, 'SnackBar',seconds: 10);
//                  Scaffold.of(context).showSnackBar(SnackBar(
//                      content: Text('SnackBar'),
//                      duration: Duration(seconds: 5)));
                },
              ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String content, {int seconds = 3}) {
  Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('SnackBar'), duration: Duration(seconds: seconds)));
}

class SnackBarNoBuilerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBarWidget",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("SnackBarWidget")),
          //body: SnackBarWidget('显示提示', '我是提示语')),
          body: SnackBarWidget('显示提示', '我是提示语')),
    );
  }
}

class SnackBarWidget extends StatelessWidget {
  String title;
  String content;
  int seconds = 3;

  SnackBarWidget(
    this.title,
    this.content, {
    this.seconds = 3,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(title ?? 'Show SnackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(content ?? 'SnackBar'),
            duration: Duration(seconds: seconds)));
      },
    );
  }
}
