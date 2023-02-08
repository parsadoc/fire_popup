
import 'fire_popup_platform_interface.dart';

class FirePopup {
  Future<String?> getPlatformVersion() {
    return FirePopupPlatform.instance.getPlatformVersion();
  }
}
