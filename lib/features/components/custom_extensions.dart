import 'package:flutter/material.dart';

extension SizedBoxExtension on double {
  kWidthSizedBox() {
    return SizedBox(
      width: this,
    );
  }

  kHeightSizedBox() {
    return SizedBox(
      height: this,
    );
  }
}
