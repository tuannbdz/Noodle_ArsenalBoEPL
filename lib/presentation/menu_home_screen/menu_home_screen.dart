import '../menu_home_screen/widgets/menuhome_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tuan_s_application2/core/app_export.dart';

class MenuHomeScreen extends StatelessWidget {
  const MenuHomeScreen({Key? key})
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
              _buildHiNguyenDucTuan(context),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Recent Views",
                    style: CustomTextStyles.titleLargeBlack900SemiBold,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              SizedBox(
                height: 482.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildFrameEighteen(context),
                    _buildFrameFiftyTwo(context),
                    _buildView(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHiNguyenDucTuan(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 66.v),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 30.v,
              ),
              decoration: AppDecoration.fillIndigo400.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 27.v,
                      bottom: 63.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Nguyen Duc Tuan Dat!",
                          style: CustomTextStyles.titleMediumWhiteA700,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "How are you going?",
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup,
                    height: 76.v,
                    width: 61.h,
                    margin: EdgeInsets.only(
                      right: 4.h,
                      bottom: 63.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 14.h,
                right: 20.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 15.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder13,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time remaining",
                          style: CustomTextStyles.bodyLargeBluegray700,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "Latest Task",
                            style: CustomTextStyles.bodySmallBluegray700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "3 days 21 hours",
                    style: CustomTextStyles.bodySmallIndigo900,
                  ),
                  SizedBox(height: 17.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgLine,
                    height: 7.v,
                    width: 304.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEighteen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 192.v,
        width: 376.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 34.v,
                width: 16.h,
                margin: EdgeInsets.only(
                  left: 123.h,
                  top: 17.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 71.h,
                margin: EdgeInsets.only(top: 15.v),
                child: Text(
                  "Fundamental  of Google Ui/Ux Designs",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 20.h,
                margin: EdgeInsets.only(
                  left: 123.h,
                  bottom: 46.v,
                ),
                child: Text(
                  "28 Videos",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLatoWhiteA700,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 32.h,
                margin: EdgeInsets.only(
                  right: 155.h,
                  bottom: 43.v,
                ),
                child: Text(
                  "10 Exercises",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLatoWhiteA700SemiBold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 25.h,
                margin: EdgeInsets.only(left: 123.h),
                child: Text(
                  "3.5k Reviews",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLatoWhiteA700SemiBold13
                      .copyWith(
                    height: 1.63,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 140.h),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 26.v,
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return MenuhomeItemWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiftyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 192.v,
        width: 376.h,
        margin: EdgeInsets.only(bottom: 98.v),
        padding: EdgeInsets.symmetric(horizontal: 123.h),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 34.v,
                width: 16.h,
                margin: EdgeInsets.only(top: 17.v),
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 71.h,
                margin: EdgeInsets.only(
                  left: 23.h,
                  top: 15.v,
                ),
                child: Text(
                  "Fundamental  of Google Ui/Ux Designs",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 20.h,
                margin: EdgeInsets.only(bottom: 46.v),
                child: Text(
                  "28 Videos",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLatoWhiteA700,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 32.h,
                margin: EdgeInsets.only(
                  right: 31.h,
                  bottom: 43.v,
                ),
                child: Text(
                  "10 Exercises",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLatoWhiteA700SemiBold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 25.h,
                child: Text(
                  "3.5k Reviews",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeLatoWhiteA700SemiBold13
                      .copyWith(
                    height: 1.63,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 389.h,
        margin: EdgeInsets.only(
          top: 370.v,
          right: 1.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 33.h,
          vertical: 6.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup304,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 7.v,
                bottom: 29.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 2.v,
                      width: 26.h,
                      decoration: BoxDecoration(
                        color: appTheme.indigo400,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconFooterHomeOn,
                    height: 21.v,
                    width: 22.h,
                    margin: EdgeInsets.only(left: 1.h),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Home",
                      style: CustomTextStyles.labelSmallIndigo400,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 27,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 25.v,
                bottom: 29.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconFooterCourseOff,
                    height: 20.v,
                    width: 16.h,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "Course",
                    style: CustomTextStyles.labelSmallGray300,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 25,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 11.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup177,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorGray300,
                          height: 8.v,
                          width: 27.h,
                        ),
                        SizedBox(height: 2.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorGray30016x27,
                          height: 16.v,
                          width: 27.h,
                        ),
                      ],
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
            Spacer(
              flex: 23,
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
                    imagePath: ImageConstant.imgIconFooterNotificationOff,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Message",
                    style: theme.textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 22,
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
      ),
    );
  }
}
