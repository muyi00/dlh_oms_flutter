import 'package:dlh_oms_flutter/widget/bottom_sheet_widget.dart';
import 'package:dlh_oms_flutter/widget/box_constraint_widget.dart';
import 'package:dlh_oms_flutter/widget/dialog_widget.dart';
import 'package:dlh_oms_flutter/widget/flex_widget.dart';
import 'package:dlh_oms_flutter/widget/form_widget.dart';
import 'package:dlh_oms_flutter/widget/gesture_detector_widget.dart';
import 'package:dlh_oms_flutter/widget/image_widget.dart';
import 'package:dlh_oms_flutter/widget/linear_layout_widget.dart';
import 'package:dlh_oms_flutter/widget/popup_menu_button_widget.dart';
import 'package:dlh_oms_flutter/widget/scroll_view_widget.dart';
import 'package:dlh_oms_flutter/widget/snack_bar_widget.dart';
import 'package:dlh_oms_flutter/widget/stack_widget.dart';
import 'package:dlh_oms_flutter/widget/text_field_widget.dart';
import 'package:dlh_oms_flutter/widget/wrap_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(ScrollViewWidget());

class AppLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text("登录页面"),
        ),
      ),
    );
  }
}
