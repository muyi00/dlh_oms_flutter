import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlexWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'FlexWidget';
  }

  @override
  String getTitle() {
    return 'FlexWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return getFlex4();
  }
}

Flex getFlexColor(Axis direction, MainAxisAlignment mainAxisAlignment,
    {CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center}) {
  return Flex(
    direction: direction,
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    verticalDirection: VerticalDirection.up,
    children: <Widget>[
      Container(
        width: 50,
        height: 20,
        color: Colors.yellow,
      ),
      Container(
        width: 100,
        height: 70,
        color: Colors.green,
      ),
      Container(
        width: 60,
        height: 50,
        color: Colors.blue,
      )
    ],
  );
}

//Flexible getFlexible1() {
//  return Flexible(
//    child: Container(
//      color: Colors.yellow,
//      child: Text('使用 Flexible 来包裹 子Widget'),
//    ),
//  );
//}
//
//Flexible getFlexible2() {
//  return Expanded(
//    child: Container(
//      color: Colors.yellow,
//      child: Text('使用 Expanded 来包裹 子Widget'),
//    ),
//  );
//}

Flex getLongText() {
  return Flex(
    direction: Axis.vertical,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
          'Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!')
    ],
  );
}

Flex getFlex1() {
  return Flex(
    direction: Axis.vertical,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Axis.horizontal'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.start),
      Text('Axis.vertical'),
      getFlexColor(Axis.vertical, MainAxisAlignment.start),
      Text(
          'Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!Hello Flutter!'),
    ],
  );
}

Flex getFlex2() {
  return Flex(
    direction: Axis.vertical,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('MainAxisAlignment.start'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.start),
      Text('MainAxisAlignment.end'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.end),
      Text('MainAxisAlignment.center'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.center),
      Text('MainAxisAlignment.spaceBetween'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.spaceBetween),
      Text('MainAxisAlignment.spaceAround'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.spaceAround),
      Text('MainAxisAlignment.spaceEvenly'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.spaceEvenly),
    ],
  );
}

Flex getFlex3() {
  return Flex(
    direction: Axis.vertical,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('CrossAxisAlignment.start'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start),
      Text('CrossAxisAlignment.end'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end),
      Text('CrossAxisAlignment.center'),
      getFlexColor(Axis.horizontal, MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center),
//      Text('CrossAxisAlignment.stretch'),
//      getFlexColor(Axis.horizontal, MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.stretch),
//      Text('CrossAxisAlignment.baseline'),
//      getFlexColor(Axis.horizontal, MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.baseline),
    ],
  );
}

Flex getFlex4(){
  return Flex(
    direction: Axis.horizontal,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Expanded (
        flex: 1,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.yellow,
        ),
      ),
      Expanded (
        flex: 2,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
      ),
    ],
  );
}

