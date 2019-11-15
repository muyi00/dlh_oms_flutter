import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextFieldWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextFieldWidget'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onChanged: (String data) {
                //实时获取
                print(data);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: textEditingController,
            )
          ],
        ),
      ),
    );
  }
}
