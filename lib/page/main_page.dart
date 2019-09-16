import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umpisa_room/core.dart';

import './all/all_page.dart';
import './dashboard/dashboard_page.dart';
import './login/login_page.dart';
import './home/home_page.dart';
import './testing/testing_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (_) => ScheduleProvider()),
        ],
        child: MaterialApp(
          title: AppTerms.appName,
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          initialRoute: AppRoutes.home,
          routes: {
            AppRoutes.home: (BuildContext context) => HomePage(),
            AppRoutes.login: (BuildContext context) => LoginPage(),
            AppRoutes.dashboard: (BuildContext context) => DashboardPage(),
            AppRoutes.all: (BuildContext context) => AllPage(),
            AppRoutes.testing: (BuildContext context) => TestingPage(),
          },
        ));
  }
}
