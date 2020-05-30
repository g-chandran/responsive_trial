import 'package:flutter/material.dart';

import 'enums/device_screen_type.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = 0;
  deviceWidth = orientation == Orientation.landscape
      ? deviceWidth = mediaQuery.size.height
      : deviceWidth = mediaQuery.size.width;

  if (deviceWidth > 950)
    return DeviceScreenType.Desktop;
  else if (deviceWidth > 600) return DeviceScreenType.Tablet;
  return DeviceScreenType.Mobile;
}
