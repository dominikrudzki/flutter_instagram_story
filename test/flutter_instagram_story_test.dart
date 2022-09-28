import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_instagram_story/flutter_instagram_story_platform_interface.dart';
import 'package:flutter_instagram_story/flutter_instagram_story_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterInstagramStoryPlatform
    with MockPlatformInterfaceMixin
    implements FlutterInstagramStoryPlatform {

  @override
  Future<String?> shareWithBackground({required String path}) {
    // TODO: implement shareWithBackground
    throw UnimplementedError();
  }

  @override
  Future<String?> shareWithBackgroundFromImageBuffer({required Uint8List stickerData}) {
    // TODO: implement shareWithBackgroundFromImageBuffer
    throw UnimplementedError();
  }
}

void main() {
  final FlutterInstagramStoryPlatform initialPlatform = FlutterInstagramStoryPlatform.instance;

  test('$MethodChannelFlutterInstagramStory is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterInstagramStory>());
  });
}
