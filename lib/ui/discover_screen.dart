import 'package:flutter/widgets.dart';

class DiscoverScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DiscoverScreenState();
  }

}


class _DiscoverScreenState extends State<DiscoverScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 70,
              child: Center(child: Text(
                "Discover screen item:$index",
                style: TextStyle(fontSize: 16),
              ),),
            );
          },
        ));  }

}