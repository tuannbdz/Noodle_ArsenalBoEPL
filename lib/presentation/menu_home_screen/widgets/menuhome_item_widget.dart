import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class MenuhomeItemWidget extends StatelessWidget {
  const MenuhomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillIndigo400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 34.v,
                    width: 36.h,
                    margin: EdgeInsets.only(bottom: 6.v),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                  Container(
                    width: 98.h,
                    margin: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "Introduction to Software",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.31,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.v),
            CustomImageView(
              imagePath: ImageConstant.imgLineGray400,
              height: 7.v,
              width: 194.h,
              alignment: Alignment.center,
            ),
            SizedBox(height: 9.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "11 Weeks",
                style: CustomTextStyles.labelLargeLatoWhiteA700SemiBold,
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "5 discussions",
                    style: CustomTextStyles.labelLargeLatoWhiteA700SemiBold13,
                  ),
                  Text(
                    "21CLC03",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
