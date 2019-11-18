import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

/***
 * 层叠布局
 */
class StackWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'StackWidget';
  }

  @override
  String getTitle() {
    return 'StackWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text("topStart"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text("topCenter"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text("topEnd"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.centerStart,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text("centerStart"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text("center"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text("centerEnd"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text("bottomStart"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text("bottomCenter"),
              ),
            ),
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text("bottomEnd"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
