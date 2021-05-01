import 'package:cooklog/routing/route_names.dart';
import 'package:cooklog/widgets/navigation_drawer/drawer_item.dart';
import 'package:cooklog/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Tentang', Icons.videocam, AboutRoute),
          DrawerItem('Bantuan', Icons.help, HelpRoute),
        ],
      ),
    );
  }
}
