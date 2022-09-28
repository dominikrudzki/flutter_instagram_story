import 'dart:typed_data';

import 'flutter_instagram_story_platform_interface.dart';

class FlutterInstagramStory {
  static final FlutterInstagramStoryPlatform _instance = FlutterInstagramStoryPlatform.instance;

  static Future<String?> shareWithBackground({
    required String path,
  }) {
    return _instance.shareWithBackground(path: path);
  }

  static Future<String?> shareWithBackgroundFromImageBuffer({
    required Uint8List stickerData,
  }) {
    return _instance.shareWithBackgroundFromImageBuffer(stickerData: stickerData);
  }
}
