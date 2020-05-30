import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size localWidgetSize;
  final Size screenSize;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.localWidgetSize,
      this.screenSize});

  String getText() {
    return 'Orientation: $orientation, Device: $deviceScreenType, Widget Size: $localWidgetSize, Screen: $screenSize';
  }
}
