import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fire_popup_platform_interface.dart';

/// An implementation of [FirePopupPlatform] that uses method channels.
class MethodChannelFirePopup extends FirePopupPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fire_popup');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
