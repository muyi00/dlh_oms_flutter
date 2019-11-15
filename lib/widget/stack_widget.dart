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
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.topEnd,
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Text('Hello Flutter'),
            ],
          ),
        ],),
      ],
    );
  }
}
