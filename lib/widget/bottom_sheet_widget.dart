import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends BaseStatelessWidget {
  @override
  String getTitle() {
    return 'BottomSheetWidget';
  }

  @override
  String getAppBarTitle() {
    return 'BottomSheetWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('showBottomSheet'),
          onPressed: () {
            showBottomSheet(
                context: context,
                builder: (context) => getBottomSheet(context));
          },
        ),
        RaisedButton(
          child: Text('showModalBottomSheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => getBottomSheet(context));
          },
        ),
      ],
    );
  }
}

BottomSheet getBottomSheet(BuildContext context) {
  return BottomSheet(
    onClosing: () {},
    builder: (context) => Container(
          height: 200.0,
          color: Colors.blue,
          child: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('dismissBottomSheet'),
            ),
          ),
        ),
  );
}
