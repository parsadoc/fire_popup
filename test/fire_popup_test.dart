import 'package:flutter_test/flutter_test.dart';
import 'package:fire_popup/fire_popup.dart';
import 'package:fire_popup/fire_popup_platform_interface.dart';
import 'package:fire_popup/fire_popup_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirePopupPlatform
    with MockPlatformInterfaceMixin
    implements FirePopupPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FirePopupPlatform initialPlatform = FirePopupPlatform.instance;

  test('$MethodChannelFirePopup is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFirePopup>());
  });

  test('getPlatformVersion', () async {
    FirePopup firePopupPlugin = FirePopup();
    MockFirePopupPlatform fakePlatform = MockFirePopupPlatform();
    FirePopupPlatform.instance = fakePlatform;

    expect(await firePopupPlugin.getPlatformVersion(), '42');
  });
}
