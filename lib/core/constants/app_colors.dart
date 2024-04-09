import 'package:flutter/material.dart';

class AppColors {
  //App PrimaryColors
  static const kPrimaryMeatBrownColor = Color(0xFFE9BE41);
  static const kMeatBrown900 = Color(0xFF403108);
  static const kMeatBrown800 = Color(0xFF6E550D);
  static const kMeatBrown700 = Color(0xFF9C7911);
  static const kMeatBrown600 = Color(0xFFD2A318);
  static const kMeatBrown500 = Color(0xFFE9BE41);
  static const kMeatBrown400 = Color(0xFFEDCE78);
  static const kMeatBrown300 = Color(0xFFF4E1A9);
  static const kMeatBrown200 = Color(0xFFF9EECD);
  static const kMeatBrown100 = Color(0xFFFCF6E4);
  static const kMeatBrown50 = Color(0xFFFEFCF6);

  static const kPrimaryElectricPinkColor = Color(0xFFF32074);
  static const kElectricPink900 = Color(0xFF44041D);
  static const kElectricPink800 = Color(0xFF740632);
  static const kElectricPink700 = Color(0xFFA50947);
  static const kElectricPink600 = Color(0xFFD50B5C);
  static const kElectricPink500 = Color(0xFFF32074);
  static const kElectricPink400 = Color(0xFFF45293);
  static const kElectricPink300 = Color(0xFFF881B1);
  static const kElectricPink200 = Color(0xFFFBB2CF);
  static const kElectricPink100 = Color(0xFFFDE2ED);
  static const kElectricPink50 = Color(0xFFFEF5F9);

  //App Secondary colors
  static const kSecondaryRichBlackColor = Color(0xFF0C0524);
  static const kRichBlack900 = Color(0xFF0C0524);
  static const kRichBlack800 = Color(0xFF240F6C);
  static const kRichBlack700 = Color(0xFF3615A2);
  static const kRichBlack600 = Color(0xFF471CD4);
  static const kRichBlack500 = Color(0xFF6A41E9);
  static const kRichBlack400 = Color(0xFF8C6DEE);
  static const kRichBlack300 = Color(0xFFB09AF3);
  static const kRichBlack200 = Color(0xFFD4C8F9);
  static const kRichBlack100 = Color(0xFFE9E4FC);
  static const kRichBlack50 = Color(0xFFF8F6FE);

  //AppTertiary Colors
  ///TODO: color left here.

  //App Neutral Colors
  static const kGrayColor = Color(0xFF8D8B86);
  static const kGrayColor900 = Color(0xFF252422);
  static const kGrayColor800 = Color(0xFF403E3B);
  static const kGrayColor700 = Color(0xFF5A5853);
  static const kGrayColor600 = Color(0xFF7A7771);
  static const kGrayColor500 = Color(0xFF999791);
  static const kGrayColor400 = Color(0xFFB6B4AF);
  static const kGrayColor300 = Color(0xFFD0CFCD);
  static const kGrayColor200 = Color(0xFFE5E4E1);
  static const kGrayColor100 = Color(0xFFF1F0EF);
  static const kGrayColor50 = Color(0xFFFAFAF9);

  //App Semantic Colors

  static const kErrorColor = Color(0xFFEE4461);
  static const kWarningColor = Color(0xFFF39F20);
  static const kSuccessColor = Color(0xFF36BA1C);
  static const kLinkColor = Color(0xFF208DF3);
  static const kWhiteColor = Colors.white;
  static const kBlackColor = Colors.black;

  static final kOrdinaryShadow = BoxShadow(
    color: kGrayColor.withOpacity(.12),
    spreadRadius: 1,
    blurRadius: 1,
    offset: const Offset(0, 1),
  );

/*  ///old theme color
//App primary color
  static const kPrimaryColor =
      Color.fromRGBO(255, 58, 39, 1); //int color: Color(0xFFFF3A27);
//App secondary color
  static const kSecondaryColor =
      Color.fromRGBO(255, 109, 39, 1); //int color: Color(0xFFFF6D27);
//Light theme app background color
  static const kBgColor = Color(0xFFF3F3F3);
//Dark theme app cardColor
  static const kCardDarkColor = Color(0xFF242527);
//Dark theme app background color
  static const kBgDarkColor = Color(0xFF18191B);
  static const kAppBarColor = kWhiteColor;
  static const kStatusBarColor = kWhiteColor;
  static const kStatusBarIcColor = Colors.black;
  static const kCursorColor = Colors.black;
  static const kDividerColor = Color(0xFFA1A1A1);
  static const kLightBlackColor = Color(0xFF1C1C1C);
  static const kHintColor = Color(0xFFA1A1A1);
  static const kBottomNavigationBgColor = Colors.white;
  static const Color kAccentColor = Color(0xffFCAAAB);

  ///end main them color
//app color

  static const kBlackColor2 = Color(0xFF242527);
  static const kPaymentStatus = Color(0xFFFFB700);
  static const kFbColors = Color(0xFF2B87FF); //2B87FF / 0065FF
  static const kDarkGrayColor = Color(0xFF4E4E4E);
  static const kDarkGrayColor2 = Color(0xFF7A7A7A);
  static const kDarkGrayColor3 = Color(0xFF9B9B9B);
  static const kGrayIconColor = Color(0xFFA3A3A3);
  static const kOrdinaryColor = Color(0xFFA1A1A1);
  static const kOrdinaryColor2 = Color(0xFFE5E5E5); //E5E5E5 EFEFEF
  static const kOrdinaryColor3 = Color(0xFFEFEFEF); //E5E5E5 EFEFEF
  static const kBackGroundColor = Color(0xFF2A2C36);
  static const kStUnderLineColor = Color(0xFF808080);
  static const kStUnderLineColor2 = Color(0xFF707070);
  static const kDarkColor = Color(0xFF1B1B1B);
  static const kLiteDarkColor = Color(0xFF232323);
  static const kSaleColor = Color(0xFFF14705);
  static const kIconColor = Color(0xFFF9784F);
  static const kSubscriptionColor = Color(0xFFF2C822);
  static const kActiveColor = Color(0xFF06B87A);
  static const kInActiveColor = Color(0xFFE05656);
  static const kBreakColor = Color(0xFFFCA345);
  static const kLoginBg = Color(0xFFEEEEEE);
//Order status
  static const completeColor = Color(0xFF49B81F);
  static const inProgressColor = Color(0xff5e6172);
  static const todoColor = Color(0xffd1d2d7);
  static const kPendingColor = Color(0xFF363636);
  static const kDeliveredColor = Color(0xFF49B81F);
//timeLine
  static const kTimelineColor = Color(0xFFFF9E73);

  static final kOrdinaryShadow = BoxShadow(
    color: kOrdinaryColor.withOpacity(.12),
    spreadRadius: 1,
    blurRadius: 1,
    offset: const Offset(0, 1),
  );*/
}
