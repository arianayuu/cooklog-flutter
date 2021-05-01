import 'package:cooklog/routing/route_names.dart';
import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Tentang', AboutRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Bantuan', HelpRoute),
            ],
          )
        ],
      ),
    );
  }
}
