import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ui/home_screen_detail.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 70,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new HomeScreenDetail(),
                ),
              );
            },
            child: Center(
              child: Text(
                "Home screen item:$index",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        );
      },
    ));
  }
}
