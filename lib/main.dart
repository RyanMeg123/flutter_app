import 'package:flutter/material.dart';
import 'home_widget.dart';



class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Home(),
    );
  }
}


void main()=>runApp(App());