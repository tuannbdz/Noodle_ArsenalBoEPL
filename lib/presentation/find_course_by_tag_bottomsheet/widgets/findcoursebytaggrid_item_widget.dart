import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FindcoursebytaggridItemWidget extends StatelessWidget {
  const FindcoursebytaggridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.v,
      width: 110.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTagsOnBackgroundGray10043x131,
            height: 43.v,
            width: 110.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 11.v),
              child: Text(
                "Freshman",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
