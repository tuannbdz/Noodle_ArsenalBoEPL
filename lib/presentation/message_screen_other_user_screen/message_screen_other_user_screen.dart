import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:tuan_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:tuan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:tuan_s_application2/widgets/app_bar/custom_app_bar.dart';

class MessageScreenOtherUserScreen extends StatelessWidget {
  const MessageScreenOtherUserScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildFrameTwentyFour(context),
              SizedBox(height: 57.v),
              _buildFrameTwentyFour1(context),
              SizedBox(height: 30.v),
              _buildCalendar(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 166.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            Container(
              height: 62.16999.v,
              width: 121.h,
              margin: EdgeInsets.only(right: 77.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  AppbarTitle(
                    text: "Hi, Dat",
                    margin: EdgeInsets.only(top: 8.v),
                  ),
                  AppbarSubtitleTwo(
                    text: "Message",
                    margin: EdgeInsets.only(
                      right: 28.h,
                      bottom: 32.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            AppbarSubtitleOne(
              text: "How are you today?",
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentyFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 20.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup251,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatarEn,
                height: 49.v,
                width: 51.h,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 7.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Le Nguyen Thai Duong",
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "04:32 pm",
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "Online",
                        style: CustomTextStyles.labelSmallBluegray40002,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Text(
            "I’m gay!",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentyFour1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 20.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatarEn,
                  height: 50.v,
                  width: 51.h,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 7.v,
                      bottom: 10.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nguyen Bao Tuan",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "04:31 pm",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "Online",
                          style: CustomTextStyles.labelSmallBluegray40002,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "I’m fan of Hitler! And I’m gay",
              style: CustomTextStyles.bodySmall8,
            ),
          ),
          SizedBox(height: 36.v),
          Container(
            height: 151.v,
            width: 315.h,
            decoration: BoxDecoration(
              color: appTheme.red5001,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13.h),
                topRight: Radius.circular(13.h),
                bottomLeft: Radius.circular(12.h),
                bottomRight: Radius.circular(12.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Container(
      width: 389.h,
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup304,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70.v,
            width: 253.h,
            margin: EdgeInsets.only(bottom: 29.v),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 69.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Opacity(
                          opacity: 0.05,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup177,
                            height: 52.v,
                            width: 53.h,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "Calendar",
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 2.v,
                            width: 26.h,
                            decoration: BoxDecoration(
                              color: appTheme.indigo400,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 11.v),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgNavHome,
                                    height: 21.v,
                                    width: 22.h,
                                  ),
                                  SizedBox(height: 12.v),
                                  Text(
                                    "Home",
                                    style: CustomTextStyles.labelSmallGray300,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40.h),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVectorGray300,
                                    height: 8.v,
                                    width: 27.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    width: 106.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Column(
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIconFooterCourseOff,
                                                height: 20.v,
                                                width: 16.h,
                                              ),
                                              SizedBox(height: 12.v),
                                              Text(
                                                "Course",
                                                style: CustomTextStyles
                                                    .labelSmallGray300,
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorGray30016x27,
                                          height: 16.v,
                                          width: 27.h,
                                          margin: EdgeInsets.only(bottom: 29.v),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgIconFooterNotificationOffIndigo400,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "Message",
                        style: CustomTextStyles.labelSmallIndigo400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 29.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconFooterAccountOff,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 3.h),
                ),
                SizedBox(height: 10.v),
                Text(
                  "Account",
                  style: theme.textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
