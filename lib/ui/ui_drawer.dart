import 'package:flutter/material.dart';
import '../constant/route.dart';

class UiDrawer extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;

  UiDrawer({this.color: Colors.green, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(color: Colors.white70, fontSize: 30),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.white54),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(color: color),
          ),
          ListTile(
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(AppRoutes.dashboard);
              }),
          ListTile(
              title: Text('All Schedule'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(AppRoutes.all);
              }),
          Divider(),
          ListTile(
              title: Text('Logout'),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.of(context).pushNamed(UiRoutes.home);
              })
        ],
      ),
    );
  }
}
