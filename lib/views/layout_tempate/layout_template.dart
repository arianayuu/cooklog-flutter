import 'package:cooklog/locator.dart';
import 'package:cooklog/routing/route_names.dart';
import 'package:cooklog/routing/router.dart';
import 'package:cooklog/services/navigation_service.dart';
import 'package:cooklog/widgets/NavigationBar/navigation_bar.dart';
import 'package:cooklog/widgets/centered_view/centered_view.dart';
import 'package:cooklog/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
            child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
                child: Navigator(
              key: locator<NavigationService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: HomeRoute,
            )),
          ],
        )),
      ),
    );
  }
}
