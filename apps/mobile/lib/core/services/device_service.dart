import 'package:flutter/foundation.dart';

class DeviceService {
  DeviceService._();

  static final DeviceService instance = DeviceService._();

  bool get isWeb => kIsWeb;

  bool get isMobile {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  bool get isDesktop {
    return defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux;
  }
}
