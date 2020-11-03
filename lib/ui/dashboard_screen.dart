


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DashboardScreen();
  }

}

class _DashboardScreen extends State<DashboardScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard title"),),
      body: Center(
        child: Text("Dashboard screen",style: TextStyle(fontSize: 22, color:Colors.black),),
      ),
    );
  }

}