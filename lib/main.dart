import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  static BuildContext get context => null!;
  final ScaffoldState scaffold = Scaffold.of(context);
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: GradientAppBar(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.pink.shade200,
              Colors.purple,
            ],
          ),
          title: Text(
            'TO DO LIST',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    ));
  }
}
