import 'package:flutter/material.dart';

abstract class BaseNavigatorStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setAppBar(context),
      body: setBody(context),
    );
  }

  PreferredSizeWidget setAppBar(BuildContext context);

  Widget setBody(BuildContext context);

  AppBar getAppBar(){

  }

}
