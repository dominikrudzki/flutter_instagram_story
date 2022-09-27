import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_instagram_story/flutter_instagram_story_method_channel.dart';

void main() {
  MethodChannelFlutterInstagramStory platform = MethodChannelFlutterInstagramStory();
  const MethodChannel channel = MethodChannel('flutter_instagram_story');

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
