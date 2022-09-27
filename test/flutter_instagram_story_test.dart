import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_instagram_story/flutter_instagram_story.dart';
import 'package:flutter_instagram_story/flutter_instagram_story_platform_interface.dart';
import 'package:flutter_instagram_story/flutter_instagram_story_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterInstagramStoryPlatform
    with MockPlatformInterfaceMixin
    implements FlutterInstagramStoryPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> shareWithBackground() {
    // TODO: implement shareWithBackground
    throw UnimplementedError();
  }
}

void main() {
  final FlutterInstagramStoryPlatform initialPlatform = FlutterInstagramStoryPlatform.instance;

  test('$MethodChannelFlutterInstagramStory is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterInstagramStory>());
  });

  test('getPlatformVersion', () async {
    MockFlutterInstagramStoryPlatform fakePlatform = MockFlutterInstagramStoryPlatform();
    FlutterInstagramStoryPlatform.instance = fakePlatform;

    expect(await FlutterInstagramStory.getPlatformVersion(), '42');
  });
}
