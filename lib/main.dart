import 'package:cooklog/locator.dart';
import 'package:cooklog/views/layout_tempate/layout_template.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'cooklog Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
        ),
        home: LayoutTemplate());
  }
}
