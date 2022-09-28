import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_instagram_story_platform_interface.dart';

/// An implementation of [FlutterInstagramStoryPlatform] that uses method channels.
class MethodChannelFlutterInstagramStory extends FlutterInstagramStoryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  static MethodChannel methodChannel = const MethodChannel('flutter_instagram_story');

  @override
  Future<String?> shareWithBackground({
    required String path,
  }) async {
    File file = File(path);
    Uint8List bytes = file.readAsBytesSync();
    Uint8List stickerData = bytes.buffer.asUint8List();

    return shareWithBackgroundFromImageBuffer(stickerData: stickerData);
  }

  @override
  Future<String?> shareWithBackgroundFromImageBuffer({
    required Uint8List stickerData,
  }) async {
    return await methodChannel.invokeMethod<String>(
      'shareWithBackground',
      <String, dynamic>{
        'stickerImage': stickerData,
      },
    );
  }
}
