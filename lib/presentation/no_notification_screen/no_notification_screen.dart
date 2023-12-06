import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tuan_s_application2/core/app_export.dart';

class NoNotificationScreen extends StatelessWidget {
  const NoNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 67.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 353.v,
                  width: 302.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, Dat",
                                style: theme.textTheme.displaySmall,
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "How are you today?",
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Message",
                          style: CustomTextStyles.titleLargeBluegray90001Bold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 56.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text(
                                      "Other user",
                                      style: CustomTextStyles
                                          .bodyLargeBluegray90001,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.v,
                                    width: 141.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                            width: 94.h,
                                            child: Divider(
                                              color: appTheme.indigoA400,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: 140.h,
                                            margin: EdgeInsets.only(
                                              right: 1.h,
                                              bottom: 1.v,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 5.adaptSize,
                                                  width: 5.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    top: 1.v,
                                                    bottom: 17.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.orangeA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      2.h,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Notification",
                                                  style: theme
                                                      .textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 156.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse70,
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.only(left: 101.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgNoNotifcations,
                        height: 122.v,
                        width: 167.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 39.h),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              Text(
                "No Notifications yet!",
                style: CustomTextStyles.labelSmallBluegray90001_1,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 177.h,
                child: Text(
                  "We’ll notify you once we have \nsomething for you ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBluegray200,
                ),
              ),
              Spacer(),
              _buildNotificationSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationSection(BuildContext context) {
    return Container(
      width: 389.h,
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
