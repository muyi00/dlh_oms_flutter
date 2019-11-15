import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class GestureDetectorWidget extends BaseStatelessWidget {
  @override
  String getTitle() {
    return 'GestureDetectorWidget';
  }

  @override
  String getAppBarTitle() {
    return 'GestureDetectorWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return GestureDetector(
      child: Text('手势识别'),
      onTap: () {
        print('点击');
      },
      onDoubleTap: () {
        print('双击');
      },
      onLongPress: () {
        print('长按');
      },
      onHorizontalDragStart: (DragStartDetails details) {
        print('开始水平滑动');
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        print('结束水平滑动');
      },
    );
  }
}
