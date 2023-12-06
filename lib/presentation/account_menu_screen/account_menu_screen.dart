import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

class AccountMenuScreen extends StatelessWidget {
  const AccountMenuScreen({Key? key})
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
              _buildAvatarSection(context),
              SizedBox(height: 87.v),
              _buildUserDetailsSection(context),
              SizedBox(height: 39.v),
              _buildLoginActivitySection(context),
              SizedBox(height: 89.v),
              _buildCalendarSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvatarSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      decoration: AppDecoration.fillIndigo400.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 75.v),
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 76.v,
            width: 61.h,
          ),
          SizedBox(height: 14.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 51.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 11.v),
                SizedBox(
                  width: 233.h,
                  child: Text(
                    "Name: Nguyen Duc Tuan Dat\nID: 21127590",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserDetailsSection(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User Details",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Email",
              style: CustomTextStyles.labelLargeBluegray900,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "ndtdat21@clc.fitus.edu.vn (Visible to other course participants)",
              style: CustomTextStyles.labelSmallGray700,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Country",
              style: CustomTextStyles.labelLargeBluegray900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Viet Nam",
              style: CustomTextStyles.labelSmallGray700,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "City/town",
              style: CustomTextStyles.labelLargeBluegray900,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Ho Chi Minh City",
              style: CustomTextStyles.labelSmallGray700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginActivitySection(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login Activity",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          SizedBox(height: 12.v),
          Text(
            "First access to site",
            style: CustomTextStyles.labelLargeBluegray900,
          ),
          SizedBox(height: 1.v),
          Text(
            "Saturday, 2 October 2021, 10:42 AM (2 years 64 days)",
            style: CustomTextStyles.labelSmallGray700,
          ),
          SizedBox(height: 10.v),
          Text(
            "Last access to site",
            style: CustomTextStyles.labelLargeBluegray900,
          ),
          SizedBox(height: 1.v),
          Text(
            "Tuesday, 5 December 2023, 12:34 PM (16 secs)",
            style: CustomTextStyles.labelSmallGray700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return Container(
      height: 112.v,
      width: 388.h,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 6.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup284,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 65.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 33.h,
                      top: 23.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgIconFooterNotificationOffGray300,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "Message",
                          style: CustomTextStyles.labelSmallGray300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 7.v,
                right: 2.h,
              ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    imagePath:
                                        ImageConstant.imgVectorGray30016x27,
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
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 23.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconFooterAccountOffIndigo400,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 3.h),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Account",
                    style: CustomTextStyles.labelSmallIndigo400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
