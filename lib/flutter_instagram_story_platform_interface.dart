import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_instagram_story_method_channel.dart';

abstract class FlutterInstagramStoryPlatform extends PlatformInterface {
  FlutterInstagramStoryPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterInstagramStoryPlatform _instance = MethodChannelFlutterInstagramStory();

  static FlutterInstagramStoryPlatform get instance => _instance;

  static set instance(FlutterInstagramStoryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> shareWithBackground({
    required String path,
  }) {
    throw UnimplementedError('shareWithBackground() has not been implemented.');
  }

  Future<String?> shareWithBackgroundFromImageBuffer({
    required Uint8List stickerData,
  }) {
    throw UnimplementedError('shareWithBackgroundFromImageBuffer() has not been implemented.');
  }
}
