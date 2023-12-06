import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/presentation/course_menu_page/course_menu_page.dart';
import 'package:tuan_s_application2/presentation/freshman_course_screen_page/freshman_course_screen_page.dart';
import 'package:tuan_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:tuan_s_application2/widgets/custom_elevated_button.dart';

class CanlendarMenuScreen extends StatelessWidget {
  CanlendarMenuScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Column(
            children: [
              SizedBox(height: 69.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "Calendar",
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 78.v),
                        _buildDatePickerHuman(context),
                        SizedBox(height: 229.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup304,
                          height: 112.v,
                          width: 388.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildNavCourse(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildDatePickerHuman(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "December 2023",
              style: CustomTextStyles.titleLargeBlack900Black,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mon",
                  style: CustomTextStyles.bodySmallGray80099,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Tue",
                    style: CustomTextStyles.bodySmallGray80099,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "Wed",
                    style: CustomTextStyles.bodySmallGray80099,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "Thu",
                    style: CustomTextStyles.bodySmallGray80099,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "Fri",
                    style: CustomTextStyles.bodySmallGray80099,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "Sat",
                    style: CustomTextStyles.bodySmallGray80099,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Sun",
                    style: CustomTextStyles.bodySmallGray80099,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 18.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  child: Text(
                    "28",
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "29",
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "30",
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 29.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "31",
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ),
                CustomElevatedButton(
                  width: 46.h,
                  text: "1",
                  margin: EdgeInsets.only(left: 16.h),
                  buttonStyle: CustomButtonStyles.fillRedD,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "2",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  child: Text(
                    "3",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 15.h,
            ),
            child: _buildWeekDaysRow(
              context,
              labelOne: "4",
              labelTwo: "5",
              labelThree: "6",
              labelFour: "7",
              labelFive: "8",
              labelSix: "9",
              labelSeven: "10",
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildWeekDaysRow(
              context,
              labelOne: "11",
              labelTwo: "12",
              labelThree: "13",
              labelFour: "14",
              labelFive: "15",
              labelSix: "16",
              labelSeven: "17",
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 11.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "18",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "19",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "20",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "21",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "22",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "23",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "24",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "25",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "26",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "27",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "28",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "29",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "30",
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "31",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
                Text(
                  "2",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
                Text(
                  "3",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
                Text(
                  "4",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
                Text(
                  "5",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
                Text(
                  "6",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
                Text(
                  "7",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavCourse(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildWeekDaysRow(
    BuildContext context, {
    required String labelOne,
    required String labelTwo,
    required String labelThree,
    required String labelFour,
    required String labelFive,
    required String labelSix,
    required String labelSeven,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelOne,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          labelTwo,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          labelThree,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          labelFour,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          labelFive,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          labelSix,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          labelSeven,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
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
