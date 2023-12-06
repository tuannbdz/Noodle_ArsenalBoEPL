import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/presentation/course_menu_page/course_menu_page.dart';
import 'package:tuan_s_application2/presentation/freshman_course_screen_page/freshman_course_screen_page.dart';
import 'package:tuan_s_application2/widgets/custom_bottom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FreshmanCourseScreenContainerScreen extends StatelessWidget {
  FreshmanCourseScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.freshmanCourseScreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildFooterHome(context),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildFooterHome(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.freshmanCourseScreenPage;
      case BottomBarEnum.Course:
        return "/";
      case BottomBarEnum.Calendar:
        return AppRoutes.courseMenuPage;
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.freshmanCourseScreenPage:
        return FreshmanCourseScreenPage();
      case AppRoutes.courseMenuPage:
        return CourseMenuPage();
      default:
        return DefaultWidget();
    }
  }
}
