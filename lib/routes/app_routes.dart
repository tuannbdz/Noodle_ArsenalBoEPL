import 'package:flutter/material.dart';
import 'package:tuan_s_application2/presentation/initial_screen_iphone_thirteen_screen/initial_screen_iphone_thirteen_screen.dart';
import 'package:tuan_s_application2/presentation/iphone_13_14_five_screen/iphone_13_14_five_screen.dart';
import 'package:tuan_s_application2/presentation/login_screen_1_iphone_thirteen_screen/login_screen_1_iphone_thirteen_screen.dart';
import 'package:tuan_s_application2/presentation/login_screen_2_iphone_thirteen_screen/login_screen_2_iphone_thirteen_screen.dart';
import 'package:tuan_s_application2/presentation/menu_home_screen/menu_home_screen.dart';
import 'package:tuan_s_application2/presentation/freshman_course_screen_container_screen/freshman_course_screen_container_screen.dart';
import 'package:tuan_s_application2/presentation/message_screen_other_user_screen/message_screen_other_user_screen.dart';
import 'package:tuan_s_application2/presentation/no_message_screen/no_message_screen.dart';
import 'package:tuan_s_application2/presentation/notification_screen_tab_container_screen/notification_screen_tab_container_screen.dart';
import 'package:tuan_s_application2/presentation/no_notification_screen/no_notification_screen.dart';
import 'package:tuan_s_application2/presentation/account_menu_screen/account_menu_screen.dart';
import 'package:tuan_s_application2/presentation/canlendar_menu_screen/canlendar_menu_screen.dart';
import 'package:tuan_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String initialScreenIphoneThirteenScreen =
      '/initial_screen_iphone_thirteen_screen';

  static const String iphone1314FiveScreen = '/iphone_13_14_five_screen';

  static const String loginScreen1IphoneThirteenScreen =
      '/login_screen_1_iphone_thirteen_screen';

  static const String loginScreen2IphoneThirteenScreen =
      '/login_screen_2_iphone_thirteen_screen';

  static const String menuHomeScreen = '/menu_home_screen';

  static const String courseMenuPage = '/course_menu_page';

  static const String freshmanCourseScreenPage = '/freshman_course_screen_page';

  static const String freshmanCourseScreenContainerScreen =
      '/freshman_course_screen_container_screen';

  static const String messageScreenOtherUserScreen =
      '/message_screen_other_user_screen';

  static const String noMessageScreen = '/no_message_screen';

  static const String notificationScreenPage = '/notification_screen_page';

  static const String notificationScreenTabContainerScreen =
      '/notification_screen_tab_container_screen';

  static const String noNotificationScreen = '/no_notification_screen';

  static const String accountMenuScreen = '/account_menu_screen';

  static const String canlendarMenuScreen = '/canlendar_menu_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    initialScreenIphoneThirteenScreen: (context) =>
        InitialScreenIphoneThirteenScreen(),
    iphone1314FiveScreen: (context) => Iphone1314FiveScreen(),
    loginScreen1IphoneThirteenScreen: (context) =>
        LoginScreen1IphoneThirteenScreen(),
    loginScreen2IphoneThirteenScreen: (context) =>
        LoginScreen2IphoneThirteenScreen(),
    menuHomeScreen: (context) => MenuHomeScreen(),
    freshmanCourseScreenContainerScreen: (context) =>
        FreshmanCourseScreenContainerScreen(),
    messageScreenOtherUserScreen: (context) => MessageScreenOtherUserScreen(),
    noMessageScreen: (context) => NoMessageScreen(),
    notificationScreenTabContainerScreen: (context) =>
        NotificationScreenTabContainerScreen(),
    noNotificationScreen: (context) => NoNotificationScreen(),
    accountMenuScreen: (context) => AccountMenuScreen(),
    canlendarMenuScreen: (context) => CanlendarMenuScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
