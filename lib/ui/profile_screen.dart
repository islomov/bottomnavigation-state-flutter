import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Text(
          "Home screen item:$index",
          style: TextStyle(fontSize: 16),
        );
      },
    ));
  }
}
