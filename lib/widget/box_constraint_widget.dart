import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxConstraintWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'BoxConstraintWidget';
  }

  @override
  String getTitle() {
    return 'BoxConstraintWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return Container(
      //Loose Constraints（松散约束）
//      constraints: BoxConstraints.tight(Size(100, 100)),
//      constraints: BoxConstraints.loose(Size(100, 100)),
//      constraints: BoxConstraints.tightForFinite(),

      //Bounded Constraints（有界约束）
//      constraints: BoxConstraints(minWidth: 100, maxWidth: 300, minHeight: 0, maxHeight: 300),

      //Unbounded Constraints（无界约束）
//      constraints: BoxConstraints(minWidth: 10,maxWidth: double.infinity,minHeight: 100,maxHeight: double.infinity),

      //Infinite Constraints（无限约束）
      constraints: BoxConstraints.expand(),

      color: Colors.red,
      child: Text(
        "HelloWorld",
        style: TextStyle(
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
