import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

/***
 * 流式布局
 */
class WrapWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'WrapWidget';
  }

  @override
  String getTitle() {
    return 'WrapWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 8.0,
      runSpacing: 12.0,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.start,
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('A'),
          ),
          label: Text('AAAAAAAA'),
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('B'),
          ),
          label: Text('BBBBBB'),
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('C'),
          ),
          label: Text('CCCCCCCCC'),
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('D'),
          ),
          label: Text('DDDDDDDD'),
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('E'),
          ),
          label: Text('EEEEEEEE'),
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('F'),
          ),
          label: Text('FFFFFFFFFFFFF'),
        ),
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('G'),
          ),
          label: Text('GGGGGGGGGGGGGGGGGGGG'),
        ),
      ],
    );
  }
}
