import 'package:flutter/material.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),

      title: getTitle(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
