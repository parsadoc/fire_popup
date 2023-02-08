import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fire_popup/fire_popup_method_channel.dart';

void main() {
  MethodChannelFirePopup platform = MethodChannelFirePopup();
  const MethodChannel channel = MethodChannel('fire_popup');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
