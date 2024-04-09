import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//font family

String kLatoFontFamily = 'Lato';

///font Weights for demo design

FontWeight lightFont = FontWeight.w300;
FontWeight regularFont = FontWeight.w400;
FontWeight semiBoldFont = FontWeight.w600;
FontWeight boldFont = FontWeight.w700;
FontWeight extraBoldFont = FontWeight.w800;
FontWeight blackBoldFont = FontWeight.w900;

///App Text Size start
final kHeadLineLarge = TextStyle(
  fontSize: 32.sp,
  fontWeight: blackBoldFont,
  height: 1.2,
);
final kHeadLineMedium = TextStyle(
  fontSize: 24.sp,
  fontWeight: blackBoldFont,
  height: 1.2,
);
final kHeadLineSmall = TextStyle(
  fontSize: 16.sp,
  fontWeight: blackBoldFont,
  height: 1.2,
);

final kTitleLarge = TextStyle(
  fontSize: 20.sp,
  fontWeight: extraBoldFont,
  height: 1.2,
);
final kTitleMedium = TextStyle(
  fontSize: 16.sp,
  fontWeight: extraBoldFont,
  height: 1.3,
);
final kTitleSmall = TextStyle(
  fontSize: 14.sp,
  fontWeight: boldFont,
  height: 1.2,
);

final kBodyLarge = TextStyle(
  fontSize: 16.sp,
  fontWeight: regularFont,
  height: 1.4,
);
final kBodyMedium = TextStyle(
  fontSize: 14.sp,
  fontWeight: regularFont,
  height: 1.4,
);
final kBodySmall = TextStyle(
  fontSize: 12.sp,
  fontWeight: regularFont,
  height: 1.3,
);

final kLabelLarge = TextStyle(
  fontSize: 14.sp,
  fontWeight: regularFont,
  height: 1.3,
);
final kLabelMedium = TextStyle(
  fontSize: 12.sp,
  fontWeight: regularFont,
  height: 1.1,
);
final kLabelSmall = TextStyle(
  fontSize: 10.sp,
  fontWeight: regularFont,
  height: 1.1,
);

///App text size end
