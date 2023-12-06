import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tuan_s_application2/core/app_export.dart';
import 'package:tuan_s_application2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class NotificationScreenPage extends StatefulWidget {
  const NotificationScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationScreenPageState createState() => NotificationScreenPageState();
}

class NotificationScreenPageState extends State<NotificationScreenPage>
    with AutomaticKeepAliveClientMixin<NotificationScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    children: [
                      _buildIconRow(context),
                      SizedBox(height: 51.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse70,
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                      ),
                      Spacer(),
                      _buildCalendarRow(context),
                    ],
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
  Widget _buildIconRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 14.h,
        right: 18.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 14.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 51.adaptSize,
              width: 51.adaptSize,
              padding: EdgeInsets.all(15.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 7.v,
              right: 21.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 224.h,
                  child: Text(
                    "CLC2324_CSC14005_21KHMT1: [Laboratory working] New updated deadline for all labs",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBluegray90001,
                  ),
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconTime,
                      height: 11.adaptSize,
                      width: 11.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Just now",
                        style: CustomTextStyles.bodySmallBluegray2008,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarRow(BuildContext context) {
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
                        SizedBox(height: 6.v),
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
                    padding: EdgeInsets.only(right: 6.h),
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
                        SizedBox(height: 3.v),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 11.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgNavHome,
                                    height: 21.v,
                                    width: 22.h,
                                  ),
                                  SizedBox(height: 12.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Home",
                                      style: CustomTextStyles.labelSmallGray300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 41.h),
                              child: Column(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVectorGray300,
                                    height: 8.v,
                                    width: 27.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  SizedBox(height: 3.v),
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
                                          margin: EdgeInsets.only(bottom: 30.v),
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
                      SizedBox(height: 11.v),
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
