import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testApp/core/constants/app_size.dart';

import '../../core/constants/app_colors.dart';
import 'default_btn.dart';

showCustomDialog({
  required BuildContext context,
  required Function() onYes,
  String? title,
  String? details,
  String? confirmText,
  String? cancelText,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        //this right here
        child: IntrinsicHeight(
          child: RPadding(
            padding: REdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: kTitleLarge.copyWith(
                    color: AppColors.kBlackColor,
                  ),
                ),
                8.verticalSpace,
                Text(
                  details ?? '',
                  style: kTitleLarge.copyWith(
                    color: AppColors.kBlackColor,
                  ),
                ),
                25.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: DefaultBtn(
                        onPress: () {
                          Navigator.of(context).pop();
                          onYes();
                        },
                        title: confirmText ?? 'Yes',
                      ),
                    ),
                    12.verticalSpace,
                    Expanded(
                      child: DefaultBtn(
                        onPress: () => Navigator.of(context).pop(),
                        title: cancelText ?? 'No',
                        outlineButton: true,
                        textColor: AppColors.kBlackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
