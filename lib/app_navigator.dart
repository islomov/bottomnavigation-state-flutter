


import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ui/discover_screen.dart';
import 'package:flutter_app/ui/home_screen.dart';
import 'package:flutter_app/ui/notification_screen.dart';
import 'package:flutter_app/ui/profile_screen.dart';

import 'bottom_navigation.dart';
class AppNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class AppNavigator extends StatelessWidget{
  AppNavigator({this.navigatorKey, this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {dynamic item}) {
    return {
      AppNavigatorRoutes.root: (context) => _buildRootWidget(context),
      AppNavigatorRoutes.detail: (context) => _buildDetailWidget(context, item)
    };
  }

  Widget _buildRootWidget(BuildContext context) {
    if (tabItem == TabItem.home) {
      return new HomeScreen();
    } else if (tabItem == TabItem.discovery) {
      return new DiscoverScreen();
    } else if (tabItem == TabItem.notifications) {
      return new NotificationScreen();
    } else {
      return new ProfileScreen();
    }
  }

  Widget _buildDetailWidget(BuildContext context, dynamic item) {
    // if (item is StringFlixVideoExpandItem) {
    //   return new ExpandVideoScreen(item);
    // }
    return Container();
  }


  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: AppNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return CupertinoPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }

}