

import 'package:flutter/widgets.dart';

class NotificationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NotificationScreenState();
  }

}

class _NotificationScreenState extends State<NotificationScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("Notification screen",style: TextStyle(fontSize: 22),),),);
  }

}