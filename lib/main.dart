import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:tuan_s_application2/theme/theme_helper.dart';
import 'package:tuan_s_application2/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  // ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'tuan_s_application2',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginScreen1IphoneThirteenScreen,
      routes: AppRoutes.routes,
    );
  }
}
