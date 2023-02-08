import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fire_popup_method_channel.dart';

abstract class FirePopupPlatform extends PlatformInterface {
  /// Constructs a FirePopupPlatform.
  FirePopupPlatform() : super(token: _token);

  static final Object _token = Object();

  static FirePopupPlatform _instance = MethodChannelFirePopup();

  /// The default instance of [FirePopupPlatform] to use.
  ///
  /// Defaults to [MethodChannelFirePopup].
  static FirePopupPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FirePopupPlatform] when
  /// they register themselves.
  static set instance(FirePopupPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
