import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tuan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CourseoneItemWidget extends StatelessWidget {
  const CourseoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 335.h,
        padding: EdgeInsets.all(14.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup251,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 71.v,
              width: 68.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 35.h,
                bottom: 31.v,
              ),
              child: Column(
                children: [
                  Text(
                    "Course 1",
                    style: CustomTextStyles.labelLargeMedium,
                  ),
                  SizedBox(height: 10.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconPeople,
                        height: 10.v,
                        width: 8.h,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "Teacher 1",
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
      ),
    );
  }
}
