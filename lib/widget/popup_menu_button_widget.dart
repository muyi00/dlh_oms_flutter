import 'package:dlh_oms_flutter/base/BaseStatelessWidget.dart';
import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends BaseStatelessWidget {
  @override
  String getAppBarTitle() {
    return 'PopupMenuButtonWidget';
  }

  @override
  String getTitle() {
    return 'PopupMenuButtonWidget';
  }

  @override
  Widget setBody(BuildContext context) {
    return PopupMenuButton<MenuItem>(
      child: Text('更多'),
      onSelected: (item) {
        print('click' + item.toString());
      },
      itemBuilder: (context) => getMenuItemList(),
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }

List<PopupMenuEntry<MenuItem>> getMenuItemList() {
  return [
    const PopupMenuItem(
      value: MenuItem.menuA,
      child: Text('menu A'),
    ),
    const PopupMenuItem(
      value: MenuItem.menuB,
      child: Text('menu B'),
    ),
    const PopupMenuItem(
      value: MenuItem.menuC,
      child: Text('menu C'),
    ),
    const PopupMenuItem(
      value: MenuItem.menuD,
      child: Text('menu D'),
    ),
  ];
}
