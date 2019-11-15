import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DialogWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DialogWidget'),
        ),
        body: Column(
          children: <Widget>[
            Builder(
              builder: (context) => RaisedButton(
                  child: Text('showAboutDialog'),
                  onPressed: () {
                    showAboutDialog(
                        context: context,
                        applicationName: 'Flutter UI Widget -- 对话框',
                        applicationVersion: '1.0.0');
                  }),
            ),
            Builder(
              builder: (context) => RaisedButton(
                    child: Text('SimpleDialog'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => getSimpleDialog(context));
                    },
                  ),
            ),
            Builder(
              builder: (context) => RaisedButton(
                child: Text('AlertDialog'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => getAlertDialog(context));
                },
              ),
            ),
            Builder(
              builder: (context) => RaisedButton(
                child: Text('CupertinoAlertDialog'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => getCupertinoAlertDialog(context));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

SimpleDialog getSimpleDialog(BuildContext context) {
  return SimpleDialog(
    title: Text('SimpleDialog Demo'),
    children: <Widget>[
      SimpleDialogOption(
        child: Text('OK'),
        onPressed: () {
          //关闭 SimpleDialog
          Navigator.of(context).pop();
        },
      ),
      SimpleDialogOption(
        child: Text('CANCEL'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}

AlertDialog getAlertDialog(BuildContext context) {
  return AlertDialog(
    title: Text('AlertDialog'),
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text('商品1'),
          Text('商品2'),
          Text('商品3'),
          Text('商品4'),
          Text('商品5'),
          Text('商品6'),
          Text('商品7'),
          Text('商品8'),
          Text('商品9'),
          Text('商品10'),
          Text('商品1'),
          Text('商品2'),
          Text('商品3'),
          Text('商品4'),
          Text('商品5'),
          Text('商品6'),
          Text('商品7'),
          Text('商品8'),
          Text('商品9'),
          Text('商品10'),
          Text('商品1'),
          Text('商品2'),
          Text('商品3'),
          Text('商品4'),
          Text('商品5'),
          Text('商品6'),
          Text('商品7'),
          Text('商品8'),
          Text('商品9'),
          Text('商品10'),
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text('OK'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      FlatButton(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}

CupertinoAlertDialog  getCupertinoAlertDialog (BuildContext context){
  return CupertinoAlertDialog(
    title: Text('CupertinoAlertDialog'),
    content: Text('This is a CupertinoAlertDialog'),
    actions: <Widget>[
      CupertinoDialogAction(
        child: Text('OK'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      CupertinoDialogAction(
        child: Text('Cancel'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}