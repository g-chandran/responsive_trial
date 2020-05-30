import 'package:flutter/material.dart';

import '../enums/device_screen_type.dart';
import 'responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile, tablet, desktop;

  const ScreenTypeLayout({Key key, this.mobile, this.tablet, this.desktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile)
          return mobile;
        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop)
          return desktop;
        return tablet;
      },
    );
  }
}
