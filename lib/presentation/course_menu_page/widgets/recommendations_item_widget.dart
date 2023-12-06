import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class RecommendationsItemWidget extends StatelessWidget {
  const RecommendationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.h,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 90.v,
          width: 170.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 82.v,
                  width: 170.h,
                  decoration: BoxDecoration(
                    color: appTheme.lightBlue50,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13.h),
                      topRight: Radius.circular(13.h),
                      bottomLeft: Radius.circular(12.h),
                      bottomRight: Radius.circular(12.h),
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 90.v,
                width: 116.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 1.h),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 25.v,
                  width: 87.h,
                  margin: EdgeInsets.only(bottom: 9.v),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle82,
                        height: 25.v,
                        width: 87.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            "Freshman",
                            style: CustomTextStyles.labelSmallIndigoA400,
                          ),
                        ),
                      ),
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
}
