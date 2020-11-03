
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum TabItem { home, discovery, notifications, profile }

class BottomNavigation extends StatelessWidget{
  BottomNavigation({this.currentTab, this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _homeTab(),
              _discoverTab(),
              SizedBox(width: 50), // The dummy child
              _notificationsTab(),
              _profileSettingsTab()
            ],
          ),
        ));
  }


  Widget _homeTab() =>
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: IconButton(
            icon: Icon(Icons.home),
            color: _colorTabMatching(item: TabItem.home),
            onPressed: () {
              onSelectTab(
                TabItem.values[0],
              );
            }),
      );

  Widget _discoverTab() =>
      IconButton(
          icon: Icon(Icons.fiber_new),
          color: _colorTabMatching(item: TabItem.discovery),
          onPressed: () {
            onSelectTab(
              TabItem.values[1],
            );
          }
      );

  Widget _notificationsTab() => IconButton(
      icon: Icon(Icons.notifications),
      color: _colorTabMatching(item: TabItem.notifications),
      onPressed: () {
        onSelectTab(
          TabItem.values[2],
        );
      });

  Widget _profileSettingsTab() => IconButton(
      icon: Icon(Icons.person),
      color: _colorTabMatching(item: TabItem.profile),
      onPressed: () {
        onSelectTab(
          TabItem.values[3],
        );
      });

  Color _colorTabMatching({TabItem item}) {
    return currentTab == item
        ? Colors.blue
        : Colors.blue.withOpacity(0.25);
  }

}