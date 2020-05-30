import 'package:flutter/material.dart';

import 'responsive.dart/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Container(
                margin: EdgeInsets.all(10),
                child: Text(sizingInformation.getText())),
          ),
        );
      },
    );
  }
}
