import 'package:flutter/material.dart';
import 'package:tuan_s_application2/core/app_export.dart';

class Iphone1314FiveScreen extends StatelessWidget {
  const Iphone1314FiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo5003,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame53,
                height: 204.v,
                width: 238.h,
                alignment: Alignment.centerRight,
              ),
              Spacer(),
              _buildFrameThirtySeven(context),
              SizedBox(height: 65.v),
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 262.v,
                width: 390.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirtySeven(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSkTelecomT1Seeklogo,
            height: 146.v,
            width: 207.h,
            alignment: Alignment.centerLeft,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 34.v),
              child: Text(
                "Noodle",
                style: theme.textTheme.displayLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
