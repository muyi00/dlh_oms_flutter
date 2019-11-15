import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LinearLayoutWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'LinearLayoutWidget';
  }

  @override
  String getTitle() {
    return 'LinearLayoutWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('测试一下'),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.green,
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
                height: 50,
                width: 50,
              ),
            ),
            Expanded(
              child: Text(
                  '11111111111111111111111111111111111111111111111111111111111111111111'),
            ),
          ],
        ),
      ],
    );
  }
}
