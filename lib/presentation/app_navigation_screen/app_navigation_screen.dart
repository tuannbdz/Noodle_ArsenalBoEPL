import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "initial screen - iphone Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.initialScreenIphoneThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 & 14 - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login screen 1 - iphone Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.loginScreen1IphoneThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login screen 2 - iphone Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.loginScreen2IphoneThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "menu home",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "freshman course screen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.freshmanCourseScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "message screen other user",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageScreenOtherUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " no message screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.noMessageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notification screen - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.notificationScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "no notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.noNotificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "account menu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountMenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "canlendar menu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.canlendarMenuScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
