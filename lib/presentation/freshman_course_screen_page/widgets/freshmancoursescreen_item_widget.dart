import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FreshmancoursescreenItemWidget extends StatelessWidget {
  const FreshmancoursescreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.v),
          Container(
            width: 92.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Text(
              "Introduction to Programming",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 26.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle72,
            height: 6.v,
            width: 130.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Completed",
              style: CustomTextStyles.bodySmallBluegray90001,
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 30.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "12",
                          style: CustomTextStyles.labelSmallBluegray90001,
                        ),
                        TextSpan(
                          text: "/12 weeks",
                          style: CustomTextStyles.labelSmallBluegray40001,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgButtonPlay,
                  height: 46.v,
                  width: 47.h,
                  margin: EdgeInsets.only(left: 45.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
