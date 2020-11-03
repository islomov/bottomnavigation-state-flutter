

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenDetailState();
  }


}

class _HomeScreenDetailState extends State<HomeScreenDetail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen detail"),
      ),
      body: Center(child: Text("Detail home screen",style: TextStyle(fontSize: 22,color: Colors.black),),),
    );
  }

}