import 'package:flutter/material.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: getTitle(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(getAppBarTitle()),
        ),
        body: Builder(
          builder: (context) => setBody(context),
        ),

      ),
    );
  }

  Widget setBody(BuildContext context);

  String getTitle();

  String getAppBarTitle();
}

