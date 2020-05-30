import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String title;

  const HomeWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(title)),
    );
  }
}
