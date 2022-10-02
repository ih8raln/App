import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context,widget!)) ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: HomePage(), 
    );
  }
}
