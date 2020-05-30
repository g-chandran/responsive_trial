import 'package:flutter/material.dart';

import '../../../responsive.dart/orientation_layout.dart';
import '../../../responsive.dart/screen_type_layout.dart';
import 'mobile/home_view_mobile_landscape.dart';
import 'mobile/home_view_mobile_portrait.dart';
import 'tablet/home_view_tablet_landscape.dart';
import 'tablet/home_view_tablet_portrait.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: HomeViewMobilePortrait(),
          landscape: HomeViewMobileLandscape(),
        ),
        tablet: OrientationLayout(
          portrait: HomeViewTabletPortrait(),
          landscape: HomeViewTabletLandscape(),
        ),
      ),
    );
  }
}
