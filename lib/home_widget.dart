import 'package:flutter/material.dart';
import 'index/index.dart';
import 'search.dart';
import 'find.dart';
import 'myself.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    new Index(),
    new Search(),
    new Find(),
    new Myself()
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onPageChanged,
        currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon:new Icon(Icons.home),
              title:new Text('首页'),
              backgroundColor: Colors.amber
            ),
            new BottomNavigationBarItem(
              icon:new Icon(Icons.search),
              title:new Text('搜索'),
                backgroundColor: Colors.amber
            ),
            new BottomNavigationBarItem(
              icon:new Icon(Icons.find_in_page),
              title:new Text('发现'),
                backgroundColor: Colors.amber
            ),
            new BottomNavigationBarItem(
              icon:new Icon(Icons.person),
              title:new Text('我的'),
                backgroundColor: Colors.amber
            ),
          ],
      ),
    );
  }
  void onPageChanged(int index){
    setState((){
      _currentIndex = index;
    });
  }
}

